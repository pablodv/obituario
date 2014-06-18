class MessagesController < ApplicationController
  before_filter :authenticate_user!

  def new
    @obituary = Obituary.find(params[:id])
    @message  = Message.new
  end

  def create
    @obituary = Obituary.find(params[:id])
    @message  = Message.new params[:message]

    Notifier.notification(params[:message], params[:id]).deliver if @message.valid?
  end

end
