class PatientsController < ApplicationController
  before_action :set_pacient, only: %i(show destroy)

  def index
    @patients = current_user.patients.all
  end

  def new
  end

  def create

  end

  def show

  end

  def destroy

  end

  private

  def set_pacient
    @patient = Patients.find(params[:id])
  end
end