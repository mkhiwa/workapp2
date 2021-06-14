class AddFullNameToConsultations < ActiveRecord::Migration[6.1]
  def change
    add_column :consultations, :full_name, :string
  end
end
