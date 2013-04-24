class StaticController < ApplicationController
  def about
    'shared/steve.erb'
  end

  def contact
    redirect_to about_path
  end
end
