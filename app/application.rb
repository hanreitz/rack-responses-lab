class Application
  def call(env)
    [200, {"Content-Type" => "text/html"}, timed_greeting]
  end

  def timed_greeting
    Time.now.hour < 12 ? ["Good Morning!"] : ["Good Afternoon!"]
  end
end