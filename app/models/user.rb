class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # attr_accessor :login
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :messages, dependent: :destroy
   has_many :chatrooms, through: :messages, dependent: :destroy
   validates :email, uniqueness: true, presence: true

   # def username
   # 	email.split('@')[0]
   # end
   def timestamp
   	created_at.strftime('%H:%M:%S %d %B %Y')
   end
end
