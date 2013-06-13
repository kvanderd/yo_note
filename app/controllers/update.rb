
get '/note/:id/edit' do 
  @note = Note.find(params[:id])
  erb :edit_note
end
