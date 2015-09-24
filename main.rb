require 'rubygems'
require 'sinatra'
require 'dm-core'
require 'do_sqlite3'

load "models/persona.rb"

configure do
  DataMapper.setup(:default,"sqlite3:blog.db")
end

get '/hi' do
  "<h1>Hello Word!</h1>"
end

get '/hola' do
  erb :hola
end

get '/hi/:name&:last_name' do |name,last_name|
  @persona = Persona.new(last_name ||= "petek",name)
  erb :hello
end

get '/hi/:name' do |name|
  @persona = Persona.new(last_name ||= "petek",name)
  erb :hello
end
