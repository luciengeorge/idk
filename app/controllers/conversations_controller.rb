class ConversationsController < ApplicationController
  before_action :authenticate_user!
  before_action :conversations_and_users, only: %i[show]
  before_action :filter_conversations, only: %i[index]
  before_action :find_conversation, only: :show
  def index
    if params[:name]&.empty?
      @users = User.all.reject { |user| user.id == current_user.id }
    elsif params[:name]
      @users = User.search_by_firstname_and_lastname(params[:name]).reject { |user| user.id == current_user.id }
    else
      @users = []
    end
  end

  def show
    @conversation.messages.each do |message|
      message.update(read: true) if message.user_id != current_user.id
    end
    @messages = @conversation.messages
    @message = @conversation.messages.new
  end

  def create
    if Conversation.between(params[:sender_id], params[:recipient_id]).present?
      @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
    else
      @conversation = Conversation.create!(conversation_params)
    end
    redirect_to conversation_path(@conversation)
  end

  private

  def conversations_and_users
    @conversations = Conversation.where(sender_id: current_user.id).or(Conversation.where(recipient_id: current_user.id))
  end

  def filter_conversations
    conversations = Conversation.where(sender_id: current_user.id).or(Conversation.where(recipient_id: current_user.id))
    conversations.each do |conversation|
      conversation.destroy if conversation.messages.count.zero?
    end
    @conversations = Conversation.where(sender_id: current_user.id).or(Conversation.where(recipient_id: current_user.id))
  end

  def find_conversation
    @conversation = Conversation.find(params[:id])
  end

  def conversation_params
    params.permit(:sender_id, :recipient_id)
  end
end
