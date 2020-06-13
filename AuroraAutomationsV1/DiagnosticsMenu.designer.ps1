[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$DiagnosticsMenu = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$DiagADDetails = $null
[System.Windows.Forms.Button]$DiagADListUsers = $null
[System.Windows.Forms.Button]$DiagPortStatus = $null
[System.Windows.Forms.Button]$DiagADMachines = $null
[System.Windows.Forms.Button]$DiagRemoteOSArch = $null
[System.Windows.Forms.Button]$DiagConnectTest = $null
[System.Windows.Forms.Button]$DiagBack = $null
[System.Windows.Forms.Label]$DiagLabel = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'DiagnosticsMenu.resources.ps1')
$DiagADDetails = (New-Object -TypeName System.Windows.Forms.Button)
$DiagADListUsers = (New-Object -TypeName System.Windows.Forms.Button)
$DiagPortStatus = (New-Object -TypeName System.Windows.Forms.Button)
$DiagADMachines = (New-Object -TypeName System.Windows.Forms.Button)
$DiagRemoteOSArch = (New-Object -TypeName System.Windows.Forms.Button)
$DiagConnectTest = (New-Object -TypeName System.Windows.Forms.Button)
$DiagBack = (New-Object -TypeName System.Windows.Forms.Button)
$DiagLabel = (New-Object -TypeName System.Windows.Forms.Label)
$DiagnosticsMenu.SuspendLayout()
#
#DiagADDetails
#
$DiagADDetails.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]41,[System.Int32]54))
$DiagADDetails.Name = [System.String]'DiagADDetails'
$DiagADDetails.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$DiagADDetails.TabIndex = [System.Int32]0
$DiagADDetails.Text = [System.String]'Get Active Directory Details and Information'
$DiagADDetails.UseVisualStyleBackColor = $true
#
#DiagADListUsers
#
$DiagADListUsers.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]41,[System.Int32]179))
$DiagADListUsers.Name = [System.String]'DiagADListUsers'
$DiagADListUsers.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$DiagADListUsers.TabIndex = [System.Int32]1
$DiagADListUsers.Text = [System.String]'List the Users in Active Directory'
$DiagADListUsers.UseVisualStyleBackColor = $true
#
#DiagPortStatus
#
$DiagPortStatus.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]41,[System.Int32]304))
$DiagPortStatus.Name = [System.String]'DiagPortStatus'
$DiagPortStatus.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$DiagPortStatus.TabIndex = [System.Int32]2
$DiagPortStatus.Text = [System.String]'Check Port Status'
$DiagPortStatus.UseVisualStyleBackColor = $true
#
#DiagADMachines
#
$DiagADMachines.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]341,[System.Int32]54))
$DiagADMachines.Name = [System.String]'DiagADMachines'
$DiagADMachines.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$DiagADMachines.TabIndex = [System.Int32]3
$DiagADMachines.Text = [System.String]'Check Machines Connected to Active Directory'
$DiagADMachines.UseVisualStyleBackColor = $true
#
#DiagRemoteOSArch
#
$DiagRemoteOSArch.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]341,[System.Int32]179))
$DiagRemoteOSArch.Name = [System.String]'DiagRemoteOSArch'
$DiagRemoteOSArch.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$DiagRemoteOSArch.TabIndex = [System.Int32]4
$DiagRemoteOSArch.Text = [System.String]'Check Remote OS Architecture'
$DiagRemoteOSArch.UseVisualStyleBackColor = $true
#
#DiagConnectTest
#
$DiagConnectTest.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]341,[System.Int32]304))
$DiagConnectTest.Name = [System.String]'DiagConnectTest'
$DiagConnectTest.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$DiagConnectTest.TabIndex = [System.Int32]5
$DiagConnectTest.Text = [System.String]'Connection Test'
$DiagConnectTest.UseVisualStyleBackColor = $true
#
#DiagBack
#
$DiagBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]25,[System.Int32]410))
$DiagBack.Name = [System.String]'DiagBack'
$DiagBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$DiagBack.TabIndex = [System.Int32]6
$DiagBack.Text = [System.String]'Back'
$DiagBack.UseVisualStyleBackColor = $true
#
#DiagLabel
#
$DiagLabel.AutoSize = $true
$DiagLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]15))
$DiagLabel.Name = [System.String]'DiagLabel'
$DiagLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]467,[System.Int32]13))
$DiagLabel.TabIndex = [System.Int32]7
$DiagLabel.Text = [System.String]'This is the menu for Diagnostics tools, This will give basic infromation for Networking Management'
#
#DiagnosticsMenu
#
$DiagnosticsMenu.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$DiagnosticsMenu.Controls.Add($DiagLabel)
$DiagnosticsMenu.Controls.Add($DiagBack)
$DiagnosticsMenu.Controls.Add($DiagConnectTest)
$DiagnosticsMenu.Controls.Add($DiagRemoteOSArch)
$DiagnosticsMenu.Controls.Add($DiagADMachines)
$DiagnosticsMenu.Controls.Add($DiagPortStatus)
$DiagnosticsMenu.Controls.Add($DiagADListUsers)
$DiagnosticsMenu.Controls.Add($DiagADDetails)
$DiagnosticsMenu.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$DiagnosticsMenu.Name = [System.String]'DiagnosticsMenu'
$DiagnosticsMenu.Text = [System.String]'Diagnostics Menu - Aurora Automations'
$DiagnosticsMenu.ResumeLayout($false)
$DiagnosticsMenu.PerformLayout()
Add-Member -InputObject $DiagnosticsMenu -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $DiagnosticsMenu -Name DiagADDetails -Value $DiagADDetails -MemberType NoteProperty
Add-Member -InputObject $DiagnosticsMenu -Name DiagADListUsers -Value $DiagADListUsers -MemberType NoteProperty
Add-Member -InputObject $DiagnosticsMenu -Name DiagPortStatus -Value $DiagPortStatus -MemberType NoteProperty
Add-Member -InputObject $DiagnosticsMenu -Name DiagADMachines -Value $DiagADMachines -MemberType NoteProperty
Add-Member -InputObject $DiagnosticsMenu -Name DiagRemoteOSArch -Value $DiagRemoteOSArch -MemberType NoteProperty
Add-Member -InputObject $DiagnosticsMenu -Name DiagConnectTest -Value $DiagConnectTest -MemberType NoteProperty
Add-Member -InputObject $DiagnosticsMenu -Name DiagBack -Value $DiagBack -MemberType NoteProperty
Add-Member -InputObject $DiagnosticsMenu -Name DiagLabel -Value $DiagLabel -MemberType NoteProperty
Add-Member -InputObject $DiagnosticsMenu -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
