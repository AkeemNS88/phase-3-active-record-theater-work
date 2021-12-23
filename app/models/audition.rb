class Audition < ActiveRecord::Base
    # An actor may only Audition for one Role, one to many = belongs_to
    # Relationship deliverable create macro listed in comment above.
    belongs_to :role
    
    # create instance for call_back that changes boolean value to true
    def call_back
        self.update(hired: true)
    end
end