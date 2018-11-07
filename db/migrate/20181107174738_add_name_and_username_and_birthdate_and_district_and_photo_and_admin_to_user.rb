class AddNameAndUsernameAndBirthdateAndDistrictAndPhotoAndAdminToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :birthdate, :date
    add_column :users, :district, :string
    add_column :users, :photo, :string
    add_column :users, :admin, :boolean
  end
end
