class MessagesController < ApplicationController
  layout 'messages'
  def index
    @msg = 'Message data.'
    @data = Message.all
  end

  def show
    @msg = "Indexed data."
    @message = Message.find(params[:id])
  end

  def add
    @msg = 'Message data.'
    @message = Message.new
  end

  def create
    @message =  Message.new message_params
    if @message.save message_params
      redirect_to '/messages'
    else
      render 'add'
    end

  end

  def edit
    @msg = "edit data.[id = " + params[id] + "]"
    @message = Message.find(param[:id])
  end

  def update
    obj = Message.find(params[:id])
    obj.update(message_params)
    redirect_to '/messages'
  end

  private
  def message_params
    params.require(:message).permit(:person_id, :title, :message)

  end


end
