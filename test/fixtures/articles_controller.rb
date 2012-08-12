class ArticlesController < ApplicationController
  before_filter :admin_required, except: %w(show index)

  def index
    @articles = Article.where('published_on <= ?', Date.today).order('published_on desc')
    respond_to do |format|
      format.html
      format.xml
    end
  end

   def new
    @article = Article.new
  end
end
