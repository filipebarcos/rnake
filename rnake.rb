class Rnake < Gosu::Window
  def initialize
    super 640, 480, false
    self.caption = "RNAKE"

    @background_image = Gosu::Image.new(self, 'media/images/background.jpg')
  end

  def update
  end

  def draw
    @background_image.draw(0, 0, 0)
  end
end
