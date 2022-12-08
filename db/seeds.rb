# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "seeding"
10.times do
    User.create(username:Faker::Name.name, email: Faker::Internet.free_email, password: "12345")
end
# Job.create(job_title: Faker::Job.title,company_name: Faker::Company.name, description:Faker::Job.field, qualifications:Faker::Job.key_skill, deadline: Faker::Date.in_date_period(month: 12) , apply: true  )
# Job.create(job_title: Faker::Job.title,company_name: Faker::Company.name, description:Faker::Job.field, qualifications:Faker::Job.key_skill, deadline: Faker::Date.in_date_period(month: 12) , apply: false )
# Job.create(job_title: Faker::Job.title,company_name: Faker::Company.name, description:Faker::Job.field, qualifications:Faker::Job.key_skill, deadline: Faker::Date.in_date_period(month: 12) , apply: true )
10.times do 
Job.create(job_title: Faker::Job.title,company_name: Faker::Company.name, description:Faker::Job.field, qualifications:Faker::Job.key_skill, deadline: Faker::Date.in_date_period(month: 12) , apply: true  )
end
puts "Done seeding"
#Application.create(user_id:1, job_id: 2,)
User.all.each do |user|
    rand(1..3).times do
      # get a random job
      job = Job.find(Job.pluck(:id).sample)
      Application.create!(user_id: user.id, job_id: job.id, application_stage: [:submitted, :phone_screen, :interview, :accepted].sample)
    end
  end