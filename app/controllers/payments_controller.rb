class PaymentsController < ApplicationController

  def create
    # params -> form params or quesry params
    # read the request body
    payment_status = params[:payment_status]
    txn_id = params[:txn_id]
    payments = Payment.where("txn_id = ?", txn_id)
    if payments.blank?
      payment = Payment.new(params.merge(:status => payment_status, :transaction_id => txn_id))
      if payment.completed? && verify_payment?(request.raw_post)
        #deliver goods
        unless payment.save
          #todo think about this error handling... email gareth@ff.com with payment
        end
      end
    end
  end

  def verify_payment?(raw)
    uri = URI.parse('https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_notify-validate')

    http = Net::HTTP.new(uri.host, uri.port)
    http.open_timeout = 60
    http.read_timeout = 60
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    http.use_ssl = true
    response = http.post(uri.request_uri, raw,
                         'Content-Length' => "#{raw.size}",
                         'User-Agent' => "My custom user agent"
    ).body

    response == "VERIFIED"
  end

end
