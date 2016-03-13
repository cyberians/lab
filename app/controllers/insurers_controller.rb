class InsurersController < InheritedResources::Base

  private

    def insurer_params
      params.require(:insurer).permit(:fio, :login, :password)
    end
end

