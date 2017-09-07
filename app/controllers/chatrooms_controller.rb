class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: [:edit, :destroy]
  def index
    @chatrooms = Chatroom.all
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = chatrooms.build(chatroom_params)
    if @chatroom.save
      flash[:success] = "success"
      redirect_to chatrooms_path
    else
      flash[:error] = "error, check the error logs and try again"
      render :new
    end
  end
  def show
    @chatroom = Chatroom.includes(:messages).find_by(id: params[:id])
    @message = Message.new
  end


  def edit
  end

  def update
    if @chatroom = Chatroom.update(chatroom_params)
      flash[:success] = "success"
      redirect_to @chatroom
    else
      flash[:error] = "error, check the error logs and try again"
      render @chatroom
    end
  end

  def destroy
    if @chatroom = Chatroom.destroy(chatroom_params)
      redirect_to root_path
    else
      render @chatroom
    end
  end

  private
  def set_chatroom
    @chatroom = Chatroom.find(params[:id])
  end

  def chatroom_params
    params.require(:chatroom).permit(:topic)
  end
end
