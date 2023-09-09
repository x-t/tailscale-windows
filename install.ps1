# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Disable confirmations
choco feature enable -n=allowGlobalConfirmation

# Install Tailscale
iwr https://pkgs.tailscale.com/stable/tailscale-setup-1.48.1-amd64.msi -OutFile $env:temp\tailscale.msi
$Arguments = "TS_UNATTENDEDMODE=always", "/quiet", "/qn", "/i", "$env:temp\tailscale.msi"
Start-Process msiexec.exe -Wait -ArgumentList $Arguments

# Login
& 'C:\Program Files\Tailscale\tailscale.exe' up --accept-dns=false --authkey=${tailnetkey} --unattended
