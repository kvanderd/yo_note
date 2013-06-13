get '/note/:id/delete' do
  @note = Note.find(params[:id])
    erb :delete_note
end


#create a way to delete an object
#create a view to show a successful deletion
#the submit button needs to have some kind of action to delete too
delete '/delete/:id' do
 #add a helper to verify you want to destroy something
  note = Note.find(params[:id])
 
  note.destroy
  redirect '/'
end
