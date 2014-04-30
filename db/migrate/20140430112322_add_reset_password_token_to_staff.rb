class AddResetPasswordTokenToStaff < ActiveRecord::Migration
  def change
    add_column :staffs, :reset_password_token, :string
  end
end
