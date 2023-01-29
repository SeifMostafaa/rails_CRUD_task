ActiveAdmin.register Book do
  permit_params :title, :description, :admin_user_id, :created_at, :updated_at

  index do
    id_column
    column :title
    column :description
    column :admin_user
    actions
  end

  filter :title
  filter :description
  filter :admin_user
  
  form do |f|
    f.semantic_errors *f.object.errors.attribute_names

    f.inputs do
      f.input :title
      f.input :description
      f.input :admin_user
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :admin_user
      row :updated_at
      row :created_at
    end
  end
end
