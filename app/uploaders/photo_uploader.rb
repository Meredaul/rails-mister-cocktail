class PhotoUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  process eager: true

  process convert: 'jpg'

  version :card do
    resize_to_fit 650, 400
  end

  version :cocktail_display do
    cloudinary_transformation width: 20, height: 35, crop: :fit
  end
end
