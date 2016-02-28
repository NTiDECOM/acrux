class AddModalityToArtist < ActiveRecord::Migration
  def change
    add_reference :artists, :modality, index: true, foreign_key: true
  end
end
