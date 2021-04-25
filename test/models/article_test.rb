require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "should not save article without title" do
    article = Article.new
    article.body = "Body for an Article"
    assert_not article.save
  end
end
