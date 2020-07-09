class Admin::DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]

  # GET /admin/doctors
  # GET /admin/doctors.json
  def index
    @doctors = Doctor.includes(:hospitals).all
  end

  # GET /admin/doctors/1
  # GET /admin/doctors/1.json
  def show
  end

  # GET /admin/doctors/new
  def new
    @doctor = Doctor.new
  end

  # GET /admin/doctors/1/edit
  def edit
  end

  # POST /admin/doctors
  # POST /admin/doctors.json
  def create
    @doctor = Doctor.new(doctor_params)

    respond_to do |format|
      if @doctor.save
        format.html { redirect_to admin_doctor_url(@doctor), notice: 'Doctor was successfully created.' }
        format.json { render :show, status: :created, location: @doctor }
      else
        format.html { render :new }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/doctors/1
  # PATCH/PUT /admin/doctors/1.json
  def update
    respond_to do |format|
      if @doctor.update(doctor_params)
        format.html { redirect_to admin_doctor_url(@doctor), notice: 'Doctor was successfully updated.' }
        format.json { render :show, status: :ok, location: @doctor }
      else
        format.html { render :edit }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/doctors/1
  # DELETE /admin/doctors/1.json
  def destroy
    @doctor.destroy
    respond_to do |format|
      format.html { redirect_to admin_doctors_url, notice: 'Doctor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doctor_params
      params.require(:doctor).permit(:name, hospital_ids: [])
    end
end
