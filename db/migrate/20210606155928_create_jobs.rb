class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.references :consultation, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.references :employee, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.string :work_hours
      t.decimal :total
      t.text :notes

      t.timestamps
    end
  end
end
