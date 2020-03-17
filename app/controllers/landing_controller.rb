class LandingController < ApplicationController
  def index

    @tutorials = Tutorial.paginate(page: params[:page], per_page: 9)
  end

  def show
    @tutorial = Tutorial.find(params[:id])
  end
end
