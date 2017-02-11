class SuppliersController < ApplicationController
before_action :authenticate_admin!
def index
  @suppliers = Supplier.all
end

def show
  @supplier = Supplier.find_by(id: params[:id])
end

end
