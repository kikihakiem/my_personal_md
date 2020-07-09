class CreateDoctorPractices < ActiveRecord::Migration[6.0]
  def change
    create_table :doctor_practices do |t|
      t.integer :doctor_id
      t.integer :hospital_id

      t.timestamps
    end
  end
end
