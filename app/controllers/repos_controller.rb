# frozen_string_literal: true

class ReposController < ApplicationController
  def show
    byebug

    query_string = '{repos(id: 1) {name, repositories}}'

    result_hash = AppSchema.execute(query_string)
  end

  private

  def login
    params.require(:user_login)
  end
end


