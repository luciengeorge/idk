class MessagesController < ApplicationController
  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end

  def new
    @message = @conversation.messages.new
  end

  def create
    @message = @conversation.messages.new(message_params)
    if @message.save
      respond_to do |format|
        format.html { redirect_to conversation_path(@conversation) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'conversations/show' }
        format.js
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:body, :user_id)
  end
end
