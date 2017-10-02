class AnimalsHospitalController < ApplicationController

  def animal_params
    params.require(:animal_hospital_tables).permit([:name, :species, :illness, :owner])
  end 

  def index
  animals = AnimalHospitalTable.all
  render :json => animals
  end 

  def show
    animal = AnimalHospitalTable.find(params[:id])
    render :json => animal
  end 

  def create 
    animal = AnimalHospitalTable.create(animal_params)
    render :json => animal
  end 

  def update
    animal = AnimalHospitalTable.find(params[:id])
    if animal.update_attributes(animal_params)
      render :json => animal
    else render :json => {status: :update_failed}
    end 
  end 

  def destroy 
    animal = AnimalHospitalTable.find(params[:id])
    if animal.destroy!
      render :json => {status: :success}
    else 
      render :json => {status: :delete_failed}
    end 
  end 




end 