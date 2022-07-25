class AppointmentsController < ApplicationController
  load_and_authorize_resource
  before_action :set_appointment, only: [:show, :destroy]

  def index
    @appointments = Appointment.accessible_by(current_ability, :read)
  end

  def new
    @appointment = Appointment.new
    authorize! :read, @appointments
  end

  def create
    @appointment = Appointment.new(appointment_params)

    if @appointment.save
      redirect_to appointments_path, notice: 'Appointment was successfully created'
    else
      render :new
    end
  end

  def show
    authorize! :read, @appointments
  end

  def destroy
    @appointment.destroy
    redirect_to appointments_path, notice: 'Appointment was successfully deleted'
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:doctor, :patient, :title, :description)
  end
end
