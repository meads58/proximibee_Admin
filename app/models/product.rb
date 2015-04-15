class Product < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "1002x855>", :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  belongs_to :beacon, dependent: :destroy

end
