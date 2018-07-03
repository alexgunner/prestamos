class LoanSerializer < ActiveModel::Serializer
  attributes :id, :amount, :valid_until, :additional_details
end
