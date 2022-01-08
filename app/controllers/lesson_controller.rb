class LessonController < ApplicationController
  def step1
    render plain: "Hello, #{params[:name]}-san."
  end
  def step2
    render plain: params[:controller] + "#" + params[:action] + "\n" + request.headers["User-Agent"]
  end
  def step3
    redirect_to action: "step4"
  end
  def step4
    render plain: "Thsi is Step4."
  end
  def step5
    flash[:notice] = "goto step6"
    redirect_to action: "step6"
  end
  def step6
    render plain: flash[:notice]
  end
  def step7
    @price = (2000 * 1.08).floor
  end
  def step8
    @price = 1000
    render "step7"
  end
  def step9
    @comment = "<script>alert('danger!!')</script> hi guys."
  end
  def step10
    @comment = "<strong>Oh yeah</strong>"
  end
  def step11
    @population = 704414
    @surface = 141.31
  end
  def step12
    @time = Time.current
  end
  def step13
    @population = 127767944
  end
  def step14
    @message = "Hi guys!!\nYou r ... Big man!!!"
  end
  def step17
    @zaiko = 10
  end
  def step18
    @items = {"Fripang" => 2680,
              "WineGlass" => 2550,
              "PepperMill" => 4515,
              "Pieler" => 954}
  end
end
