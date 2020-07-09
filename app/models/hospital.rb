class Hospital < ApplicationRecord
  has_many :practices, class_name: 'DoctorPractice', foreign_key: 'hospital_id'
  has_many :doctors, through: :practices

  validates_presence_of :name

  def doctor_names
    doctors.map(&:name).join(', ')
  end
end
