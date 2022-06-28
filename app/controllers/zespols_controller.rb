class ZespolsController < ApplicationController

  skip_before_action :authorized, only: [:index, :show] 
  

end
  