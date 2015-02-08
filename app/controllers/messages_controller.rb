class MessagesController < ApplicationController

  	def create
    	@message = Message.create!(message_params)
    	@conversation = Conversation.find(params[:conversation_id])
    	@path = conversation_path(@conversation)
  	end


  	private

  	def message_params
  		params.require(:message).permit(:body, :user_id, :conversation_id)
  	end
end
