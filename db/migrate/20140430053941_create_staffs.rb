class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
