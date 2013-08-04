module VagrantPlugins
  module GuestCoreOS
    class Guest < Vagrant.plugin("2", :guest)
      def detect?(machine)
        machine.communicate.test("grep CoreOS /etc/lsb-release")
      end
    end
  end
end
