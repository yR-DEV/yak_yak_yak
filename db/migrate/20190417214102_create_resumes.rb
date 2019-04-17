class CreateResumes < ActiveRecord::Migration[5.2]
  def change
    create_table :resumes do |t|
      t.references :skill, foreign_key: true
      t.references :user, foreign_key: true
      t.references :bio, foreign_key: true
      t.references :education, foreign_key: true
      t.references :job_history, foreign_key: true

      t.timestamps
    end
  end
end
