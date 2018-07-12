class ProjectKind < ApplicationRecord
    validates :kind, presence: true, uniqueness: true
end
