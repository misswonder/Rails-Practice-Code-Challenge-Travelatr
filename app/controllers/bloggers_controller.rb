class BloggersController < ApplicationController

    def index
        @bloggers = Blogger.all 
    end 

    def create
        blogger = Blogger.new(blogger_params)
        if blogger.save 
            redirect_to blogger_path(blogger)
        else
            redirect_to posts_path
        end 
    end 

    def new
    end 

    def show
        @blogger = Blogger.find_by(id: params[:id])
        byebug
    end 
 

    def blogger_params
        params.require(:blogger).permit(:name, :age, :bio)
    end 
    
end 