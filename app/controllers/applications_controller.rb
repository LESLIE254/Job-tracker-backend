class ApplicationsController < ApplicationController
    def index
        render json: Application.all
    end
    def create
        application = Application.create!(
            user_id: params[:user_id],
            job_id: params[:job_id],
            application_stage: "submitted"
        )
        render json: application, status: :created

    end

    def show
        render json: Application.find(params[:id]), include:[:job, :user]
    end


    def update
        application = application_params
        if application 
         application.update!(user_id:params[:user_id], job_id:params[:job_id], application_stage:params[:application_stage])
         render json: application
        else
         render json: {error:"application not found"}
        end
     end
 
     def destroy
         Application.find(params[:id]).destroy
         render json: Application.all
     end
 
     private
    def application_params
       Application.find_by(id: params[:id])
    end
end
