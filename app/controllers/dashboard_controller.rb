class DashboardController < ApplicationController

  def index
    session = GoogleDrive.saved_session("config.json")
    @files = session.files
  end

end
