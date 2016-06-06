class SearchController < ApplicationController
  def index
    zipcode = params["q"]
    #TODO how do I get the search params to be in the url?
  end
end
