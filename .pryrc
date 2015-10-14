require 'readline'
require 'logger'

class LoggingReadline
  def readline(prompt)
    Readline.readline(prompt).tap do |user_input|
      logger.info(user_input)
    end
  end

  # uncomment these to fix tab completion:
  # def completion_proc
  #   Readline.completion_proc
  # end

  # def completion_proc=(prooooc)
  #   Readline.completion_proc = prooooc
  # end

  private

  def logger
    @logger ||= Logger.new('log/console.log')
  end
end

Pry.config.input = LoggingReadline.new
