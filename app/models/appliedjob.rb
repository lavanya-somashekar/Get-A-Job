class Appliedjob < ApplicationRecord
  belongs_to :job
  belongs_to :user
  has_one_attached :resume
  enum :status, { Accept: 0, Reject: 1 } 
end
