require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get '/square/:number' do
    @squared = params[:number].to_i**2
    @squared.to_s
  end
  
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase].gsub("%20", " ")
    "#{@phrase}"*@number
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_arr = [:word1, :word2, :word3, :word4, :word5]
    @sentence = (@word_arr.map{|word| params[word].to_s}.join(" ")+".")
    @sentence
  end
  
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation_new = nil
    case @operation
    when "add"
      @operation_new = "+"
    when "subtract"
      @operation_new = "-"
    when "multiply" 
      @operation_new = "*"
    when "divide"
      @operation_new = "/"
    else
      @operation_new = nil
    end
      
    @result = @num1.send(@operation_new, @num2)
    @result.to_s
  end
end