module Redirects
  extend ActiveSupport::Concern

  included do
    def show
      show! {
        return redirect_to [:edit, resource]
      }
    end

    def update
      update! do
        if resource.errors.count == 0
          flash[:info] = 'Объект успешно сохранен' if resource.errors.count == 0
          return redirect_to([:edit, resource])
        end
      end
    end

    def create
      create! do
        if resource.errors.count == 0
          flash[:info] = 'Объект успешно создан'
          return redirect_to([:edit, resource])
        end
      end
    end
  end
end

