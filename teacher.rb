class Teacher < Person
    def initialize(age, name = 'Unknown', parent_permission = true , specialization)
      super(age , name , parent_permission)
      @specialization = specialization
    end
  
    public def can_use_services?
      true
    end
  end