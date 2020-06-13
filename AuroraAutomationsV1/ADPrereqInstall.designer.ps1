[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$ADPrereqInstall = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$ADPrereqBack = $null
[System.Windows.Forms.Button]$ADPrereqSubmit = $null
[System.Windows.Forms.Label]$ADPrereqLabel = $null
[System.Windows.Forms.RichTextBox]$ADPrereqOutput = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'ADPrereqInstall.resources.ps1')
$ADPrereqBack = (New-Object -TypeName System.Windows.Forms.Button)
$ADPrereqSubmit = (New-Object -TypeName System.Windows.Forms.Button)
$ADPrereqLabel = (New-Object -TypeName System.Windows.Forms.Label)
$ADPrereqOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$ADPrereqInstall.SuspendLayout()
#
#ADPrereqBack
#
$ADPrereqBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]356))
$ADPrereqBack.Name = [System.String]'ADPrereqBack'
$ADPrereqBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$ADPrereqBack.TabIndex = [System.Int32]0
$ADPrereqBack.Text = [System.String]'Back'
$ADPrereqBack.UseVisualStyleBackColor = $true
$ADPrereqBack.add_Click({Prereq.Back})
#
#ADPrereqSubmit
#
$ADPrereqSubmit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]502,[System.Int32]356))
$ADPrereqSubmit.Name = [System.String]'ADPrereqSubmit'
$ADPrereqSubmit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$ADPrereqSubmit.TabIndex = [System.Int32]1
$ADPrereqSubmit.Text = [System.String]'Install'
$ADPrereqSubmit.UseVisualStyleBackColor = $true
$ADPrereqSubmit.add_Click({ADPrereq.Install})
#
#ADPrereqLabel
#
$ADPrereqLabel.AutoSize = $true
$ADPrereqLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]13,[System.Int32]13))
$ADPrereqLabel.Name = [System.String]'ADPrereqLabel'
$ADPrereqLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]392,[System.Int32]13))
$ADPrereqLabel.TabIndex = [System.Int32]2
$ADPrereqLabel.Text = [System.String]'This will install Active Directory Domain Services and Domain Name System Roles'
#
#ADPrereqOutput
#
$ADPrereqOutput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]48))
$ADPrereqOutput.Name = [System.String]'ADPrereqOutput'
$ADPrereqOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]583,[System.Int32]270))
$ADPrereqOutput.TabIndex = [System.Int32]3
$ADPrereqOutput.Text = [System.String]''
$ADPrereqOutput.add_TextChanged($ADPrereqOutput_TextChanged)
#
#ADPrereqInstall
#
$ADPrereqInstall.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$ADPrereqInstall.Controls.Add($ADPrereqOutput)
$ADPrereqInstall.Controls.Add($ADPrereqLabel)
$ADPrereqInstall.Controls.Add($ADPrereqSubmit)
$ADPrereqInstall.Controls.Add($ADPrereqBack)
$ADPrereqInstall.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$ADPrereqInstall.Name = [System.String]'ADPrereqInstall'
$ADPrereqInstall.Text = [System.String]'Active Directory Prerequisite Installation - Aurora Automations'
$ADPrereqInstall.ResumeLayout($false)
$ADPrereqInstall.PerformLayout()
Add-Member -InputObject $ADPrereqInstall -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $ADPrereqInstall -Name ADPrereqBack -Value $ADPrereqBack -MemberType NoteProperty
Add-Member -InputObject $ADPrereqInstall -Name ADPrereqSubmit -Value $ADPrereqSubmit -MemberType NoteProperty
Add-Member -InputObject $ADPrereqInstall -Name ADPrereqLabel -Value $ADPrereqLabel -MemberType NoteProperty
Add-Member -InputObject $ADPrereqInstall -Name ADPrereqOutput -Value $ADPrereqOutput -MemberType NoteProperty
Add-Member -InputObject $ADPrereqInstall -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
