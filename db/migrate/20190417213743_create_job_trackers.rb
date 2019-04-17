class CreateJobTrackers < ActiveRecord::Migration[5.2]
  def change
    create_table :job_trackers do |t|
      t.references :user, foreign_key: true
      t.references :sent_app, foreign_key: true

      t.timestamps
    end
  end
end
