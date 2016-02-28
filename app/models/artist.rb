class Artist < ActiveRecord::Base
  has_one :institution
  has_one :modality
end
