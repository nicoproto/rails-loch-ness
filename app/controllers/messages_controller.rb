class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @conversation = Conversation.new
    @message = Message.new(
      text: message_params[:text],
      conversation: @conversation,
      user: current_user
    )

    @message.save ? (redirect_to monsters_path) : (render :new)
  end

  private

  def message_params
    params.require(:message).permit(:text)
  end
end
