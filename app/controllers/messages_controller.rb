class MessagesController < ApplicationController
  def index
    @room = Room.find(params[:room_id])
    @message = Message.new
  end

  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(params_message)
    if @message.save
      redirect_to action: :index
    else
      render action: :index
    end
  end

  private

  def params_message
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end
end
