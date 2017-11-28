class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @table = find_table
    @date = get_date
  end

  def submit
    table = find_table
    date = get_date
    order = table.order(date)

    if !order.reserve(params[:from], params[:to])
      flash[:order] = "allready reserved"
    end

    redirect_to root_path(:id => params[:id], :date => params[:date])
  end

  private

  def find_table
    id = params[:id] || 1

    Saloon.find(id).tables.first
  end

  def get_date
    params[:date] || Date.today
  end
end
