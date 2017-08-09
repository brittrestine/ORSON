class UsersController < ApplicationController
  def index
  end

  def show
  end
end
class UsersController < ApplicationController
	
	def index
		@users = User.all
  end

end