# reuqire 'carrierwave/orm/activerecord'
class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  def image_path_or_iamge
    image_path.presence || image 
  end 
end
