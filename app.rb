require 'sinatra'
require 'tilt/sass'
require 'compass'
require 'tilt/erb'

configure do
  Compass.configuration do |config|
    config.project_path = File.dirname(__FILE__)
    config.sass_dir = 'assets/stylesheets'
    config.css_dir = '/'
    config.http_path = "/"
    config.images_dir = "assets/images"
    config.javascripts_dir = "assets/javascripts"
    config.fonts_dir = "assets/fonts"

    config.http_javascripts_dir = "javascripts"
    config.http_stylesheets_dir = "stylesheets"
    config.http_images_dir = "images"
    config.http_fonts_dir = "fonts"
  end

  set :sass, Compass.sass_engine_options
  set :scss, Compass.sass_engine_options
  set :scss, {:style => :compact, :debug_info => false}
end

get '/' do
  erb :index
end

get '/stylesheets/:name.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss :"../assets/stylesheets/#{params[:name]}", Compass.sass_engine_options
end