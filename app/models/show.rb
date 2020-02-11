require 'pry'
class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum('rating')
  end

  def self.most_popular_show
    self.where("rating = ?", self.highest_rating).flatten
    # binding.pry
  end


end
