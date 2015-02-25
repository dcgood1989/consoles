class ConsolesController < ApplicationController

  def index
  @consoles = Console.all
  end

  def new
    @console = Console.new
  end

  def create
    @console = Console.new(console_params)
    @console.save
    redirect_to consoles_path flash[:notice] = "Console was created successfully"
  end

  def edit
    @console = Console.find(params[:id])
  end

  def update
    @console = Console.find(params[:id])
      if @console.update(console_params)
        redirect_to consoles_path flash[:notice] = "Console was updated successfully"
      else
        render :edit
      end
  end

  def show
    @console = Console.find(params[:id])
  end

  def destroy
    @console = Console.find(params[:id])
    @console.destroy
    redirect_to consoles_path flash[:notice] = "Console was destroyed successfully"
  end










    private

    def console_params
      params.require(:console).permit(:description, :release_year, :developer)
    end

end
