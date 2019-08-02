# My Webix Viewer

This is an example GEM for a few different technologies. Sinatra with Webix

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mywebix'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mywebix

## Usage

Create a server by creating a new `MyWebix::Server` object and pointing it to a dsm.sys stanza name. This requires that the `dsmadmc` executable be available on the system.

`serv = ProjectConnect::Server.new(:stanza)`

Submit commands to it:

`res = serv.exec("q db f=d")`

A ProtectConnect::Cmd is returned:

`res.cmd`
`res.data`
`res.to_json`
