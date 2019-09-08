class SessionsController < ApplicationController
  skip_before_action :authenticate

  def create
  end
end
