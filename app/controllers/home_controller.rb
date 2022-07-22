class HomeController < ApplicationController
  def index
    if current_user.usertype=="Recruiter"
      @homejobs=Job.where(user_id: current_user.id)
      @appliedjobs=Appliedjob.all
    else
      @homejobs=Job.all 
      @appliedjobs=Appliedjob.where(user_id: current_user.id)
    end  
  end
end