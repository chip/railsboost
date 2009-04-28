set :ubistrano, {
  :application => :my_app,
  :platform    => :rails,  # :php, :rails, :sinatra
  :repository  => 'git@github.com:user/my-app.git',
  
  :ec2 => {
    :access_key => '',
    :secret_key => ''
  },
  
  :production => {
    :domains => [ 'myapp.com', 'www.myapp.com' ],
    :ssl     => [ 'myapp.com' ],
    :host    => '127.0.0.1'
  },
  
  :staging => {
    :domains => [ 'staging.myapp.com' ],
    :host    => '127.0.0.1'
  }
}

require 'ubistrano'