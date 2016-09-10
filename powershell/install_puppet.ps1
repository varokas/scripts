$setupDir = "C:\setup"

mkdir -f $setupDir
wget https://downloads.puppetlabs.com/windows/puppet-agent-x64-latest.msi -OutFile "$setupDir\puppet-agent-x64-latest.msi"

Start-Process -Wait -FilePath "msiexec.exe" -ArgumentList "/qn", "/norestart", "/i", "$setupDir\puppet-agent-x64-latest.msi", "PUPPET_MASTER_SERVER=puppet"
