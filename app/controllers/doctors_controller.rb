class DoctorsController < ApplicationController
  load_and_authorize_resource
  before_action :set_doctor, only: [:show, :destroy]

  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      redirect_to doctors_path, notice: 'Doctor was successfully created'
    else
      render :new
    end
  end

  def show
    @doctor.email && @doctor.category
  end

  def destroy
    @doctor.destroy
    redirect_to doctors_path, notice: 'Doctor was successfully deleted'
  end

  private

  def doctor_params
    params.require(:doctor).permit(:email, :phone, :encrypted_password, :category_id, :first_name, :last_name)
  end

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
end
