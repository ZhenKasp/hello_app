ActiveAdmin.register Post do
  permit_params :title, :body, :image


    index do
      selectable_column
      id_column
      column :title
      column "Body" do |post|
        simple_format post.body
      end
      column "Image" do |post|
        if post.image.file?
          image_tag post.image.url, width:100,height:80
        else
          "No images"
        end
      end
      actions
    end
end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :body, :image_file_name, :image_content_type, :image_file_size, :image_updated_at
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :body, :image_file_name, :image_content_type, :image_file_size, :image_updated_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
