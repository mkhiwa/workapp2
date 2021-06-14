class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.references :consultation, null: false, foreign_key: true
      t.string :full_name
      t.string :nid
      t.string :contact
      t.string :email
      t.string :location
      t.decimal :hourly_rate
      t.text :note

      t.timestamps
    end
  end
end
