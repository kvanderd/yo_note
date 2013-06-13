get "/" do 
  erb :index
end



get '/user/new' do
  erb :login
end

post '/user' do
  params[:user][:username]
  user = User.find_by_username(params[:user][:username])
  
  if user != nil
    user = User.authenticate(params[:user])
  else
    user = User.create(params[:user])
  end
  
  if user.valid?
    create_session(user)
    redirect "/user/#{user.id}"
  end
  
  redirect '/'
end

get '/user/logout' do
  session.clear
  redirect '/'
end


get '/user/:id' do
  @user = User.find(params[:id])
  erb :index
end


