require "vagrant"

module VagrantPlugins
  module Ansible
    module Errors
      class AnsibleError < Vagrant::Errors::VagrantError
        error_namespace("vagrant.provisioners.ansible.errors")
      end

      class AnsibleCommandFailed < AnsibleError
        error_key(:ansible_command_failed)
      end

      class AnsibleNotFoundOnHost < AnsibleError
        error_key(:ansible_not_found_on_host)
      end

      class AnsibleNotFoundOnGuest < AnsibleError
        error_key(:ansible_not_found_on_guest)
      end

      class AnsiblePipInstallIsNotSupported < AnsibleError
        error_key(:cannot_support_pip_install)
      end

      class AnsibleVersionMismatch < AnsibleError
        error_key(:ansible_version_mismatch)
      end

      class AnsibleCompatibilityModeConflict < AnsibleError
        error_key(:ansible_compatibility_mode_conflict)
      end
    end
  end
end