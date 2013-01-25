class AddDetailsToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :first_name, :string
    add_column :payments, :last_name, :string
    add_column :payments, :address_street, :string
    add_column :payments, :address_city, :string
    add_column :payments, :address_country, :string
    add_column :payments, :address_state , :string
    add_column :payments, :address_zip, :string
    add_column :payments, :quantity, :string
  end
end