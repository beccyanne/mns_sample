module EnvConfig
  ENVIRONMENT ||= ENV['ENV_CONFIG'] || 'prod'
  CONFIG_PATH ||=  '/lib/config/'

  def load_file(file_name, path)
    Hashie::Mash.load(Dir.pwd + "#{path}" + file_name + '.yml')
  end

  def api
    config ||= load_file('api', CONFIG_PATH).send("#{ENVIRONMENT}")
  end

  def ui
    config ||= load_file('ui', CONFIG_PATH).send("#{ENVIRONMENT}")
  end
end