class String
  COLORS = {
    :red    => 31,
    :green  => 32,
    :yellow => 33,
    :blue   => 34
  }
  def colorize(color)
    "\033[#{COLORS[color]}m#{self}\033[0m"
  end

  def rsize
    size = self.size
    return self.rjust size, ''
  end
end