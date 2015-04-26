class Config
  class << self
    def get_params!
      $file_params = 0
      loop {if ARGV[$file_params].match(/^-/) then $file_params += 1; else break; end}
      $params = ARGV[0...$file_params]
      if ARGV[$file_params] =~ /\.(c|cpp)$/
        $type = $1
        $file_name = $`
        $c_params = ARGV[$file_params..-1] - [ARGV[$file_params]]
      else
        puts "Please choose a C or C++ Source Code."
      end
    end

    def check_mode(mode, params)
      for params in params
        $mode[mode.to_sym] = true if $params.include? params
      end
    end

    def check_config(param, setting)
      if $params.include? param
      end
    end


    def analyze_params!
      check_mode :help, ['-h', '--help']
      check_mode :quiet, ['-q', '--quiet']
      check_mode :time_track, ['-t', '--time']
      check_mode :do_not_run, ['-D', '--do-not-run']
      check_mode :keep_generate_file, ['-k', '--keep']
    end
  end
end