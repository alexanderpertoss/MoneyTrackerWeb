class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :account_number
      t.string :bank_name
      t.string :currency
      t.float :balance

      t.timestamps
    end
  end
end
