class CreateStudentlogs < ActiveRecord::Migration
  def change
    create_table :studentlogs do |t|
      t.integer :student_id

      t.timestamps
    end
  end
end
