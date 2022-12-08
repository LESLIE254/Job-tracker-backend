class JobSerializer < ActiveModel::Serializer
  attributes :id, :job_title, :description, :qualifications, :deadline, :company_name, :apply 
end
