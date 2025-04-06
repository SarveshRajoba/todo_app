# app/controllers/errors_controller.rb
class ErrorsController < ApplicationController
  def not_found
    render 'not_found', status: :not_found, layout: false
  end
end
