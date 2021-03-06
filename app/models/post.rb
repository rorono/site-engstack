class Post < ApplicationRecord
    belongs_to :user
    has_many :tasks, dependent: :destroy
    has_many :categories, through: :tasks
    accepts_nested_attributes_for :tasks, allow_destroy: true
end
