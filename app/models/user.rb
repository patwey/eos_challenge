class User < ActiveRecord::Base
  def self.unique_lengths_of_names_including_str(str)
    where("name LIKE ?", "%#{str}%").pluck("length(name)").uniq
  end
end
