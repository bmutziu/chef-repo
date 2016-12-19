current_dir = File.dirname(__FILE__)
log_level	:info
log_location	STDOUT
node_name	"bmutziu-solo"
client_key	"#{current_dir}/bmutziu-solo.pem"
validation_client_name	"bminc-validator"
validation_key	"#{current_dir}/bminc-validator.pem"
chef_server_url	"https://api.chef.io/organizations/bminc"
cache_type	'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path	["#{current_dir}/../cookbooks"]
cookbook_copyright "BM"
cookbook_license "apachev2"
cookbook_email "bmutziu@gmail.com"
#knife[:azure_subscription_id] = "5d97deb7-8db6-47ed-b008-e49c940408fe"
#knife[:azure_mgmt_cert] = "/home/bmutziu/Public/management-certificate.pem"
#knife[:azure_api_host_name] = "management-preview.core.windows-int.net"
#knife[:azure_api_host_name] = "https://management.core.windows.net"
