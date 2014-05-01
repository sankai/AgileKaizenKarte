class CreateClassworks < ActiveRecord::Migration
  def change
    create_table :classworks do |t|
      t.date :sessiondate
      t.integer :term_id
      
      t.timestamps
    end
  end
end
