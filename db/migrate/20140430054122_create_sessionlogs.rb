class CreateSessionlogs < ActiveRecord::Migration
  def change
    create_table :sessionlogs do |t|
      t.integer :classwork_id

      t.timestamps
    end
  end
end
