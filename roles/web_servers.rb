name "web_servers"
description "This role contains nodes, which act as web servers"

run_list "recipe[ntp]"
default_attributes 'ntp' => {
  'ntpdate' => {
  'disable' => true
  }
}

run_list "recipe[chef_nginx::source]","recipe[my_cookbook]"
default_attributes "nginx" => {
         "version" => "1.10.2",
         "init_style" => "init",
         "enable_default_site" => false,
         "upload_progress" => {
           "url" => "https://github.com/masterzen/nginx-upload-progress-module/archive/v0.9.1.tar.gz",
           "checksum" =>
       "99ec072cca35cd7791e77c40a8ded41a7a8c1111e057be26e55fba2fdf105f43"
         },
         "source" => {
         "checksum" =>
       	"1045ac4987a396e2fa5d0011daf8987b612dd2f05181b67507da68cbe7d765c2",
           "modules" => ["chef_nginx::upload_progress_module"]
	}
}
