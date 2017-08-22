class AddPromotionsToVenue < ActiveRecord::Migration[5.1]
  def change
    add_reference :promotions, :venue, foreign_key: true
  end
end
