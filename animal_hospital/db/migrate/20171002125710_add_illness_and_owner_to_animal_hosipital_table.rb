class AddIllnessAndOwnerToAnimalHosipitalTable < ActiveRecord::Migration
  def change
    add_column :animal_hospital_tables, :illness, :string
    add_column :animal_hospital_tables, :owner, :string
  end
end
