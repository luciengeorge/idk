class MessagesController < ApplicationController
  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end

  def new
    @message = @conversation.messages.new
  end

  def create
    @message = @conversation.messages.new(message_params)
    redirect_to conversation_path(@conversation) if @message.save
  end

  private

  def message_params
    params.require(:message).permit(:body, :user_id)
  end
end
