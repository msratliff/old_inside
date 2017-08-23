class ChangeAddressToStreetInVenue < ActiveRecord::Migration[5.1]
  def change
  	rename_column :venues, :address, :street
  end
end
