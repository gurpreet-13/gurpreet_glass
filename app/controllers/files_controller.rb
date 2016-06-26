class FilesController < ApplicationController

  before_action :authenticate_user
  before_action :create_drive_session

  def index
  end

end
