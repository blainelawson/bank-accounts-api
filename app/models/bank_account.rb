class BankAccount < ApplicationRecord
    belongs_to :user

    validates_inclusion_of :account_type, :in => ["checking", "savings"]
    validates_presence_of :amount
end
