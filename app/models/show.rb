require 'pry'
class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum('rating')
  end

  def self.most_popular_show
    self.maximum('id')
    # binding.pry
  end
end
