class ApplicationController < ActionController::Base
  before_action :set_layout, :visit
  include Countable

  private

  def set_layout
    if ['small', 'wide'].include? params['layout']
      cookies.permanent['layout'] = params['layout']
    end

    @layout = cookies['layout']
  end

  def visit
    register_visit(current_user) if current_user
  end
end
