[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$ManagementMenu = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$MgmtFilePermission = $null
[System.Windows.Forms.Button]$MgmtChangeIP = $null
[System.Windows.Forms.Button]$MgmtChangePCName = $null
[System.Windows.Forms.Button]$MgmtBack = $null
[System.Windows.Forms.Button]$MgmtCreateFileShare = $null
[System.Windows.Forms.Button]$MgmtDiskManagement = $null
[System.Windows.Forms.Button]$MgmtInstallFeatures = $null
[System.Windows.Forms.Label]$MgmtLabel = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'ManagementMenu.resources.ps1')
$MgmtFilePermission = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtChangeIP = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtChangePCName = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtDiskManagement = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtInstallFeatures = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtCreateFileShare = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtBack = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtLabel = (New-Object -TypeName System.Windows.Forms.Label)
$ManagementMenu.SuspendLayout()
#
#MgmtFilePermission
#
$MgmtFilePermission.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]341,[System.Int32]54))
$MgmtFilePermission.Name = [System.String]'MgmtFilePermission'
$MgmtFilePermission.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$MgmtFilePermission.TabIndex = [System.Int32]0
$MgmtFilePermission.Text = [System.String]'Checking File Share Permissions'
$MgmtFilePermission.UseVisualStyleBackColor = $true
$MgmtFilePermission.add_Click($button2_Click)
#
#MgmtChangeIP
#
$MgmtChangeIP.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]41,[System.Int32]179))
$MgmtChangeIP.Name = [System.String]'MgmtChangeIP'
$MgmtChangeIP.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$MgmtChangeIP.TabIndex = [System.Int32]1
$MgmtChangeIP.Text = [System.String]'Changing Local IP address'
$MgmtChangeIP.UseVisualStyleBackColor = $true
#
#MgmtChangePCName
#
$MgmtChangePCName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]41,[System.Int32]304))
$MgmtChangePCName.Name = [System.String]'MgmtChangePCName'
$MgmtChangePCName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$MgmtChangePCName.TabIndex = [System.Int32]2
$MgmtChangePCName.Text = [System.String]'Changing Local Computer Name and Joining/Leaving Domain'
$MgmtChangePCName.UseVisualStyleBackColor = $true
#
#MgmtDiskManagement
#
$MgmtDiskManagement.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]341,[System.Int32]304))
$MgmtDiskManagement.Name = [System.String]'MgmtDiskManagement'
$MgmtDiskManagement.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$MgmtDiskManagement.TabIndex = [System.Int32]3
$MgmtDiskManagement.Text = [System.String]'Remote Disk Management'
$MgmtDiskManagement.UseVisualStyleBackColor = $true
#
#MgmtInstallFeatures
#
$MgmtInstallFeatures.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]341,[System.Int32]179))
$MgmtInstallFeatures.Name = [System.String]'MgmtInstallFeatures'
$MgmtInstallFeatures.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$MgmtInstallFeatures.TabIndex = [System.Int32]4
$MgmtInstallFeatures.Text = [System.String]'Install Windows Server Features'
$MgmtInstallFeatures.UseVisualStyleBackColor = $true
#
#MgmtCreateFileShare
#
$MgmtCreateFileShare.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]41,[System.Int32]54))
$MgmtCreateFileShare.Name = [System.String]'MgmtCreateFileShare'
$MgmtCreateFileShare.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$MgmtCreateFileShare.TabIndex = [System.Int32]5
$MgmtCreateFileShare.Text = [System.String]'Creating File Share'
$MgmtCreateFileShare.UseVisualStyleBackColor = $true
#
#MgmtBack
#
$MgmtBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]25,[System.Int32]410))
$MgmtBack.Name = [System.String]'MgmtBack'
$MgmtBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$MgmtBack.TabIndex = [System.Int32]6
$MgmtBack.Text = [System.String]'Back'
$MgmtBack.UseVisualStyleBackColor = $true
#
#MgmtLabel
#
$MgmtLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]9))
$MgmtLabel.Name = [System.String]'MgmtLabel'
$MgmtLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]549,[System.Int32]33))
$MgmtLabel.TabIndex = [System.Int32]7
$MgmtLabel.Text = [System.String]'This is the menu of tools for network management. These tools aim to reduce the time it takes to do these different configurations manually.'
#
#ManagementMenu
#
$ManagementMenu.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$ManagementMenu.Controls.Add($MgmtLabel)
$ManagementMenu.Controls.Add($MgmtBack)
$ManagementMenu.Controls.Add($MgmtCreateFileShare)
$ManagementMenu.Controls.Add($MgmtInstallFeatures)
$ManagementMenu.Controls.Add($MgmtDiskManagement)
$ManagementMenu.Controls.Add($MgmtChangePCName)
$ManagementMenu.Controls.Add($MgmtChangeIP)
$ManagementMenu.Controls.Add($MgmtFilePermission)
$ManagementMenu.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$ManagementMenu.Name = [System.String]'ManagementMenu'
$ManagementMenu.Text = [System.String]'Management Menu - Aurora Automations'
$ManagementMenu.ResumeLayout($false)
Add-Member -InputObject $ManagementMenu -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $ManagementMenu -Name MgmtFilePermission -Value $MgmtFilePermission -MemberType NoteProperty
Add-Member -InputObject $ManagementMenu -Name MgmtChangeIP -Value $MgmtChangeIP -MemberType NoteProperty
Add-Member -InputObject $ManagementMenu -Name MgmtChangePCName -Value $MgmtChangePCName -MemberType NoteProperty
Add-Member -InputObject $ManagementMenu -Name MgmtBack -Value $MgmtBack -MemberType NoteProperty
Add-Member -InputObject $ManagementMenu -Name MgmtCreateFileShare -Value $MgmtCreateFileShare -MemberType NoteProperty
Add-Member -InputObject $ManagementMenu -Name MgmtDiskManagement -Value $MgmtDiskManagement -MemberType NoteProperty
Add-Member -InputObject $ManagementMenu -Name MgmtInstallFeatures -Value $MgmtInstallFeatures -MemberType NoteProperty
Add-Member -InputObject $ManagementMenu -Name MgmtLabel -Value $MgmtLabel -MemberType NoteProperty
Add-Member -InputObject $ManagementMenu -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
