
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
    
    get '/settings' do
      haml :settings
    end

    before do
      response.headers['Access-Control-Allow-Origin'] = '*'
    end

    get '/' do
      haml :doc
    end

    get '/control/:instance/:command' do
      instance=params[:instance].to_sym
      command=params[:command].to_sym
      $server[instance].send(command)
    end

    get '/query/:instance/:query' do
      instance=params[:instance].to_sym
      query=params[:query]
      data = $server[instance.to_sym].exec(query)
      data.to_json
    end

  end

end
