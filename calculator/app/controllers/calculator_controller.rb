class CalculatorController < ApplicationController

  def index
  end

  def add(x,y)
    sum = x.to_i + y.to_i
    render plain: sum
  end

  def subtract(x,y)
    difference = x.to_i - y.to_i
    render plain: difference
  end

  def multiply(x,y)
    product = x.to_i * y.to_i
    render plain: product
  end

  def division(x,y)
    quotient = x.to_i / y.to_i
    render plain: quotient
  end

  def calculate
    case params[:operations]
    when "plus"
      add(params[:x],params[:y])
    when "minus"
      subtract(params[:x],params[:y])
    when "multiply"
      multiply(params[:x],params[:y])
    when "division"
      division(params[:x],params[:y])
  end



  end
end
