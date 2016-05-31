class Movie < ActiveRecord::Base
	belongs_to :user
	has_many :reviews

	has_attached_file :image, styles: { medium: "400x600#"}
  	
  	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/mp4", "image/gif"]
	
	
	has_attached_file :video, styles: { medium: "600x300#"}
  	
  	validates_attachment_content_type :video, :content_type => ["video/mp4"]
	
end
