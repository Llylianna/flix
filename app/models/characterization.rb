class Characterization < ApplicationRecord
  belongs_to :movie
  belongs_to :genre
  has_many :characterizations, dependent: :destroy
  has_many :movies, through: :characterizations
end
