class Ticket < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  validates :title, :presence => true
  validates :description, :presence => true,
                          :length => { :minimum => 10 }
  has_many :assets
  accepts_nested_attributes_for :assets
  has_many :comments
  belongs_to :state
  
  has_and_belongs_to_many :tags
  
  
  def tag!(tags)
    
    until tags.nil?
      
      tags = tags.split(" ").map do |tag|
        Tag.find_or_create_by_name(tag)
      end
      self.tags << tags
            
    end    
    
  end
  
end
