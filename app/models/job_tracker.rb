class JobTracker < ApplicationRecord
  belongs_to :user
  belongs_to :sent_app
end
