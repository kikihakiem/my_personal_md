module HospitalHelper
  def hospital_form_url(hospital)
    hospital.persisted? ? admin_hospital_path(hospital) : admin_hospitals_path
  end
end