class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    random = rand(1..5)
    if random == 1
      @link = activity_path(Activity.all.sample)
    else
      @link = category_path(Category.all.sample)
    end
  end
end
