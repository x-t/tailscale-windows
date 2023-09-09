# Windows on Azure on Tailscale

i became insane writing all of this

tailscale is broken on windows (lol):
https://github.com/tailscale/tailscale/issues/2346

to get around this, you have the `i_have_fixed_tailscale` env, it's set to `false` first, this allows RDP to the public ip. 
in here, go and toggle the unattended mode from the desktop
then, set the variable to `true` in your tfvars, this will now block RDP from your public ip.

now you have an windows.