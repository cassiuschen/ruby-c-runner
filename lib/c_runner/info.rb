module CRunner
  class Info
    VERSION = "0.1.1"
    NAME = "ruby-c-runner"
    SUMMARY = "C/C++ Program G&R Tool"
    AUTHOR = "Cassius Chen"
    EMAIL = "chzsh1995@gmail.com"

    class << self
      def cast
        "Ruby Version: #{`ruby -v`}\n" +
          "#{SUMMARY} | Ver.#{VERSION} \nWrite By #{AUTHOR}\n" +
          "-" * ROW_SIZE + "\n" +
          "source file: #{File.expand_path('./')}/#{ARGV[0]}\n".rsize +
          "  file type: #{$type}\n".rsize +
          "=" * ROW_SIZE + "\n"
      end
    end
  end
end