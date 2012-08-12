require 'open-uri'

class Excerpt

  # input - anything open-uri reads
  def initialize(input)
    @lines = open(input).read.split("\n")
  end

  # options
  #   :radius - number of lines before/after the specified
  #             line (1st arg) that will also be included 
  #             in the excerpt
  def around_line(line_number, options = {})
    default_options = {:radius => 4}
    apply_options = default_options.merge(options)
    radius = apply_options[:radius]

    index = line_number - 1
    start_on = [0, index - radius].max
    end_on   = [index + radius, @lines.size - 1].min
    @lines[start_on..end_on] * "\n"
  end
end
