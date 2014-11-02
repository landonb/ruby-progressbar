require 'ruby-progressbar/output'
require 'ruby-progressbar/tty_output'
require 'ruby-progressbar/non_tty_output'
require 'ruby-progressbar/timer'
require 'ruby-progressbar/progress'
require 'ruby-progressbar/throttle'
require 'ruby-progressbar/length_calculator'
require 'ruby-progressbar/running_average_calculator'
require 'ruby-progressbar/components'
require 'ruby-progressbar/format'
require 'ruby-progressbar/base'

class ProgressBar
  def self.create(*args)
    ProgressBar::Base.new(*args)
  end
end
