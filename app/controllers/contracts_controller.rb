class ContractsController < InheritedResources::Base

  private

    def contract_params
      params.require(:contract).permit(:client_id, :insurance_type_id, :insurer_id, :auto_id, :date_begin, :date_end)
    end
end

