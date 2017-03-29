class Post < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
					length: {minimum: 5,}

	has_attached_file :photo, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

  	validates :photo, presence: true
end
