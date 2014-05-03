#!/bin/bash
platform=`uname`

if [[ "$platform" == "Linux" ]]; then
  vmware_tools_tar=vmware-linux-tools.tar.gz
else
  vmware_tools_tar=vmware-solaris-tools.tar.gz
fi
pushd /tmp
wget http://${VMWARE_TOOLS_HOST}/vmware-tools/${vmware_tools_tar}
tar -xf $vmware_tools_tar
/tmp/vmware-tools-distrib/vmware-install.pl -d
rm /tmp/${vmware_tools_tar}
rm -rf /tmp/vmware-tools-distrib
popd
rm /home/aggieops/*.iso
