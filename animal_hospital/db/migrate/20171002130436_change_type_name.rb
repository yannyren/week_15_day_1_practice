class ChangeTypeName < ActiveRecord::Migration
  def change
    rename_column :animal_hospital_tables, :type, :species 
  end
end
