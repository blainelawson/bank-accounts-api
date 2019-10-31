class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :from_account_id, :to_account_id, :amount
end
