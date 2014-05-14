class AddClassworkIdToStudentlog < ActiveRecord::Migration
  def change
    add_column :studentlogs, :classwork_id, :integer
  end
end
