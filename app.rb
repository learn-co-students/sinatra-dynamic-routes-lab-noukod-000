require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do
@reversename = @params[:name].reverse

end

get '/square/:number' do
  @square= @params[:number].to_i*@params[:number].to_i
  "#{square}"
end

get '/say/:number/:phrase' do

end

get '/say/:word1/:word2/:word3/:word4/:word5' do

end

get '/:operation/:number1/:number2' do
  @sum =@params[:number1].to_i+@params[:number2].to_i
  "#{sum}"

  @product =@params[:number1].to_i*@params[:number2].to_i
  "#{product}"

  @div =@params[:number1].to_i/@params[:number2].to_i
  "#{div}"
end

end
