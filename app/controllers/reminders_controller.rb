class RemindersController < ApplicationController
  def index
    @reminder = Reminder.new
  end
end
