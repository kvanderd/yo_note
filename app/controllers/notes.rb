get '/note/create' do
  erb :create_note
end

get '/note/:id' do
  # @note = Note.find(params[:id])
  erb :user_notes
end

post '/note/create' do
  post = Note.create(params[:note])
  user = User.find(params[:user_id])
  user.notes << note
  redirect "/user/#{user.id}"
end