class PhotoUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  process eager: true

  process convert: 'jpg'

  version :card do
    resize_to_fit 650, 400
  end

  version :cocktail_display do
    cloudinary_transformation width: 350, height: 180, crop: :lfill, gravity: :center #, effect: :improve
  end
end
