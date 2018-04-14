class StaticPagesController < ApplicationController
  before_action :ahoytrack

  def welcome

  end

  def courses
    @post = Post.find_by_section("courses")
  end

  def demo

  end


  private

  def ahoytrack
    ahoy.track action_name.to_s, {language: "Ruby"}
  end
end
