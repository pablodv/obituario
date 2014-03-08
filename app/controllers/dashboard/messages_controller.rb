class Dashboard::MessagesController < ApplicationController
  def new
    @obituary = Obituary.find(params[:id])
    @message  = Message.new
  end

  def create
    @message = Message.new params[:message]

    if @message.valid?
      Notifier.notification(params[:message], params[:id]).deliver
      redirect_to dashboard_user_obituaries_path(current_user), notice: "Mensaje enviado con exito"
    else
      render :new
    end

  end
end
