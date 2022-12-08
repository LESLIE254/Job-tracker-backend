class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|
      t.integer :user_id
      t.integer :job_id
      t.string :application_stage

      t.timestamps
    end
  end
end
