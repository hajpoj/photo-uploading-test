class User < ActiveRecord::Base
  has_attached_file :photo,
    styles: {thumb: ["100x100#", :jpg],
              medium: ["400x400", :jpg]},
    storage: :s3,
    s3_credentials: {
      bucket: ENV['BUCKET'],
      access_key_id: ENV['ACCESS_KEY_ID'],
      secret_access_key: ENV['SECRET_ACCESS_KEY']
    },
    :path => "User/:style/:id/:filename"
end
