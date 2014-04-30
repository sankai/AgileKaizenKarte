class AddContentsToStudentlog < ActiveRecord::Migration
  def change
    add_column :studentlogs, :contents, :text
  end
end
