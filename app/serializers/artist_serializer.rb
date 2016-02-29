class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :phone, :email, :group, :has_production,
  :production_description, :other_information, :note, :institution_id, :modality_id
end
