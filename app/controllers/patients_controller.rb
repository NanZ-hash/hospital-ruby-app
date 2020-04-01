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

    def edit
        @patient=Patient.find(params[:id])
    end 

    def create
        @doctor=Doctor.find(params[:patient][:doctor_id])
        Patient.create(params.require(:patient).permit(:first_name , :last_name , :diagnosis , :doctor_id) )
    
        redirect_to patients_path
    end

    def update 
        @patient=Patient.find(params[:id])
         @patient.update(patient_params)
        redirect_to @patient

    end

    def destroy
         @patient =Patient.find(params[:id]).destroy
            redirect_to patients_path
    end

    private 
    def patient_params
        params.require(:patient).permit(:first_name , :last_name , :diagnosis , :doctor_id)
    end
    

end
