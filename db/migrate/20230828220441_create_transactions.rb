class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.float :amount
      t.integer :transaction_type
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
