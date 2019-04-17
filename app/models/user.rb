class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :job_tracker
  has_many :sent_apps, through: :job_tracker

  has_one :resume 

  has_many :skills, through: :resume
  has_one :bio, through: :resume
  has_many :educations, through: :resume
  has_many :job_histories, through: :resume

end
