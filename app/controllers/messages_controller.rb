class MessagesController < ApplicationController
  def new
    @message = Message.new
    @monster = Monster.find(params[:monster_id])
  end

  def create
    @monster = Monster.find(params[:monster_id])
    @conversation = Conversation.new(
      user_id: current_user.id,
      monster_id: @monster.id
    )
    @message = Message.new(
      text: message_params[:text],
      conversation: @conversation,
      user_id: current_user.id
    )

    @message.save ? (redirect_to monster_path(@monster)) : (render :new)
  end

  private

  def message_params
    params.require(:message).permit(:text)
  end
end
