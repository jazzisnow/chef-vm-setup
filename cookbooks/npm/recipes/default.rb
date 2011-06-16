script "install npm" do
  interpreter "bash"
  user node[:root]
  cwd node[:home_dir]
  code <<-EOH
    curl http://npmjs.org/install.sh | sh
  EOH
end
