class Comment < ActiveRecord::Base
  before_create :set_previous_state
  after_create :set_ticket_state
  after_create :creator_watches_ticket
  
  belongs_to :ticket, :touch => true
  delegate :project, :to => :ticket 
  
  belongs_to :user
  belongs_to :state
  validates :text, :presence => true
  
  belongs_to :previous_state, :class_name => "State"
  
  
  private
    def set_ticket_state
      self.ticket.state = self.state
      self.ticket.save!
    end
    
    def set_previous_state
      self.previous_state = ticket.state
    end

    def creator_watches_ticket
      ticket.watchers << user
    end
  
end
