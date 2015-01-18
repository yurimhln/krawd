class Post < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :default_url => "/images/missing.png"
	 validates_attachment_presence :image
validates_attachment_size :image, :less_than => 3.megabytes
validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png', 'image/gif']
end