class User < ApplicationRecord
  generate_public_uid
  has_one :credit_card, dependent: :destroy
  has_many :comment, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
