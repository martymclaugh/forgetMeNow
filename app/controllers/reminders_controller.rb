class RemindersController < ApplicationController
  def index
    @reminder = Reminder.new
  end

  def create
    p params
    @reminder = Reminder.new(user_id: current_user.id, title: params[:title], message: params[:message], date: params[:date], time: params[:time])
    if @reminder.save
      redirect_to user_reminders_path
    end
  end


  private

  def reminder_params
    params.require(:reminder).permit(:title, :user_id, :message, :date, :time)
  end
end
