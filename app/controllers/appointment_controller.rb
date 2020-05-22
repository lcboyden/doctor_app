class AppointmentsController < ApplicationController
 before_action before_action :set_user, only: [:show, :destroy]
  
 
  def index
    @doctor = @user.appointments 
  end

def new 
  @doctor = @doctor.appointments.new
end 

def create 
  @doctor = @doctor.appointments.new(appointment_params)
  if @appointment.save
    redirect_to doctor_appointments_path(@doctor)
  else 
    render :new 
  end
end

def destroy
  @appointment = @doctor.appointments.find(params[:id])
  @appointment.destroy
  redirect_to doctor_appointments_path(@doctor)
end

private
  def set_user
    @user = User.find(params[:id])
  end
  
  def appointment_params
    params.require(:enrollment).permit(:role, :user_id)
  end
end
