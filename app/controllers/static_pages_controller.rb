class StaticPagesController < ApplicationController
  def welcome
    @post = Post.find_by_section("welcome")
  end

  def research
    @post = Post.find_by_section("research")
  end

  def teaching

  end

  def workshops
    @post = Post.find_by_section("workshops")
  end

  def services
    @post = Post.find_by_section("services")
  end

  def nonacademicstuff

  end

  def testarea
    @texts = Text.all
  end
end
