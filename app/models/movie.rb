class Movie < ActiveRecord::Base
  def self.all_ratings
    pluck(:rating).uniq
  end

  def self.with_ratings(ratings_list)
    return all if ratings_list.blank?
    where('LOWER(rating) IN (?)', Array(ratings_list).map(&:downcase))
  #used gpt5 for syntax help and debugging
  end
end
