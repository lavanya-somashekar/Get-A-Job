class Appliedjob < ApplicationRecord
  belongs_to :job
  belongs_to :user
  has_one_attached :resume, dependent: :destroy
  validates_uniqueness_of :job_id , scope: :user_id
  enum :status, { Accept: 0, Reject: 1 } 
end
