class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.references :consultation, null: false, foreign_key: true
      t.string :name
      t.string :contact
      t.string :email
      t.string :location
      t.string :request_by
      t.decimal :hourly_rate
      t.text :note

      t.timestamps
    end
  end
end
