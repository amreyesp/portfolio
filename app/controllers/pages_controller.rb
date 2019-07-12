class PagesController < ApplicationController

  def home
  end

  def portfolio
  end

  def about
  end

  def share

    client = Octokit::Client.new
    user = client.user 'amreyesp'

    @myrepos = user.rels[:repos].get.data
    @myforkedrepos = []
    @myownrepos = []

    for repo in @myrepos
      if repo.fork == true
        @myforkedrepos.push(repo)
      else
        @myownrepos.push(repo)
      end
    end

    @myownrepos = @myownrepos.sort_by(&:updated_at).reverse[0...4]
    @myforkedrepos = @myforkedrepos.sort_by(&:created_at).reverse[0...4]

  end

end
