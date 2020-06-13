[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$ActiveDirectoryMenu = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$ADInstall = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.Button]$ADDomainCreate = $null
[System.Windows.Forms.Button]$Back = $null
[System.Windows.Forms.Button]$ADUserCreate = $null
[System.Windows.Forms.Button]$ADUserDelete = $null
[System.Windows.Forms.Button]$ADUserPassReset = $null
[System.Windows.Forms.Button]$ADBulkUserCreate = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'ActiveDirectoryMenu.resources.ps1')
$ADInstall = (New-Object -TypeName System.Windows.Forms.Button)
$ADDomainCreate = (New-Object -TypeName System.Windows.Forms.Button)
$ADUserCreate = (New-Object -TypeName System.Windows.Forms.Button)
$ADUserDelete = (New-Object -TypeName System.Windows.Forms.Button)
$ADUserPassReset = (New-Object -TypeName System.Windows.Forms.Button)
$ADBulkUserCreate = (New-Object -TypeName System.Windows.Forms.Button)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$Back = (New-Object -TypeName System.Windows.Forms.Button)
$ActiveDirectoryMenu.SuspendLayout()
#
#ADInstall
#
$ADInstall.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]41,[System.Int32]54))
$ADInstall.Name = [System.String]'ADInstall'
$ADInstall.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$ADInstall.TabIndex = [System.Int32]0
$ADInstall.Text = [System.String]'Organzational Units Management'
$ADInstall.UseVisualStyleBackColor = $true
$ADInstall.add_Click({OUMShowMenu})
#
#ADDomainCreate
#
$ADDomainCreate.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]341,[System.Int32]54))
$ADDomainCreate.Name = [System.String]'ADDomainCreate'
$ADDomainCreate.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$ADDomainCreate.TabIndex = [System.Int32]1
$ADDomainCreate.Text = [System.String]'Active Directory Domain And Forest Creation '
$ADDomainCreate.UseVisualStyleBackColor = $true
$ADDomainCreate.add_Click($ADDomainCreate_Click)
#
#ADUserCreate
#
$ADUserCreate.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]41,[System.Int32]179))
$ADUserCreate.Name = [System.String]'ADUserCreate'
$ADUserCreate.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$ADUserCreate.TabIndex = [System.Int32]2
$ADUserCreate.Text = [System.String]'Active Directory Individual User Creation'
$ADUserCreate.UseVisualStyleBackColor = $true
$ADUserCreate.add_Click({Individual.User})
#
#ADUserDelete
#
$ADUserDelete.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]41,[System.Int32]304))
$ADUserDelete.Name = [System.String]'ADUserDelete'
$ADUserDelete.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$ADUserDelete.TabIndex = [System.Int32]3
$ADUserDelete.Text = [System.String]'Active Directory User Deletion'
$ADUserDelete.UseVisualStyleBackColor = $true
$ADUserDelete.add_Click($ADUserDelete_Click)
#
#ADUserPassReset
#
$ADUserPassReset.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]341,[System.Int32]304))
$ADUserPassReset.Name = [System.String]'ADUserPassReset'
$ADUserPassReset.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$ADUserPassReset.TabIndex = [System.Int32]4
$ADUserPassReset.Text = [System.String]'Active Directory User Password Reset'
$ADUserPassReset.UseVisualStyleBackColor = $true
$ADUserPassReset.add_Click($ADUserPassReset_Click)
#
#ADBulkUserCreate
#
$ADBulkUserCreate.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]341,[System.Int32]179))
$ADBulkUserCreate.Name = [System.String]'ADBulkUserCreate'
$ADBulkUserCreate.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$ADBulkUserCreate.TabIndex = [System.Int32]5
$ADBulkUserCreate.Text = [System.String]'Active Directory Bulk User Creation Through CSV'
$ADBulkUserCreate.UseVisualStyleBackColor = $true
$ADBulkUserCreate.add_Click($ADBulkUserCreate_Click)
#
#label1
#
$label1.AutoSize = $true
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]19))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]564,[System.Int32]13))
$label1.TabIndex = [System.Int32]6
$label1.Text = [System.String]'This is the menu for Active Directory, these are the most of the common tools for managing an Active Directory Domain'
#
#Back
#
$Back.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]25,[System.Int32]410))
$Back.Name = [System.String]'Back'
$Back.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$Back.TabIndex = [System.Int32]7
$Back.Text = [System.String]'Back'
$Back.UseVisualStyleBackColor = $true
$Back.add_Click({ADMenuBack})
#
#ActiveDirectoryMenu
#
$ActiveDirectoryMenu.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$ActiveDirectoryMenu.Controls.Add($Back)
$ActiveDirectoryMenu.Controls.Add($label1)
$ActiveDirectoryMenu.Controls.Add($ADBulkUserCreate)
$ActiveDirectoryMenu.Controls.Add($ADUserPassReset)
$ActiveDirectoryMenu.Controls.Add($ADUserDelete)
$ActiveDirectoryMenu.Controls.Add($ADUserCreate)
$ActiveDirectoryMenu.Controls.Add($ADDomainCreate)
$ActiveDirectoryMenu.Controls.Add($ADInstall)
$ActiveDirectoryMenu.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$ActiveDirectoryMenu.Name = [System.String]'ActiveDirectoryMenu'
$ActiveDirectoryMenu.Text = [System.String]'Active Directory Menu - Aurora Automations'
$ActiveDirectoryMenu.ResumeLayout($false)
$ActiveDirectoryMenu.PerformLayout()
Add-Member -InputObject $ActiveDirectoryMenu -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $ActiveDirectoryMenu -Name ADInstall -Value $ADInstall -MemberType NoteProperty
Add-Member -InputObject $ActiveDirectoryMenu -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $ActiveDirectoryMenu -Name ADDomainCreate -Value $ADDomainCreate -MemberType NoteProperty
Add-Member -InputObject $ActiveDirectoryMenu -Name Back -Value $Back -MemberType NoteProperty
Add-Member -InputObject $ActiveDirectoryMenu -Name ADUserCreate -Value $ADUserCreate -MemberType NoteProperty
Add-Member -InputObject $ActiveDirectoryMenu -Name ADUserDelete -Value $ADUserDelete -MemberType NoteProperty
Add-Member -InputObject $ActiveDirectoryMenu -Name ADUserPassReset -Value $ADUserPassReset -MemberType NoteProperty
Add-Member -InputObject $ActiveDirectoryMenu -Name ADBulkUserCreate -Value $ADBulkUserCreate -MemberType NoteProperty
Add-Member -InputObject $ActiveDirectoryMenu -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
