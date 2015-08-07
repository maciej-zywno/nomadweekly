ActiveAdmin.register Link do
  permit_params :issue_id, :url, :author, :author_url, :description
end
