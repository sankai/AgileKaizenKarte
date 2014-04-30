class AddContentsToSessionlog < ActiveRecord::Migration
  def change
    add_column :sessionlogs, :contents, :text
  end
end
