class AddCompanyToConsultations < ActiveRecord::Migration[6.1]
  def change
    add_column :consultations, :company, :string
    add_column :consultations, :mobile_no, :string
    add_column :consultations, :location, :string
  end
end
