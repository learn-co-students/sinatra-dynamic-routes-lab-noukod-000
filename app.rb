require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end
  
  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end
  
  get '/say/:number/:phrase' do
    phrase = ''
    params[:number].to_i.times do
      phrase += params[:phrase]
    end
    phrase
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = ''
    words += "#{params[:word1]} "
    words += "#{params[:word2]} "
    words += "#{params[:word3]} "
    words += "#{params[:word4]} "
    words += "#{params[:word5]}"
    words += "."
  end
  
  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    
    case operation
    when "add"
      "#{number1 + number2}"
    when "subtract"
      "#{number1 - number2}"
    when "multiply"
      "#{number1 * number2}"
    when "divide"
      "#{number1 / number2}"
    end
  end
end