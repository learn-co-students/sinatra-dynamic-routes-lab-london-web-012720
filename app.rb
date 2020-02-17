require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    "#{params[:name].reverse}"
  end

  get '/square/:number' do 
    num = params[:number].to_i
    "#{num * num}"
  end

  get '/say/:number/:phrase' do 
    num = params[:number].to_i
    phrase = params[:phrase]
    statement = ""
    num.times do 
      statement += "#{phrase} "
    end
    "#{statement}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    statement = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    statement
  end

  get '/:operation/:number1/:number2' do 
    if params[:operation] == "add"
    "#{params[:number1].to_i + params[:number2].to_i}"
    elsif params[:operation] == "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"
    elsif params[:operation] == "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"
    else
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end
end