[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$ADConfig = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$ADConfigBack = $null
[System.Windows.Forms.Button]$ADConfigSubmit = $null
[System.Windows.Forms.Label]$ADConfigLabel = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'ADConfig.resources.ps1')
$ADConfigBack = (New-Object -TypeName System.Windows.Forms.Button)
$ADConfigSubmit = (New-Object -TypeName System.Windows.Forms.Button)
$ADConfigLabel = (New-Object -TypeName System.Windows.Forms.Label)
$ADConfig.SuspendLayout()
#
#ADConfigBack
#
$ADConfigBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]43,[System.Int32]363))
$ADConfigBack.Name = [System.String]'ADConfigBack'
$ADConfigBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$ADConfigBack.TabIndex = [System.Int32]0
$ADConfigBack.Text = [System.String]'Back'
$ADConfigBack.UseVisualStyleBackColor = $true
#
#ADConfigSubmit
#
$ADConfigSubmit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]151,[System.Int32]363))
$ADConfigSubmit.Name = [System.String]'ADConfigSubmit'
$ADConfigSubmit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$ADConfigSubmit.TabIndex = [System.Int32]1
$ADConfigSubmit.Text = [System.String]'Submit'
$ADConfigSubmit.UseVisualStyleBackColor = $true
#
#ADConfigLabel
#
$ADConfigLabel.AutoSize = $true
$ADConfigLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]43,[System.Int32]22))
$ADConfigLabel.Name = [System.String]'ADConfigLabel'
$ADConfigLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]261,[System.Int32]13))
$ADConfigLabel.TabIndex = [System.Int32]2
$ADConfigLabel.Text = [System.String]'This will configure Active Directory Domain and Forest'
#
#ADConfig
#
$ADConfig.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$ADConfig.Controls.Add($ADConfigLabel)
$ADConfig.Controls.Add($ADConfigSubmit)
$ADConfig.Controls.Add($ADConfigBack)
$ADConfig.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$ADConfig.Name = [System.String]'ADConfig'
$ADConfig.Text = [System.String]'Active Directory Domain and Forest Configuration - Aurora Automations'
$ADConfig.ResumeLayout($false)
$ADConfig.PerformLayout()
Add-Member -InputObject $ADConfig -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $ADConfig -Name ADConfigBack -Value $ADConfigBack -MemberType NoteProperty
Add-Member -InputObject $ADConfig -Name ADConfigSubmit -Value $ADConfigSubmit -MemberType NoteProperty
Add-Member -InputObject $ADConfig -Name ADConfigLabel -Value $ADConfigLabel -MemberType NoteProperty
Add-Member -InputObject $ADConfig -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
