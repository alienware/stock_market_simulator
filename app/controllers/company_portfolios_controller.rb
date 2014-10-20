class CompanyPortfoliosController < ApplicationController
  before_action :set_company_portfolio, only: [:show, :edit, :update, :destroy]

  # GET /company_portfolios
  def index
    @company_portfolios = CompanyPortfolio.all
  end

  # GET /company_portfolios/1
  def show
  end

  # GET /company_portfolios/new
  def new
    @company_portfolio = CompanyPortfolio.new
  end

  # GET /company_portfolios/1/edit
  def edit
  end

  # POST /company_portfolios
  def create
    @company_portfolio = CompanyPortfolio.new(company_portfolio_params)

    if @company_portfolio.save
      redirect_to @company_portfolio, notice: 'Company portfolio was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /company_portfolios/1
  def update
    if @company_portfolio.update(company_portfolio_params)
      redirect_to @company_portfolio, notice: 'Company portfolio was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /company_portfolios/1
  def destroy
    @company_portfolio.destroy
    redirect_to company_portfolios_url, notice: 'Company portfolio was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_portfolio
      @company_portfolio = CompanyPortfolio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def company_portfolio_params
      params[:company_portfolio]
    end
end
