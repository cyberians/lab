class AutosController < InheritedResources::Base

  private

    def auto_params
      params.require(:auto).permit(:client_id, :gosnomer, :tech_passport, :marka_model, :date_release, :color)
    end
end

