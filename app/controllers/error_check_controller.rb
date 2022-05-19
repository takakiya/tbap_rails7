class ErrorCheckController < ApplicationController
  def index
    a = 1/0
    render plain: "エラーみえてる？"
  end
end
