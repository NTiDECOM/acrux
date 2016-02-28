class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :group
      t.boolean :has_production
      t.string :production_description
      t.string :other_information
      t.string :note

      t.timestamps null: false
    end
  end
end
