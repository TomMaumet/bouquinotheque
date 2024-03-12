class BookStoresController < ApplicationController
  def index
    @book_stores = BookStore.near(current_user.city, 10)

    @markers = @book_stores.geocoded.map do |book_store|
      {
        lat: book_store.latitude,
        lng: book_store.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { book_store: book_store })
      }
    end
  end
end
