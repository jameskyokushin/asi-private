ActiveAdmin.register Client do
  filter :company_name
  filter :company_address
  filter :contact_number
  filter :email
  filter :tin_
 
index do
    column :company_name
    column :email do |client|
      if client.email 
        mail_to client.email, client.email 
      else 
        "-"
      end
    end
    column :company_address do |client|
      truncate client.company_address
    end
    column :contact_number
    column :tin_
    column do |client|
      link_to("Details", admin_client_path(client)) + " | " + \
      link_to("Edit", edit_admin_client_path(client)) + " | " + \
      link_to("Delete", admin_client_path(client), :method => :delete, :confirm => "Are you sure?")
    end
  end
  
  show :title => :company_name do
    panel "Client Details" do
      attributes_table_for client do
        row("Name") { client.company_name }
        row("Email") { mail_to client.email }
        row("Address") { client.company_address }
        row("Phone") { client.contact_number }
        row("TIN #") { client.tin_ }
      end
    end
  end

 
end
