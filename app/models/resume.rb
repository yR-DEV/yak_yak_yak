class Resume < ApplicationRecord
  belongs_to :skill
  belongs_to :user
  belongs_to :bio
  belongs_to :education
  belongs_to :job_history
end
