class JobsController < ApplicationController
  before_action :find_job, only: [:edit, :update, :destroy]

  def index
    @jobs = Job.all
  end

 #creates a new job
  def new
    @job = Job.new
  end

  def create
    job = Job.create(job_params)
    redirect_to jobs_path
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    if @job.update_attributes(job_params)
      flash[:success] = "You have successfully updated a job"
      redirect_to jobs_path
    else
      @errors = @job.errors.full_messages
      render :edit
    end
  end

#method [destroy]
  def destroy
    @job.destroy
    redirect_to jobs_path
  end

  def show
    @job = Job.find(params[:id])
  end

private

def find_job
  @job = Job.find(params[:id])
end

  def job_params
    params.require(:job).permit(:title, :description, :salary)
  end
end
