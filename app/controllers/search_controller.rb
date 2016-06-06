class SearchController < ApplicationController
  def index
    search = Search.new(current_user)
    @stations = search.all(params["q"])
  end
end
