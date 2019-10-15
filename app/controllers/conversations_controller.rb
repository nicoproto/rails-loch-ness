class ConversationsController < ApplicationController
  def index
    @conversations = Conversation.where(user: current_user)
  end

  def new; end

  def create; end

  def show
    @conversation = Conversation.find(params[:id])
    @messages = Message.where(conversation: @conversation)
    @message = Message.new
    @monster = @conversation.monster
  end
end
