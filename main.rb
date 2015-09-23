require 'rubygems'
require 'sinatra'
require 'dm-core'
require 'do_sqlite3'

load "models/persona.rb"

configure do
  DataMapper.setup(:default,"sqlite3:blog.db")
end

get '/hi' do
  "<h1>Hola Mundo!</h1>"
end

get '/hi/:name' do |name|

  @persona = Persona.new("salias",name)

  erb :hello
end