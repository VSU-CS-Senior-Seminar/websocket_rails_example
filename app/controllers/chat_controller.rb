class ChatController < ApplicationController
  def index
  	
  end

  def test
  	Fiber.new {
  		WebsocketRails[:test].trigger(:new, 'test')
	}.resume

  	respond_to do |format|
       format.html { redirect_to chat_index_path }
    end
  end
end
