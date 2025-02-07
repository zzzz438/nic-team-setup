# creator: Skyfay 
# Last edit: 29.03.2022 
 
cls 
 
while($true) { 
$start = Read-Host "你想创建一个NIC团队（1）还是删除一个NIC团队（2）？" 
 
if ($start -eq 1) { 
while($true) { 
Get-NetAdapter 
 
$howmany = Read-Host "你想添加多少个网络接口到NIC团队（2-4）？" 
 
if ($howmany -eq 2) { 
cls 
while($true) { 
Get-NetAdapter 
$network1 = Read-Host "第一个网络接口是什么？" 
$network2 = Read-Host "第一个网络接口是什么？" 
$nicname = Read-Host "这个NIC团队叫什么名字？" 
New-VMSwitch -Name $nicname -NetAdapterName "$network1","$network2" -EnableEmbeddedTeaming $true 
Set-VMSwitchTeam -Name $nicname -LoadBalancingAlgorithm Dynamic 
cls 
if ($error.Count -eq 0) { 
echo "NIC团队已成功创建，恭喜！这个窗口会自动关闭。" 
Start-Sleep -s 6 
exit 
break 
} 
else { 
    cls 
    echo "嗯，没成功。请检查拼写并重试。" 
} 
} 
} 
if ($howmany -eq 3) { 
cls 
while($true) { 
Get-NetAdapter 
$network1 = Read-Host "第一个网络接口是什么？" 
$network2 = Read-Host "第一个网络接口是什么？" 
$network3 = Read-Host "第一个网络接口是什么？" 
$nicname = Read-Host "这个NIC团队叫什么名字？" 
New-VMSwitch -Name $nicname -NetAdapterName "$network1","$network2","$network3" -EnableEmbeddedTeaming $true 
Set-VMSwitchTeam -Name $nicname -LoadBalancingAlgorithm Dynamic 
cls 
if ($error.Count -eq 0) { 
echo "NIC团队已成功创建，恭喜！这个窗口会自动关闭。" 
Start-Sleep -s 6 
exit 
break 
} 
else { 
    cls 
    echo "嗯，没成功。请检查拼写并重试。" 
    echo "'n" 
} 
} 
} 
if ($howmany -eq 4) { 
cls 
Get-NetAdapter 
w
