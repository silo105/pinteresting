class Pin < ActiveRecord::Base
	belongs_to :user

  	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  	#validates_attachment_content_type :data, :content_type => /\Aimage/
  	#validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
  	#validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  	#Paperclip.options[:content_type_mappings] = { jpeg: 'image/jpeg', jpg: 'image/jpeg' }
	  #validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/png)
	  #validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end