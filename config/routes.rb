Rails.application.routes.draw do
  get 'resumes/index'

  get 'resumes/new'

  get 'resumes/crate'

  get 'resumes/destroy'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'page/index'
  root to: 'page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end

class Resume < ActiveRecord::Base
   mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
   validates :name, presence: true # Make sure the owner's name is present.
end
