class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :worked
      t.integer :absence_type
      t.date :date

      t.timestamps
    end
  end
end