require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do 
    @number = params[:number].to_i
    num = @number **2
    "#{num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    result = @phrase * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    arr = []
    @word1 = arr.push(params[:word1])
    @word2 = arr.push(params[:word2])
    @word3 = arr.push(params[:word3])
    @word4 = arr.push(params[:word4])
    @word5 = arr.push(params[:word5])
    arr.join(' ') + "."
  end

  get "/:operation/:number1/:number2" do
    @number_1 = params[:number1].to_i
    @number_2 = params[:number2].to_i
    if params[:operation] == "add"
      "#{@number_1+@number_2}"
    elsif params[:operation] == "subtract"
      "#{@number_1-@number_2}"
    elsif params[:operation] == "multiply"
      "#{@number_1*@number_2}"
    elsif params[:operation] == "divide"
      "#{@number_1/@number_2}"
    end
  end

end