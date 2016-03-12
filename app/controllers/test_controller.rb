class TestController < ApplicationController

  def test_user
    if request.post?
      
      render text: "true"
    end
  end

end
