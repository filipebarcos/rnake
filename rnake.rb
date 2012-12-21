class Rnake < Gosu::Window
  def initialize
    super 640, 480, false
    self.caption = "RNAKE"

    @background_image = Gosu::Image.new(self, 'media/images/background.jpg')
    @snake = Snake.new(self)
    @snake.warp(320, 240)
  end

  def update
    if button_down?(Gosu::KbLeft)
      @snake.turn_left
    elsif button_down?(Gosu::KbRight)
      @snake.turn_right
    elsif button_down?(Gosu::KbUp)
      @snake.move
    end
  end

  def draw
    @background_image.draw(0, 0, 0)
    @snake.draw
  end

  def button_down(id)
    close if id == Gosu::KbEscape
  end
end
