class AddInstitutionToArtist < ActiveRecord::Migration
  def change
    add_reference :artists, :institution, index: true, foreign_key: true
  end
end
