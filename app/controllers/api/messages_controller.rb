class Api::MessagesController < ApplicationController
  def index
    messages = Greeting.all.shuffle
    render json: messages, status: :created, location: api_messages_path
  end
end
