class Movie < ActiveRecord::Base
  def self.all_ratings
    %w[G PG PG-13 R]
  end

  def self.with_ratings(ratings_list)
    return all if ratings_list.blank?
    where(rating: Array(ratings_list))
    #used gpt5 for syntax
  end
end
