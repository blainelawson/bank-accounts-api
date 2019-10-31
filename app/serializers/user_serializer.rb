class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name

  has_many :bank_accounts
end
