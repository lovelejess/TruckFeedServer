class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :name
      t.string :description_type
      t.string :image_url
      t.timestamp
    end
  end
end
