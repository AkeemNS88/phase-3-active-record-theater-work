class Role < ActiveRecord::Base
    # a Role may have many Auditions, many audition, has_many
    # first part of Roles deliverable satisfied by has_many macro
    has_many :auditions
    # return an array of names from actors associated with this specific role
    # test with Role.first.actors
    def actors
        self.auditions.pluck(:actor)
    end
    # same as above except using locations
    # test with Role.first.locations
    def locations
        self.auditions.pluck(:location)
    end
    # return the first instanec of audition that was hired for role
    # otherwise return 'no actor has been hired for this role'
    # will need to use find method, set to a variable then use in a boolean statement
    def lead
        has_lead = self.auditions.find do |audition|
            audition.hired
        end
        has_lead ? has_lead : 'no actor has been hired for this role'
    end
    # same as above, except we've only hired one person
    # will set has_understudy to second position in the array, if no second index then will return
    # 'no actor has been hired for understudy for this role'
    # to test, assign a second role to be sure and use Role.find(role_id).understudy
    # example: Role.find(3).understudy
    def understudy
        has_understudy = self.auditions.filter do |audition|
            audition.hired
    end
    has_understudy[1] ? has_understudy[1] : 'no actor has been hired for understudy for this role'
    end
end