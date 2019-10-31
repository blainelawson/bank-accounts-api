class Api::V1::TransactionsController < ApplicationController
    def create
        @transaction = Transaction.new(transaction_params)

        # if transaction is able to be initiated using transaction params
        if @transaction 
            @transaction.execute_transaction
        else
            return {error: "Transaction error"}
        end

        render json: User.find_by(id: from_account.user_id)
    end

    private

    def transaction_params(transaction)
        params.require(transaction).permit(:from_account_id, :to_account_id, :amount)
    end
end
