class User < ApplicationRecord
    has_many :bank_accounts

    validates_presence_of :first_name
    validates_presence_of :last_name
end

