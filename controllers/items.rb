#index
get '/' do
  @items = Item.all
  erb :"index"
end

#create
post '/items' do
  Item.create!(params[:item])
  redirect '/'
end

#show
get '/items/:id' do
  @item = Item.find(params[:id])
  erb :"show"
end

#edit
get '/items/:id/edit' do
  @item = Item.find(params[:id])
  erb :"edit"
end

#update
put '/items/:id' do
  @item = Item.find(params[:id])
  @item.update!(params[:item])
  redirect "/items/#{@item.id}"
end

#delete
delete '/items/:id' do
  Item.destroy(params[:id])
  redirect "/"
end
