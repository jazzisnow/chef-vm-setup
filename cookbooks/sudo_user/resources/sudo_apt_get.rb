class Chef
  class Provider
    class Package
      class SudoAptGet < Chef::Provider::Package::Apt
        def install_package(name, version)
          run_command_with_system_locale(
            :command => "sudo apt-get -y -q #{expand_options(@new_resource.options)} install #{name}=#{version}",
            :environment => {
              "DEBIAN_FRONTEND" => "noninteractive"
            }
          )
        end
      end
    end
  end
end