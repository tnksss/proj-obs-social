class Councilman < ApplicationRecord
  enum political_position: [:opposition, :situation]
end
