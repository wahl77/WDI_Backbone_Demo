class QuestionsController < ApplicationController
  
  respond_to :json

  def index
    respond_with Question.all
  end

  def show
    respond_with Question.find(parmas[:id])
  end

  def create
    respond_with Question.create(params[:question])
  end

  def update
    respond_with Question.update(params[:id], params[:question])
  end

  def destroy
    respond_with Question.destroy(parmas[:id])
  end

end
