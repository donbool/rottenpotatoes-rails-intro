class Movie < ActiveRecord::Base
  def self.all_ratings
    pluck(:rating).uniq
  end

  def self.with_ratings(ratings_list)
    ratings_list.present? ? where(rating: ratings_list) : all
  end
  #used gpt5 for syntax help
end
