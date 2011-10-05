ActiveAdmin.register Invoice do
  

form do |f|
    f.inputs "Client" do
      f.input :client
    end
    
    
   
    
    f.inputs "Other Fields" do
      f.input :terms, :input_html => { :rows => 4 }, :label => "Terms & Conditions"
      f.input :notes, :input_html => { :rows => 4 }
    end
    
    f.buttons
  end
end

