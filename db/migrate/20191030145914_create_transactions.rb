class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :from_account_id
      t.integer :to_account_id
      t.integer :amount

      t.timestamps
    end
  end
end
