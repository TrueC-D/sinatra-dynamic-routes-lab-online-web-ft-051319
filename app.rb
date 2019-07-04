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
    # @number = params[:number]
    # @phrase = params[:phrase]
    # count = 0
    # until count = @number do 
    #   count+=1
    #   @phrase
    # end
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_arr = [:word1, :word2, :word3, :word4, :word5]
    @sentence = (@word_arr.map{|word| params[word].to_s}.join(" ")+".")
    @sentence
  end
  
  get '/:operation/:number1/:number2' do
    
  end
  
end