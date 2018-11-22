ActiveAdmin.register Page do
    permit_params :title, :body, :order, :category_id, :image, {otherImages: []}
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


index do
    column :id
    column :title, :sortable => :title
    column :category, :sortable => :category
    column :created_at, :sortable => :created_at
    column :image, :sortable => :image
    column :OtherImages, :sortable => :OtherImages
    column :order
    actions
end

    form do |f|
        f.inputs "Details" do
            f.input :title, :label => "Title"
            f.input :category, :label => "Category"
            f.input :body, as: :html_editor, :label => "Body"
            f.input :image, :label => "Image"
            f.input :OtherImages, :label => "Other Images"
            f.input :order, :label => "Order"
            f.actions
        end
    end
end
