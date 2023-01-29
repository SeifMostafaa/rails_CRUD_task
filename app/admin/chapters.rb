ActiveAdmin.register Chapter do
  permit_params :title, :content, :book_id, :created_at, :updated_at

  index do
    id_column
    column :title
    column :content
    column :book
    actions
  end

  filter :title
  filter :content
  filter :book
  
  form do |f|
    f.semantic_errors *f.object.errors.attribute_names

    f.inputs do
      f.input :title
      f.input :content
      f.input :book
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :content
      row :book
      row :updated_at
      row :created_at
    end
  end
end
