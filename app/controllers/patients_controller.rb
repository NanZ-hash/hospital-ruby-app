class PatientsController < ApplicationController
    def index 
        @patients=Patient.all
    end 
    
    def show 
        @patient=Patient.find(params[:id])
    end 
    
    def new 
        @patient = Patient.new
    end

    def create
        @patient = Patient.new(patient_prams)
        #:patient is the modle that we difined to save it in the new record 
        # in the data base ... 
        @patient.save
        redirect_to @patient
    end

    private 
    def patient_prams
        params.require(:patient).permit(:first_name , :last_name , :diagnosis )
    end
    

end
