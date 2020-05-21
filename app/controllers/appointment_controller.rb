class AppointmentsController < ApplicationController
 
 
  def index
    @doctor = @user.appointments 
  end

end
