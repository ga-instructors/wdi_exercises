class TasksController < ApplicationController

  def index
    respond_to do |format|
      format.html { @tasks = Task.all }
      format.json { render json: Task.all }
    end
  end

    def create
      puts "PARAMS:======================"
      puts params
      # render json: { reply: "Hey man, nice AJAX call."}
      task = Task.create(params[:task])
      # this is my response
      sleep 10
      render json: task
    end

    def destroy
      task = Task.find(params[:id])
      task.destroy
      render json: task
    end

    def update
      task = Task.find(params[:id])
      # the newly updated attributes are sent to the database
      task.update_attributes(params[:task])
      render json: task
    end

    def new

    end

    def edit

    end

end