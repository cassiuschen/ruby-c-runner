module CRunner 
  class Runner
    attr_accessor :config, :mode, :file

    # Start a Runner
    def initialize(file = nil, mode = :default, compiler = :gcc, path = '/tmp')
      unless file
        @file = file
        configure mode, compiler, path
      else
        raise NoFileError
      end
    end

    # Run!
    def run!
      unless self.mode == :quiet
        puts CRunner::Info.cast.colorize :blue
      end
      puts 'running'
    end

    # To Configure the Runner
    def configure(mode, compiler, path)
      # @config controls the compilation of a C Program
      @config = {
        # Use which compiler to compile the program
        generator: compiler,
        # Store the binary file to where
        path: path
      }

      # @mode can be :default, :quiet, :verbose, :help, :compile_only
      @mode = mode
    end
  end
end