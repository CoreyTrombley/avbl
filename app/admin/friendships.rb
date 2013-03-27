ActiveAdmin.register Friendship do
  menu :priority => 3
  
  form do |f|                         
    f.inputs "Friendships" do     
      f.input :user
      f.input :friend               
    end                               
    f.actions                         
  end
end
