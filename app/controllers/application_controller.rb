class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
   	get '/recipes/new' do #this creates a new article
 		  erb :new
 		end
 		 
 		post '/recipes' do
 		  @recipe = Recipe.create(:name => params[:name], :ingredients => params[:ingredients])
 		  redirect to "/recipes/#{@recipe.id}"
		end

end
