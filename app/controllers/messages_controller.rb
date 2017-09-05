class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :destroy]
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:success] = "success"
      redirect_to root_path
    else
      flash[:error] = "error, check the error logs and try again"
      render :new
    end
  end
  def show
  end


  def edit
  end

  def update
    if @message = Message.update(message_params)
      flash[:success] = "success"
      redirect_to root_path
    else
      flash[:error] = "error, check the error logs and try again"
      render message
    end
  end

  def destroy
    if @message = Message.destroy(message_params)
      redirect_to root_path
    else
      render message
    end
  end

  private
  def set_message
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:content, :user_id, :chatroom_id)
  end
end
