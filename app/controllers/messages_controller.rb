class MessagesController < ApplicationController

  	def create
    	@message = Message.create!(message_params)
    	@conversation = Conversation.find(params[:conversation_id])
    	@path = "/conversations/new"
  	end


  	private

  	def message_params
  		params.require(:message).permit(:body, :user_id, :conversation_id)
  	end
end
