require 'bundler'
Bundler.require
require_relative 'models/gpa-calculator.rb'

class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end
  post '/gpa' do
    @gpa_results = calculate_gpa(params[:period1], params[:period2], params[:period3], params[:period4], params[:period5], params[:period6], params[:period7], params[:period8], params[:p1type], params[:p2type], params[:p3type], params[:p4type], params[:p5type], params[:p6type], params[:p7type], params[:p8type])
    erb :results
  end
end