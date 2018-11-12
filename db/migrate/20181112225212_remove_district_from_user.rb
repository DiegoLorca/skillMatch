class RemoveDistrictFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :district, :string
  end
end
