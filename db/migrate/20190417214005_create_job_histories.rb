class CreateJobHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :job_histories do |t|
      t.string :company
      t.string :position
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
