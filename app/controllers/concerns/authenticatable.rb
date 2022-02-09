#concern e um padrao de arquivo para estender os controllers

module Authenticatable
    extend ActiveSupport::Concern
  
    included do
      include DeviseTokenAuth::Concerns::SetUserByToken
      before_action :authenticate_user!
    end
  end