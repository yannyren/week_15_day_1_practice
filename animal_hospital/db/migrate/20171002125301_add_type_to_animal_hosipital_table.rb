class AddTypeToAnimalHosipitalTable < ActiveRecord::Migration
  def change
    add_column :animal_hospital_tables, :type, :string
  end
end
