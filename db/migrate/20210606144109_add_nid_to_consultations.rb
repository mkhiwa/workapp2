class AddNidToConsultations < ActiveRecord::Migration[6.1]
  def change
    add_column :consultations, :nid, :string
    add_column :consultations, :profession, :string
  end
end
