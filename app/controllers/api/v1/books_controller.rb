
  module Api
    module V1
        class BooksController < ApplicationController
            def search
                @books = RakutenWebService::Books::Book.search(title: "ドラえもん")
                render json: { status: 'success', data: @books }
            end
        end
    end
end

