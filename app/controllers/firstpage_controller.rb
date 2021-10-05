class FirstpageController < ApplicationController
  def index
    @test_data = "Hi Ruby"
    @sample_data = ('A'..'Z').to_a.sample(5)
    @img_data = "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v535batch2-mynt-43.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=9f602de67a347b7c50ef8eeac3835189"
  end
end
