platform "el-5-i386" do |plat|
  plat.servicedir "/etc/rc.d/init.d"
  plat.defaultdir "/etc/sysconfig"
  plat.servicetype "sysv"

  plat.provision_with "yum install -y --nogpgcheck autoconf automake createrepo rsync gcc make rpmdevtools rpm-libs yum-utils rpm-sign rpm-build; echo '[build-tools]\nname=build-tools\nbaseurl=http://enterprise.delivery.puppetlabs.net/build-tools/el/5/$basearch' > /etc/yum.repos.d/build-tools.repo"
  plat.install_build_dependencies_with "yum install -y --nogpgcheck "
  plat.vcloud_name "centos-5-i386"
end