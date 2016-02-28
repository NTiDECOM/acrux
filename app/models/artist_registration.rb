class ArtistRegistration
  include ActiveModel::Model

  attr_accessor :name,
  :address,
  :phone,
  :email,
  :group,
  :has_production,
  :production_description,
  :other_information,
  :note,
  :modality_name,
  :institution_name,
  :institution_address
end
