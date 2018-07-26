class DosesController < ApplicationController


    def new
    set_cock
    @dose = Dose.new
    @dose.cocktail = @cocktail
    end

    def create
    set_cock
    @dose =Dose.new(dose_params)

      if @dose.save
        redirect_to cocktail_path(@cocktail)
      else
        render :new
      end
    end


    def destroy
      @dose = Dose.find(params[:id])
      @dose.destroy
    end


  private

  def dose_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
   end

    def set_cock
    @cocktail = Cocktail.find(params[:cocktail_id])
    end

end
