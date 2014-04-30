class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.text :desc
      t.integer :term_id

      t.timestamps
    end
  end
end
