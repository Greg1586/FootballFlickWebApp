class Payment < ActiveRecord::Base
  attr_accessor :status, :transaction_id, :first_name, :last_name,
                :address_street, :quantity, :address_zip, :address_state,
                :address_country, :address_city

  def completed?
    status == 'Completed'
  end

  def verified?

  end

end
