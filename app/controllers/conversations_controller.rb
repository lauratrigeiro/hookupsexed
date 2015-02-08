class ConversationsController < ApplicationController

	def new
		@current_user = User.find(params[:user].to_i)
		@other_user = if params[:user] == "1" 
						User.find(2)
					  else
						User.find(1)
					  end
		@conversation = Conversation.first
		@message = Message.new
	end
end
