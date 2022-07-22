class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum :usertype, { Recruiter: 0, Candidate: 1 }   
  has_many :jobs , dependent: :destroy 
end
