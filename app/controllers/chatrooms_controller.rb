class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: [:show, :edit, :destroy]
  def index
    @chatrooms = ChatRoom.all
  end

  def new
    @chatroom = ChatRoom.new
  end

  def create
    @chatroom = ChatRoom.new(chatroom_params)
    if @chatroom.save
      flash[:success] = "success"
      redirect_to chatroom(chatroom)
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
    if @chatroom = ChatRoom.update(chatroom_params)
      flash[:success] = "success"
      redirect_to root_path
    else
      flash[:error] = "error, check the error logs and try again"
      render chatroom
    end
  end

  def destroy
    if @chatroom = ChatRoom.destroy(chatroom_params)
      redirect_to root_path
    else
      render chatroom
    end
  end

  private
  def set_chatroom
    @chatroom = ChatRoom.find(params[:id])
  end

  def chatroom_params
    params.require(:chatroom).permit(:topic)
  end
end
