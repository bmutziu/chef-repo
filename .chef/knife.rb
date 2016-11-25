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
knife[:azure_subscription_id] = "5d97deb7-8db6-47ed-b008-e49c940408fe"
knife[:azure_mgmt_cert] = "/home/bmutziu/Public/management-certificate.pem"
#knife[:azure_api_host_name] = "management-preview.core.windows-int.net"
knife[:azure_api_host_name] = "https://management.core.windows.net"
