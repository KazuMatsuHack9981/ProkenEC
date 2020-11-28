class CreditCard < ApplicationRecord
  generate_public_uid
  belongs_to :user

  def to_param
    public_uid
  end
end
