ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    
    columns do
      column do
        panel "New Users" do
          ul do
            User.last(5).each do |u|
              li link_to( u.first_name + " " + u.last_name , admin_user_path(u))
            end
          end
        end
      end

      column do
        panel "Recent Projects" do
          ul do
            Project.last(5).each do |p|
              li link_to(p.name, admin_project_path(p))
            end
          end
        end
      end
    end # content

    div do
      panel "Info" do
        para "Welcome to ActiveAdmin."
      end
    end
  end
end
