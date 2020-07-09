class Doctor < ApplicationRecord
  has_many :practices, class_name: 'DoctorPractice', foreign_key: 'doctor_id'
  has_many :hospitals, through: :practices

  validates_presence_of :name

  def hospital_names
    hospitals.map(&:name).join(', ')
  end
end
