class HomeController < ApplicationController
  def index
  end
  def result

  end
  def owe_money
    @one_month_data = Bill.where(:date => "#{params[:user][:from].gsub('-','/')}".."#{params[:user][:to].gsub('-','/')}")
    @amar = @one_month_data.sum('had_to_give_by_amar')
    @akbar = @one_month_data.sum('had_to_give_by_akbar')
    @anthony = @one_month_data.sum('had_to_give_by_anthony')
  end
end