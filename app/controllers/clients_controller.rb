class ClientsController < InheritedResources::Base

  private

    def client_params
      params.require(:client).permit(:fio, :passport, :licence, :drive_date_begin, :birthday)
    end
end

