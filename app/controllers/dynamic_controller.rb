class DynamicController < ApplicationController
  attr_accessor :gossip, :gossips, :user
  def home
    puts "$" * 20
    puts "I AM IN DA DYNAMIC#HOME"
    puts "$" * 20
    @gossips = Gossip.all
  end
  
  def gossip
    @gossip = Gossip.find_by(id: params[:i])
    @user = User.find_by(id: @gossip.user)
  end

  def user
    @gossip = Gossip.find_by(id: params[:i])
    @user = User.find_by(id: @gossip.user)
  end
end