class RemindersController < ApplicationController
  def index
    @reminder = Reminder.new
    @reminders = Reminder.where(user_id: current_user.id)
    @reminders_by_date = @reminders.group_by(&:date)
    p "*" * 100
    p @reminders_by_date
    p "*" * 100
  end

  def create
    @reminder = Reminder.new(user_id: current_user.id, title: params[:reminder][:title], message: params[:reminder][:message], date: params[:reminder][:date], time: params[:reminder][:time])
    if @reminder.save
      redirect_to user_reminders_path
    end
  end

end
