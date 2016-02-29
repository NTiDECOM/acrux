class Artist < ActiveRecord::Base
  belongs_to :institution
  belongs_to :modality
end
