class Payment < ActiveRecord::Base
  after_create:verify_payment
  serialize :params
  attr_accessible :status, :transaction_id

  private

  def verify_payment
    if(status=='Completed')
      print ">>>>>>>>>>>>>>>>>>>>>>>>>>>completed<<<<<<<<<<<<<<<<<<<<<<<"
    else
      print "incomplete"
    end
  end
end
