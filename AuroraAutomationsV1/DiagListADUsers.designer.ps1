[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$DiagListADUsers = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$DiagListUsersBack = $null
[System.Windows.Forms.Button]$DiagListUsersSubmit = $null
[System.Windows.Forms.RichTextBox]$DiagListUsersOutput = $null
[System.Windows.Forms.Label]$DiagListUsersLabel1 = $null
[System.Windows.Forms.Label]$DiagListUsersLabel2 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'DiagListADUsers.resources.ps1')
$DiagListUsersBack = (New-Object -TypeName System.Windows.Forms.Button)
$DiagListUsersSubmit = (New-Object -TypeName System.Windows.Forms.Button)
$DiagListUsersOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$DiagListUsersLabel1 = (New-Object -TypeName System.Windows.Forms.Label)
$DiagListUsersLabel2 = (New-Object -TypeName System.Windows.Forms.Label)
$DiagListADUsers.SuspendLayout()
#
#DiagListUsersBack
#
$DiagListUsersBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]34,[System.Int32]391))
$DiagListUsersBack.Name = [System.String]'DiagListUsersBack'
$DiagListUsersBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$DiagListUsersBack.TabIndex = [System.Int32]0
$DiagListUsersBack.Text = [System.String]'Back'
$DiagListUsersBack.UseVisualStyleBackColor = $true
$DiagListUsersBack.add_Click({BackCheckALLUsersAD})
#
#DiagListUsersSubmit
#
$DiagListUsersSubmit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]487,[System.Int32]391))
$DiagListUsersSubmit.Name = [System.String]'DiagListUsersSubmit'
$DiagListUsersSubmit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$DiagListUsersSubmit.TabIndex = [System.Int32]1
$DiagListUsersSubmit.Text = [System.String]'Refresh'
$DiagListUsersSubmit.UseVisualStyleBackColor = $true
$DiagListUsersSubmit.add_Click({RefreshUserListAD})
#
#DiagListUsersOutput
#
$DiagListUsersOutput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]34,[System.Int32]77))
$DiagListUsersOutput.Name = [System.String]'DiagListUsersOutput'
$DiagListUsersOutput.ReadOnly = $true
$DiagListUsersOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]528,[System.Int32]295))
$DiagListUsersOutput.TabIndex = [System.Int32]2
$DiagListUsersOutput.Text = [System.String]''
#
#DiagListUsersLabel1
#
$DiagListUsersLabel1.AutoSize = $true
$DiagListUsersLabel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]31,[System.Int32]21))
$DiagListUsersLabel1.Name = [System.String]'DiagListUsersLabel1'
$DiagListUsersLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]266,[System.Int32]13))
$DiagListUsersLabel1.TabIndex = [System.Int32]3
$DiagListUsersLabel1.Text = [System.String]'This will list Users in the whole Active Directory Domain'
#
#DiagListUsersLabel2
#
$DiagListUsersLabel2.AutoSize = $true
$DiagListUsersLabel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]31,[System.Int32]49))
$DiagListUsersLabel2.Name = [System.String]'DiagListUsersLabel2'
$DiagListUsersLabel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]13))
$DiagListUsersLabel2.TabIndex = [System.Int32]4
$DiagListUsersLabel2.Text = [System.String]'Output:'
#
#DiagListADUsers
#
$DiagListADUsers.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$DiagListADUsers.Controls.Add($DiagListUsersLabel2)
$DiagListADUsers.Controls.Add($DiagListUsersLabel1)
$DiagListADUsers.Controls.Add($DiagListUsersOutput)
$DiagListADUsers.Controls.Add($DiagListUsersSubmit)
$DiagListADUsers.Controls.Add($DiagListUsersBack)
$DiagListADUsers.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$DiagListADUsers.Name = [System.String]'DiagListADUsers'
$DiagListADUsers.Text = [System.String]'List Users in Active Directory - Aurora Automations'
$DiagListADUsers.ResumeLayout($false)
$DiagListADUsers.PerformLayout()
Add-Member -InputObject $DiagListADUsers -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $DiagListADUsers -Name DiagListUsersBack -Value $DiagListUsersBack -MemberType NoteProperty
Add-Member -InputObject $DiagListADUsers -Name DiagListUsersSubmit -Value $DiagListUsersSubmit -MemberType NoteProperty
Add-Member -InputObject $DiagListADUsers -Name DiagListUsersOutput -Value $DiagListUsersOutput -MemberType NoteProperty
Add-Member -InputObject $DiagListADUsers -Name DiagListUsersLabel1 -Value $DiagListUsersLabel1 -MemberType NoteProperty
Add-Member -InputObject $DiagListADUsers -Name DiagListUsersLabel2 -Value $DiagListUsersLabel2 -MemberType NoteProperty
Add-Member -InputObject $DiagListADUsers -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
