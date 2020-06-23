[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$DiagPortStatus = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$DiagPortStatusBack = $null
[System.Windows.Forms.Button]$DiagPortStatusSubmit = $null
[System.Windows.Forms.RichTextBox]$DiagPortStatusOutput = $null
[System.Windows.Forms.Label]$DiagPortStatusLabel1 = $null
[System.Windows.Forms.Label]$DiagPortStatusLabel2 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'DiagPortStatus.resources.ps1')
$DiagPortStatusBack = (New-Object -TypeName System.Windows.Forms.Button)
$DiagPortStatusSubmit = (New-Object -TypeName System.Windows.Forms.Button)
$DiagPortStatusOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$DiagPortStatusLabel1 = (New-Object -TypeName System.Windows.Forms.Label)
$DiagPortStatusLabel2 = (New-Object -TypeName System.Windows.Forms.Label)
$DiagPortStatus.SuspendLayout()
#
#DiagPortStatusBack
#
$DiagPortStatusBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]29,[System.Int32]393))
$DiagPortStatusBack.Name = [System.String]'DiagPortStatusBack'
$DiagPortStatusBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$DiagPortStatusBack.TabIndex = [System.Int32]0
$DiagPortStatusBack.Text = [System.String]'Back'
$DiagPortStatusBack.UseVisualStyleBackColor = $true
$DiagPortStatusBack.add_Click({BackPortStatus})
#
#DiagPortStatusSubmit
#
$DiagPortStatusSubmit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]485,[System.Int32]393))
$DiagPortStatusSubmit.Name = [System.String]'DiagPortStatusSubmit'
$DiagPortStatusSubmit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$DiagPortStatusSubmit.TabIndex = [System.Int32]1
$DiagPortStatusSubmit.Text = [System.String]'Refresh'
$DiagPortStatusSubmit.UseVisualStyleBackColor = $true
$DiagPortStatusSubmit.add_Click({RefreshPortStatus})
#
#DiagPortStatusOutput
#
$DiagPortStatusOutput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]32,[System.Int32]65))
$DiagPortStatusOutput.Name = [System.String]'DiagPortStatusOutput'
$DiagPortStatusOutput.ReadOnly = $true
$DiagPortStatusOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]528,[System.Int32]314))
$DiagPortStatusOutput.TabIndex = [System.Int32]2
$DiagPortStatusOutput.Text = [System.String]''
#
#DiagPortStatusLabel1
#
$DiagPortStatusLabel1.AutoSize = $true
$DiagPortStatusLabel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]26,[System.Int32]18))
$DiagPortStatusLabel1.Name = [System.String]'DiagPortStatusLabel1'
$DiagPortStatusLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]240,[System.Int32]13))
$DiagPortStatusLabel1.TabIndex = [System.Int32]3
$DiagPortStatusLabel1.Text = [System.String]'This will list the status of all ports on this computer'
#
#DiagPortStatusLabel2
#
$DiagPortStatusLabel2.AutoSize = $true
$DiagPortStatusLabel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]29,[System.Int32]49))
$DiagPortStatusLabel2.Name = [System.String]'DiagPortStatusLabel2'
$DiagPortStatusLabel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]13))
$DiagPortStatusLabel2.TabIndex = [System.Int32]4
$DiagPortStatusLabel2.Text = [System.String]'Output:'
#
#DiagPortStatus
#
$DiagPortStatus.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$DiagPortStatus.Controls.Add($DiagPortStatusLabel2)
$DiagPortStatus.Controls.Add($DiagPortStatusLabel1)
$DiagPortStatus.Controls.Add($DiagPortStatusOutput)
$DiagPortStatus.Controls.Add($DiagPortStatusSubmit)
$DiagPortStatus.Controls.Add($DiagPortStatusBack)
$DiagPortStatus.MaximizeBox = $false
$DiagPortStatus.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$DiagPortStatus.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$DiagPortStatus.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$DiagPortStatus.Name = [System.String]'DiagPortStatus'
$DiagPortStatus.Text = [System.String]'Check Port Status - Aurora Automations'
$DiagPortStatus.ResumeLayout($false)
$DiagPortStatus.PerformLayout()
Add-Member -InputObject $DiagPortStatus -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $DiagPortStatus -Name DiagPortStatusBack -Value $DiagPortStatusBack -MemberType NoteProperty
Add-Member -InputObject $DiagPortStatus -Name DiagPortStatusSubmit -Value $DiagPortStatusSubmit -MemberType NoteProperty
Add-Member -InputObject $DiagPortStatus -Name DiagPortStatusOutput -Value $DiagPortStatusOutput -MemberType NoteProperty
Add-Member -InputObject $DiagPortStatus -Name DiagPortStatusLabel1 -Value $DiagPortStatusLabel1 -MemberType NoteProperty
Add-Member -InputObject $DiagPortStatus -Name DiagPortStatusLabel2 -Value $DiagPortStatusLabel2 -MemberType NoteProperty
Add-Member -InputObject $DiagPortStatus -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
