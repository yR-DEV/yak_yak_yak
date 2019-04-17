class CreateEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.string :school
      t.string :degree
      t.integer :grad_year

      t.timestamps
    end
  end
end
