
get '/note/:id/edit' do 
  @note = Note.find_by_id(params[:id])
  erb :edit_note
end