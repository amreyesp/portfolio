class PagesController < ApplicationController

  def home
  end

  def portfolio
  end

  def about
  end

  def contact
    require 'octokit'
    client = Octokit::Client.new
    user = client.user 'amreyesp'
    puts user.name
    puts user.rels[:repos].get.data
  end

end
