current_dir = File.dirname(__FILE__)
log_level	:info
log_location	STDOUT
node_name	"bmutziu"
client_key	"#{current_dir}/bmutziu.pem"
validation_client_name	"fpc-validator"
validation_key	"#{current_dir}/fpc-validator.pem"
chef_server_url	"https://api.chef.io/organizations/fpc"
cache_type	'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path	["#{current_dir}/../cookbooks"]
cookbook_copyright "Fidelia People's Card"
cookbook_license "apachev2"
cookbook_email "bogdan@vdg.io"
