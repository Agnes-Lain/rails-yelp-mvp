class FixPhoneNumberToRestaurants < ActiveRecord::Migration[6.0]
  def change
    rename_column :restaurants, :phone, :phone_number
    rename_column :restaurants, :catagory, :category
  end
end
