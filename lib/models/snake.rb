class Snake

  def initialize (window)
    @window = window

    @image = Gosu::Image.new(@window, 'media/images/snake.png')
    @x = @y = @vel_x = @vel_y = @angle = 0.0
  end

  def warp(x, y)
    @x, @y = x, y
  end

  def turn_left
    @angle -= 2.0
  end

  def turn_right
    @angle += 2.0
  end

  def move
    @x += Gosu::offset_x(@angle, 1.5)
    @y += Gosu::offset_y(@angle, 1.5)

    @y %= @window.height
    @x %= @window.width
  end

  def draw
    @image.draw_rot(@x, @y, 1, @angle)
  end

end
