class Ingratitude < ApplicationRecord
    belongs_to :parent
    belongs_to :post
    has_many :children

    accepts_nested_attributes_for :children
end
