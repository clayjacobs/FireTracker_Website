class FiresController < ApplicationController
  before_action :validateEverything, only: [:create]
  def index
    @submissions = Submission.all
    respond_to do |format|
      format.html
      format.json { render json: @submissions}
    end
    @calfires = Calfire.all
    respond_to do |format|
      format.html 
      format.json { render json: @calfires}
    end
  end
  
  def validateEverything
    validates_presence_of :lat
    validates_presence_of :long
    validates_presence_of :category
    validates_presence_of :image
  end
  
  def create
    @submission = Submission.create params[:submission]
    redirect_to_posts_path
  end
  
  def delete
    Submission.find(params[:id]).destroy
    redirect
  
  private
  
    def submission_params
      params.require(:lat,:long,:category,:image)
    end
end