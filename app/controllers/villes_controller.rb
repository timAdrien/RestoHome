class VillesController < ApplicationController
  def index
    @villes = [
        {
            :id => "1",
            :name => "paris",
            :description => "qsdqsdqsd",
        },
        {
            :id => "2",
            :name => "marseille",
            :description => "qsdqsdqsd",
        }
    ]
  end
  def show
    @restaurants = [
        {
            :id => "1",
            :name => "chez paul",
            :description => "sdsdsd",
        },
        {
            :id => "2",
            :name => "burger king",
            :description => "qsdqsdqsdsd",
        }
    ]
  end
end
