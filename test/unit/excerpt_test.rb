require 'test_helper'

describe Excerpt do
  describe '#excerpt' do
    before do
      fixtures_dir = File.dirname(__FILE__) + '/../fixtures'
      file = open(fixtures_dir + '/articles_controller.rb')
      @excerpt = Excerpt.new(file)
    end

    it 'extracts text around specified line' do
      expected = <<CODE
class ArticlesController < ApplicationController
  before_filter :admin_required, except: %w(show index)
CODE
      assert_equal expected, @excerpt.around_line(2, :radius => 1)
    end

    it 'extracts text around specified line with a default radius of 4' do
      expected = <<CODE

  def index
    @articles = Article.where('published_on <= ?', Date.today).order('published_on desc')
    respond_to do |format|
      format.html
      format.xml
    end
  end
CODE
      assert_equal expected, @excerpt.around_line(7)
    end
  end
end
