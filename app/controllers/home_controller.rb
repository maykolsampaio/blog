class HomeController < ApplicationController
before_action :set_post, only: [:show]  


  def index
 @posts = Post.all
 @comentarios = Comentario.all
  end


end
