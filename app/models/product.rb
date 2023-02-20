class Product < ApplicationRecord
  before_save :capitalize
  belongs_to :shop


  def capitalize
    self.name = name.capitalize
  end
end
