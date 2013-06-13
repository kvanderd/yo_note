get '/note/create/:id' do
  puts params "________"
  @user = User.find(params[:user_id])
  erb :create_note
end

get '/note/:id' do
  @note = Note.find(params[:id])
  erb :user_notes
end

post '/note/create/:id' do
  puts params
  user = User.find(params[:id])
  note = Note.create(params[:note])
  user.notes << note
  redirect "/user/#{user.id}"
end
