require 'yaml'

class SetupParams
  def initialize
    @config = YAML.load_file('config/secrets.yml')
  end

  def api_key
    return  @config['development']['dafoodkey']
  end

  def api_host
    return @config['development']['api_host']
  end

  def api_search
    @api_search = @config['development']['api_search']
  end

end
