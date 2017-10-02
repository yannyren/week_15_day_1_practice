class CreateAnimalHospitalTables < ActiveRecord::Migration
  def change
    create_table :animal_hospital_tables do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
