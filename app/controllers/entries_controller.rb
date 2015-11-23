require 'open-uri'
require 'json'

class EntriesController < ApplicationController
  def index

    url = 'http://qiita.com/api/v2/items?query=tag:infoscoop'

    @entries = open(url) do |io|
      JSON.load(io)
    end

    respond_to do |format|
      format.html
    end
  end
end
