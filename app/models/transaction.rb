class Transaction < ApplicationRecord
    def execute_transaction
        from_account = BankAccount.find_by(id: self.from_account_id)
        to_account = BankAccount.find_by(id: self.to_account_id)

        if self.amount <= from_account.amount && to_account.enabled
            self.save
            from_account.amount -= self.amount
            from_account.save

            to_account.amount += self.amount
            to_account.save

            raise ActiveRecord::Rollback, "Error"
        else
            return {error: "Transaction amount is greater than withdrawal account balance or account is disabled."}
        end
    end
end
