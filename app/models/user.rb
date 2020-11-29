class User < ApplicationRecord
  enum role: { general: 1, admin: 2 }
  generate_public_uid
  has_one :credit_card, dependent: :destroy
  has_many :comment, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def to_param
    public_uid
  end
end
