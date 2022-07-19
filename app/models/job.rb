class Job < ApplicationRecord
    enum :job_type, { FullTime: 0, Internship: 1 } 
    belongs_to :user
end
