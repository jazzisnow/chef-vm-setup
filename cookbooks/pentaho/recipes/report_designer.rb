script "install pentaho" do
  interpreter "bash"
  user "root"
  cwd node[:temp_folder]
  code <<-EOH
    wget http://downloads.sourceforge.net/project/pentaho/Report%20Designer/3.8.0-stable/prd-ce-3.8.0-stable.tar.gz -O report-designer.tar.gz
    tar -zxvf report-designer.tar.gz
    cp report-designer #{node[:pentaho][:install_dir]}/report-designer -R
  EOH
end

template "/usr/bin/report-designer" do
  source "report-designer.erb"
  mode "0755"
  variables(
    :install_dir => node[:pentaho][:install_dir]
  )
end
