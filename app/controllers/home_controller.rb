class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  skip_load_and_authorize_resource
  skip_before_action :verify_authenticity_token, only: [:index]

  def index
  end

end
