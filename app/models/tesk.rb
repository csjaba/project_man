class Tesk < ActiveRecord::Base
  belongs_to :post
  attr_accessible :completion_date, :description, :title
end
