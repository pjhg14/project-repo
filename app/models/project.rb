class Project < ApplicationRecord
  include Rails.application.routes.url_helpers

  has_one_attached :image

  validates :title, presence :true, uniqueness: true

  def image_url
    url_for(self.image)
  end
  

end
