class Movie < ActiveRecord::Base
  def self.all_ratings
    %w[G PG PG-13 R]
  end

  def self.with_ratings(ratings_list)
    return all if ratings_list.nil? || ratings_list.empty?
    
    ratings_array = Array(ratings_list).compact.reject(&:blank?)
    return all if ratings_array.empty?
    
    where(rating: ratings_array)
    #used gpt5 for syntax
  end
end
