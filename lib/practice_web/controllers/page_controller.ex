defmodule PracticeWeb.PageController do
  use PracticeWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def double(conn, %{"x" => x}) do
    {x, _} = Integer.parse(x)
    y = Practice.double(x)
    render conn, "double.html", x: x, y: y
  end

  def calc(conn, %{"expr" => expr}) do
    {x, _} = Integer.parse(expr)
    y = Practice.calc(expr)
    render conn, "calc.html", x: expr, y: y
  end

  def factor(conn, %{"x" => x}) do
    {x, _} = Integer.parse(x)
    y = Practice.factor(x)
    render conn, "factor.html", expr: x, y: y
  end

   def palindrome(conn, %{"x" => x}) do
     y = Practice.palindrome(x)
     render conn, "palindrome.html", expr: x, y: y
   end
end
