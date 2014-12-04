class Cat < ActiveRecord::Base
    belongs_to :user
    has_many :comments
	has_attached_file :image, :attachment_presence => true
	validates_attachment_content_type :image, :content_type => /\Aimage/
	validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]
    validates :title, presence: true
    validates :tag, presence: true
    validates :image, presence: true
end