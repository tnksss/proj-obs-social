class Project < ApplicationRecord
  belongs_to :session
  belongs_to :project_kind
end
