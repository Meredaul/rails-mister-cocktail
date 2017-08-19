class PhotoUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  process eager: true

  process convert: 'jpg'

  version :card do
    resize_to_fit 650, 400
  end

  version :cocktail_display do
    cloudinary_transformation width: 768, height: 350, crop: :fill, gravity: :center #, effect: :improve
  end

  version :cocktail_side_display do |variable|
    cloudinary_transformation width: 384, height: 350, crop: :fill, gravity: :center #, effect: :improve
  end
end
