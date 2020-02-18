require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @reversename = params[:name].reverse 
    "#{@reversename}"
  end 

  get '/square/:number' do 
    @squarenum = params[:number].to_i ** 2 
   "#{@squarenum}"
  end 

  get '/say/:number/:phrase' do 
      @num = params[:number].to_i
      @phrase = params[:phrase]
      result = @phrase * @num  
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 

  get '/:operation/:number1/:number2' do 
      number1 = params[:number1].to_i
      number2 = params[:number2].to_i


      if params[:operation] == "add"
        result = number1 + number2
      elsif params[:operation] == "subtract"
        result = number1 - number2
      elsif params[:operation] == "multiply"
        result = number1 * number2
      else params[:operation] == "divide"
        result = number1 / number2
      end 
    result.to_s
    end 



end 