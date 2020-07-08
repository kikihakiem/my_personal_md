module DoctorHelper
  def doctor_form_url(doctor)
    doctor.persisted? ? admin_doctor_path(doctor) : admin_doctors_path
  end
end