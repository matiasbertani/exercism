class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(':')[-1].strip()
  end

  def log_level
    @line.split(':')[0].gsub(/[\[\]]/, "").downcase
  end

  def reformat
    error_log_level = log_level
    error_message = message
    "#{error_message} (#{error_log_level})"
  end
end
