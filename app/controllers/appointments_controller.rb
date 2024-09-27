class AppointmentsController < ApplicationController 
  before_action :set_appointment, only: [:edit, :update, :destroy]
  def index
    @appointments = Appointment.all
  end
  def show 
    @appointment = Appointment.find(params[:id])
  end
  def new 
    @appointment = Appointment.new
  end
  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save 
      redirect_to @appointment
    else 
      render :new ,status: :unprocessable_entity
    end
  end 
  def edit 
    
  end 
  def update
    if @appointment.update(appointment_params)
      redirect_to @appointment, notice: 'Appointment was successfully updated.'
    else
      render :edit
    end
  end 
  def destroy
    @appointment.destroy
    redirect_to appointments_path, notice: 'Appointment was successfully destroyed.'
  end 

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end


  def appointment_params
    params.require(:appointment).permit(:name, :phone_number,:time, :doctor_id, :patient_id)
  end
end
