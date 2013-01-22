class PaymentsController < ApplicationController

  def create
    print "coming into create"
    Payment.create!(:status => params[:payment_status], :transaction_id => params[:txn_id])
    render :nothing => true
  end

end
