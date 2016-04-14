class Profile < ActiveRecord::Base
  belongs_to :user
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_size :avatar, :in => 0.megabytes..5.megabytes
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def business_name_present
    if business_name.present?
      "from #{business_name}"
    else
      ""
    end
  end
end
