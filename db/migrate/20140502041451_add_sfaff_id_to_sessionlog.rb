class AddSfaffIdToSessionlog < ActiveRecord::Migration
  def change
    add_column :sessionlogs, :staff_id, :integer
  end
end
