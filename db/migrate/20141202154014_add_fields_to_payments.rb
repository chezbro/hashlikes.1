class AddFieldsToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :name, :string
    add_column :payments, :description, :text
    add_column :payments, :expiration_date, :date
    add_column :payments, :email, :string
    add_column :payments, :amount, :integer
  end
end
