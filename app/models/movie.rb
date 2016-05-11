class Movie < ActiveRecord::Base
	belongs_to :user
	has_many :reviews

	has_attached_file :image, styles: { medium: "400x600#"}
  	
  	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	
end
