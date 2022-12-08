class Application < ApplicationRecord
    belongs_to :user 
    belongs_to :job

    validates :application_stage, inclusion: {in: ["submitted", "phone_screen", "interview", "accepted"]}
end
