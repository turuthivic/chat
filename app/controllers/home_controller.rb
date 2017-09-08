class HomeController < ApplicationController
	skip_before_action :authenticate_user!
  def home
  end

  def about
  end

  def contact
  end

  def gallery
  end
end
