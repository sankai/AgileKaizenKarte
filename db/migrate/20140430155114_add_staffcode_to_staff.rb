class AddStaffcodeToStaff < ActiveRecord::Migration
  def change
    add_column :staffs, :staffcode, :string
  end
end
