
require 'sinatra'
require 'awesome_print'
require 'json'
require 'haml'
require 'mywebix'

module MyWebix

  class Viewer < Sinatra::Base

    configure do
      set :root, File.dirname(__FILE__)
      set :title, "My Webix Viewer"
      set :static, true
      enable :corss_origin
    end
    
    before do
      response.headers['Access-Control-Allow-Origin'] = '*'
    end

    get '/' do
      haml :mywebix
    end

  end

end
