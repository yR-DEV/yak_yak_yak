class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :title
      t.string :status
      t.datetime :last_contact
      t.string :website

      t.timestamps
    end
  end
end
