# Homepage (Root path)
get '/' do
  erb :index
end

get '/messages' do
  @messages = Message.all
  erb :'messages/index'
end

get '/messages/new' do
  erb :'messages/new'
end

get '/messages/:author' do
  @messageauthor = Message.where("author = ?", params[:author])
  erb :'messages/show_message'
end

post '/messages' do
  @message = Message.new(
    #title: params[:title],
    content: params[:content],
    author: params[:author],
    link: params[:link]
  )
  if @message.save
    redirect '/messages'
  else  
    erb :'messages/new'
  end
end

get '/messages/:author/:id' do
  @message = Message.find params[:id]
  erb :'messages/show'
end



