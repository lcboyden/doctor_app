<<<<<<< HEAD




=======
>>>>>>> 5fb607fa250bf92b73a6b630caffe20261cadb5f
class DoctorsController < ApplicationController 
  before_action :set_doctor, only: [:show, :destroy]

  def index
    @doctors = Doctor.all
  end

  def show
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      redirect_to @doctor
    else
      render :new
    end
  end

  def destroy
    @doctor.destroy
    redirect_to doctors_path
  end

  private 
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    def doctor_params
      params.require(:doctor).permit(:name)
    end
<<<<<<< HEAD

end



=======

end
>>>>>>> 5fb607fa250bf92b73a6b630caffe20261cadb5f
