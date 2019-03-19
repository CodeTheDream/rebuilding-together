class RepairsController < ApplicationController
    def index
        @repair = Repair.all 
    end
    def new
        @repair = Repair.new
        
    end
    def create 
        @repair = Repair.new(repair_params)
        @repair.save
        redirect_to repairs_path
    end
    def edit
        @repair = Repair.find(params[:id])
    end
    def update
         @repair = Repair.find(params[:id])
         @repair.update_attributes(repair_params)
        @repair.save
        redirect_to repairs_path
    end
    def destroy
         @repair = Repair.find(params[:id])
         @repair.destroy
         redirect_to repairs_path
     end
    
end

def repair_params
    params.require(:repair).permit(:repair_type, :repair_notes)
end


