class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @recent_postings = Service.order(created_at: :desc).limit(5)
  end
end
