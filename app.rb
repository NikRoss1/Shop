#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "shop.db"}

class Product < ActiveRecord::Base 
end

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get "/index" do
	erb :index
end

get "/about" do
	erb :about
end