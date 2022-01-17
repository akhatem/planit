server '62.114.120.114', user: 'deploy', roles: %w{app db web}, :primary => true

set :deploy_to, "/home/deploy/planitint"