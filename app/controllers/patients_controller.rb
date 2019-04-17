class PatientsController < ApplicationController
  def index
    @patients = Patient.all.includes(:appointments)
  end

  def show
    @patient = Patient.find(params[:id])
  end


end
