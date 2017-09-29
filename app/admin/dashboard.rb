ActiveAdmin.register_page "Dashboard" do
  menu false

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    
    columns do
      column do
        panel "All Posts" do
          table_for Blog.order("id DESC").limit(7) do
            column :title do |blog|
              link_to blog.title, admin_blog_path(blog)
            end
            column "Header Images" do |blog|
              link_to "link", admin_header_images_path(q: {blog_id_eq: blog.id}) 
            end
            column "Content Images" do |blog|
              link_to "link", admin_content_images_path(q: {blog_id_eq: blog.id}) 
            end
          end
        end
      end
    end
  end # content
end