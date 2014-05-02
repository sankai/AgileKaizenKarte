class AddSfaffIdToStudentlog < ActiveRecord::Migration
  def change
    add_column :studentlogs, :staff_id, :integer
  end
end
