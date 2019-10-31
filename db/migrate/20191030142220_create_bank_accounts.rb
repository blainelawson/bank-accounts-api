class CreateBankAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_accounts do |t|
      t.integer :user_id
      t.string :account_type
      t.integer :amount
      t.boolean :enabled

      t.datetime :created_at 
      t.timestamps
    end
  end
end
