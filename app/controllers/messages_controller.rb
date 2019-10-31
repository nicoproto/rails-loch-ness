class MessagesController < ApplicationController
  def new
    @message = Message.new
    @monster = Monster.find(params[:monster_id])
  end

  def create
    @monster = Monster.find(params[:monster_id])
    if params[:conversation]
      @conversation = Conversation.find(params[:conversation])
    else
      @conversation = Conversation.new(
        user_id: current_user.id,
        monster_id: @monster.id
      )
    end
    @message = Message.new(
      text: message_params[:text],
      conversation: @conversation,
      user_id: current_user.id
    )
    # Autoreply function for messages
    if @message.save
      Message.create(
        text: "AUTO REPLY: Thank you so much for your interest in #{@monster.name}.  Sy and Nico are off searching for new monsters so our responses may be delayed.  Keep looking around, there are plenty of great monsters out there to meet!",
        conversation: @conversation,
        user_id: @monster.user.id
      )
      redirect_to conversation_path(@conversation)
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:text)
  end
end
