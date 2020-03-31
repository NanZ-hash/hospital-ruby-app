class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :zip_cod
      t.string :specialty
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
