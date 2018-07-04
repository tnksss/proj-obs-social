class ProjectKind < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
