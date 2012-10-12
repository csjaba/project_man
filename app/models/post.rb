class Post < ActiveRecord::Base
  attr_accessible :description, :title
   validates :title, :presence => true,
                    :length => { :minimum => 5 }
    has_many :tesks
end
