ActiveAdmin.register_page "Dashboard" do
  menu false

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    tabs do
      tab :active do
        panel "All Posts" do
          table_for Blog.order("id DESC") do
            column :title do |blog|
              link_to blog.title, admin_blog_path(blog)
            end
            column "Header Images" do |blog|
              link_to "link", admin_blog_header_images_path(blog.id)
            end
            column "Content Images" do |blog|
              link_to "link", admin_blog_content_images_path(blog.id)
            end
          end
        end
      end
      tab :inactive do
        panel "All Posts" do
          table_for Blog.order("id DESC") do
            column :title do |blog|
              link_to blog.title, admin_blog_path(blog)
            end
            column "Header Images" do |blog|
              link_to "link", admin_blog_header_images_path(blog.id)
            end
            column "Content Images" do |blog|
              link_to "link", admin_blog_content_images_path(blog.id)
            end
          end
        end
      end
    end

    columns do
      column do
        panel "All Posts" do
          table_for Blog.order("id DESC") do
            column :title do |blog|
              link_to blog.title, admin_blog_path(blog)
            end
            column "Header Images" do |blog|
              link_to "link", admin_blog_header_images_path(blog.id) 
            end
            column "Content Images" do |blog|
              link_to "link", admin_blog_content_images_path(blog.id)
            end
          end
        end
      end
      column do
        panel "All Posts" do
          table_for Blog.order("id DESC") do
            column :title do |blog|
              link_to blog.title, admin_blog_path(blog)
            end
            column "Header Images" do |blog|
              link_to "link", admin_blog_header_images_path(blog.id)
            end
            column "Content Images" do |blog|
              link_to "link", admin_blog_content_images_path(blog.id)
            end
          end
        end
      end
    end

  end
end