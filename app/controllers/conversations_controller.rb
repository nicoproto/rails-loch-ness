class ConversationsController < ApplicationController
  def index
    @conversations = Conversation.where(user: current_user)
  end

  def new; end

  def create; end

  def show; end
end
