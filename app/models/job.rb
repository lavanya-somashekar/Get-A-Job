class Job < ApplicationRecord
    enum :job_type, { FullTime: 0, Internship: 1 } 
    belongs_to :user
    has_many :appliedjobs
    has_many :users, through: :appliedjobs , dependent: :destroy
end
