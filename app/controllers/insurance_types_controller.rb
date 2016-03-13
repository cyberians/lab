class InsuranceTypesController < InheritedResources::Base

  private

    def insurance_type_params
      params.require(:insurance_type).permit(:name, :desc, :price)
    end
end

