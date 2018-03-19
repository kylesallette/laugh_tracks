class Comedian < ActiveRecord::Base

  has_many :specials


  def self.average_age
    average(:age)
  end

  def specials_count
   self.specials.count
  end

end
