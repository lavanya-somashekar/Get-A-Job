class JobDetails 
    def initialize(current_user)
        @current_user=current_user
    end    

    def users() 
        if @current_user.usertype=="Recruiter"
            Job.where(user_id: @current_user.id)
        else
            Job.all 
        end 
    end    
end       