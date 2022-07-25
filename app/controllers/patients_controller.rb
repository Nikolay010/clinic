class PatientsController < ApplicationController
  before_action :set_pacient, only: %i[show destroy]

  def index
    @patients = Patient.all
  end

  def show
    @patient.phone
  end

  private

  def set_pacient
    @patient = Patients.find(params[:id])
  end
end