require_relative 'config/environment'

class App < Sinatra::Base
get '/reversename/:name' do
@name_reversed = params[:name].reverse
"#{@name_reversed}"
end

get '/square/:number' do 
  @number_s = params[:number].to_i ** 2

  "#{@number_s}"
end

get '/say/:number/:phrase' do 
  answer = ''
 params[:number].to_i.times do 
   answer += params[:phrase]
 end
answer
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  answer = ''
   params.each {|k, v| answer += " #{v}" }
   
"#{answer}."
end

get '/:operation/:number1/:number2' do

  answer = ''
  num1 = params[:number1].to_i
  num2 = params[:number2].to_i
  o = params[:operation]
 
  case o 
  when "add"
    answer = (num1 + num2).to_s
  when "subtract"
    answer = (num1 - num2 ).to_s
  when "divide"
    answer = (num1 / num2).to_s
  when "multiply"
    answer = (num1 * num2 ).to_s
  end
 
end

end