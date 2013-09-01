log_level                :info
log_location             STDOUT
node_name                'matt-macbook'
client_key               '/Users/mstratton/.chef/matt-macbook.pem'
validation_client_name   'chef-validator'
validation_key           '/Users/mstratton/.chef/validation.pem'
chef_server_url          'http://chef.keepshiny.com:4000'
syntax_check_cache_path  '/Users/mstratton/.chef/syntax_check_cache'
cookbook_path            ["~/src/keepshiny-chef-repo/cookbooks"]
cookbook_copyright        "Matt Stratton"
knife[:aws_access_key_id]      = ENV['AWS_ACCESS_KEY_ID']
knife[:aws_secret_access_key]  = ENV['AWS_SECRET_ACCESS_KEY']

# Default flavor of server (m1.small, c1.medium, etc).
knife[:flavor] = "t1.micro"

# Default AMI identifier, e.g. ami-12345678
#knife[:image] = ""

# AWS Region
knife[:region] = "us-west-1"

# AWS Availability Zone. Must be in the same Region.
knife[:availability_zone] = "us-west-1b"

# A file with EC2 User Data to provision the instance.
#knife[:aws_user_data] = ""

# AWS SSH Keypair.
#knife[:aws_ssh_key_id] = ""
identity_file = '/Users/mstratton/.ssh/chefami.pem'
