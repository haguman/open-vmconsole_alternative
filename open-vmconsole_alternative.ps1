function open-vmconsole_alternative

{

param($server)

get-vm $server | %{Start-Process -FilePath "C:\Program Files (x86)\VMware\VMware Remote Console\vmrc.exe" -ArgumentList ($UidUtil.GetParentUid( $_.Uid).replace("/VIServer=","vmrc://") + "?moid=" + $_.id.Replace("VirtualMachine-",""))}

}