class ApplicationSerializer < ActiveModel::Serializer
  belongs_to :job
  belongs_to :user
  attributes :id, :user_id, :job_id, :application_stage
end
