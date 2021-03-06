class PagesController < ApplicationController

  def home
    @page = HomePage.instance
    @page_title = 'Home | Invictus Defense Academy'

    @gallery_items = @page.home_gallery_items.live
    @video = Medium.live.videos.featured.first
    @days = Day.all
    @workouts = Workout.live
    @news_items = NewsItem.live.ordered_by_date.limit(2)
  end

  def sitemap
    @page_title = 'Sitemap | Invictus Defense Academy'
    @sitemap_news_items = NewsItem.live.ordered_by_date
    @sitemap_instructors = Instructor.live

    respond_to do |format|
      format.html
      format.xml { render layout: false }
    end
  end

end
