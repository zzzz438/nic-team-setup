cls 
 
while($true) { 
$start = Read-Host "���봴��һ��NIC�Ŷӣ�1������ɾ��һ��NIC�Ŷӣ�2����" 
 
if ($start -eq 1) { 
while($true) { 
Get-NetAdapter 
 
$howmany = Read-Host "������Ӷ��ٸ�����ӿڵ�NIC�Ŷӣ�2-4����" 
 
if ($howmany -eq 2) { 
cls 
while($true) { 
Get-NetAdapter 
$network1 = Read-Host "��һ������ӿ���ʲô��" 
$network2 = Read-Host "�ڶ�������ӿ���ʲô��" 
$nicname = Read-Host "���NIC�Ŷӽ�ʲô���֣�" 
New-NetSwitchTeam -Name $nicname -NetAdapterName "$network1","$network2" -EnableEmbeddedTeaming $true 
Set-NetSwitchTeamTeam -Name $nicname -LoadBalancingAlgorithm Dynamic 
cls 
if ($error.Count -eq 0) { 
echo "NIC�Ŷ��ѳɹ���������ϲ��������ڻ��Զ��رա�" 
Start-Sleep -s 6 
exit 
break 
} 
else { 
    cls 
    echo "�ţ�û�ɹ�������ƴд�����ԡ�" 
} 
} 
} 
if ($howmany -eq 3) { 
cls 
while($true) { 
Get-NetAdapter 
$network1 = Read-Host "��һ������ӿ���ʲô��" 
$network2 = Read-Host "�ڶ�������ӿ���ʲô��" 
$network3 = Read-Host "����������ӿ���ʲô��" 
$nicname = Read-Host "���NIC�Ŷӽ�ʲô���֣�" 
New-NetSwitchTeam -Name $nicname -NetAdapterName "$network1","$network2","$network3" -EnableEmbeddedTeaming $true 
Set-NetSwitchTeamTeam -Name $nicname -LoadBalancingAlgorithm Dynamic 
cls 
if ($error.Count -eq 0) { 
echo "NIC�Ŷ��ѳɹ���������ϲ��������ڻ��Զ��رա�" 
Start-Sleep -s 6 
exit 
break 
} 
else { 
    cls 
    echo "�ţ�û�ɹ�������ƴд�����ԡ�" 
    echo "'n" 
} 
} 
} 
if ($howmany -eq 4) { 
cls 
Get-NetAdapter 
while($true) { 
$network1 = Read-Host "��һ������ӿ���ʲô��" 
$network2 = Read-Host "�ڶ�������ӿ���ʲô��" 
$network3 = Read-Host "����������ӿ���ʲô��" 
$network4 = Read-Host "���ĸ�����ӿ���ʲô��" 
$nicname = Read-Host "���NIC�Ŷӽ�ʲô���֣�" 
New-NetSwitchTeam -Name $nicname -NetAdapterName "$network1","$network2","$network3","$network4" -EnableEmbeddedTeaming $true 
Set-NetSwitchTeamTeam -Name $nicname -LoadBalancingAlgorithm Dynamic 
cls 
if ($error.Count -eq 0) { 
echo "NIC�Ŷ��ѳɹ���������ϲ��������ڻ��Զ��رա�" 
Start-Sleep -s 6 
exit 
break 
} 
else { 
    cls 
    echo "�ţ�û�ɹ�������ƴд�����ԡ�" 
} 
} 
} 
else { 
    cls 
    echo "������һ��2��4֮���ֵ��" 
} 
} 
} 
if ($start -eq 2) { 
while($true) { 
Get-NetAdapter 
$nicteaming = Read-Host "����ɾ���ĸ�NIC�Ŷӣ�" 
Remove-NetSwitchTeam $nicteaming 
cls 
if ($error.Count -eq 0) { 
echo "NIC�Ŷ��ѳɹ�ɾ������ϲ��������ڻ��Զ��رա�" 
Start-Sleep -s 6 
exit 
break 
} 
else { 
     cls 
     echo "�����У����ṩһ����ȷ��NIC�Ŷ�������..." 
} 
} 
} 
else { 
    cls 
    echo "���ṩ�������ᵽ��ֵ��" 
} 
} 
