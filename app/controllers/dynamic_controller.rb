class DynamicController < ApplicationController
  
  def home
    puts "$" * 20
    puts "I AM IN DA DYNAMIC#HOME"
    puts "$" * 20

    @gossip = Gossip.all
    #puts @gossip


	end
  
  def show_all
    puts "$" * 20
    puts "Voici le message de l'URL :" 
    puts params[:first_name]
    puts "$" * 20
    @first_name = params[:first_name]
    @author = User.first.first_name
    @title = Gossip.first.title
    @array_gossip = Gossip.all
  end

  def show_one
  end





end