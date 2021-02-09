class Blogger < ApplicationRecord
    has_many :posts 
    has_many :destionations, through: :posts 
    validates :name, uniqueness: true
    validates :age, numericality: {greater_than: 0}
    validates :bio, length: {minium: 30}
    #validates :bio, :presence => true, length: {minimum: 30}
end
