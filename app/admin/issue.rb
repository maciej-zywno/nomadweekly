ActiveAdmin.register Issue do
  permit_params :description, :title, :number, :scheduled_at
end
