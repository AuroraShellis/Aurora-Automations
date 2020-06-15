[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$DiagCheckOS = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$DiagRemoteOSBack = $null
[System.Windows.Forms.Button]$DiagRemoteOSSubmit = $null
[System.Windows.Forms.Button]$DiagRemoteOSLocal = $null
[System.Windows.Forms.TextBox]$DiagRemoteOSInput = $null
[System.Windows.Forms.RichTextBox]$DiagRemoteOSOutput = $null
[System.Windows.Forms.Label]$DiagRemoteOSLabel1 = $null
[System.Windows.Forms.Label]$DiagRemoteOSLabel2 = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'DiagCheckOS.resources.ps1')
$DiagRemoteOSBack = (New-Object -TypeName System.Windows.Forms.Button)
$DiagRemoteOSSubmit = (New-Object -TypeName System.Windows.Forms.Button)
$DiagRemoteOSLocal = (New-Object -TypeName System.Windows.Forms.Button)
$DiagRemoteOSInput = (New-Object -TypeName System.Windows.Forms.TextBox)
$DiagRemoteOSOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$DiagRemoteOSLabel1 = (New-Object -TypeName System.Windows.Forms.Label)
$DiagRemoteOSLabel2 = (New-Object -TypeName System.Windows.Forms.Label)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$DiagCheckOS.SuspendLayout()
#
#DiagRemoteOSBack
#
$DiagRemoteOSBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]35,[System.Int32]388))
$DiagRemoteOSBack.Name = [System.String]'DiagRemoteOSBack'
$DiagRemoteOSBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$DiagRemoteOSBack.TabIndex = [System.Int32]0
$DiagRemoteOSBack.Text = [System.String]'Back'
$DiagRemoteOSBack.UseVisualStyleBackColor = $true
$DiagRemoteOSBack.add_Click({CheckOSBack})
#
#DiagRemoteOSSubmit
#
$DiagRemoteOSSubmit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]417,[System.Int32]108))
$DiagRemoteOSSubmit.Name = [System.String]'DiagRemoteOSSubmit'
$DiagRemoteOSSubmit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]23))
$DiagRemoteOSSubmit.TabIndex = [System.Int32]1
$DiagRemoteOSSubmit.Text = [System.String]'Check'
$DiagRemoteOSSubmit.UseVisualStyleBackColor = $true
$DiagRemoteOSSubmit.add_Click({RemoteQueryOSArchitecture})
#
#DiagRemoteOSLocal
#
$DiagRemoteOSLocal.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]417,[System.Int32]171))
$DiagRemoteOSLocal.Name = [System.String]'DiagRemoteOSLocal'
$DiagRemoteOSLocal.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]23))
$DiagRemoteOSLocal.TabIndex = [System.Int32]2
$DiagRemoteOSLocal.Text = [System.String]'Refresh'
$DiagRemoteOSLocal.UseVisualStyleBackColor = $true
$DiagRemoteOSLocal.add_Click({RefreshCheckLocalMachinesOS})
#
#DiagRemoteOSInput
#
$DiagRemoteOSInput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]417,[System.Int32]80))
$DiagRemoteOSInput.Name = [System.String]'DiagRemoteOSInput'
$DiagRemoteOSInput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]195,[System.Int32]20))
$DiagRemoteOSInput.TabIndex = [System.Int32]3
#
#DiagRemoteOSOutput
#
$DiagRemoteOSOutput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]35,[System.Int32]80))
$DiagRemoteOSOutput.Name = [System.String]'DiagRemoteOSOutput'
$DiagRemoteOSOutput.ReadOnly = $true
$DiagRemoteOSOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]366,[System.Int32]302))
$DiagRemoteOSOutput.TabIndex = [System.Int32]4
$DiagRemoteOSOutput.Text = [System.String]''
#
#DiagRemoteOSLabel1
#
$DiagRemoteOSLabel1.AutoSize = $true
$DiagRemoteOSLabel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]32,[System.Int32]26))
$DiagRemoteOSLabel1.Name = [System.String]'DiagRemoteOSLabel1'
$DiagRemoteOSLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]369,[System.Int32]13))
$DiagRemoteOSLabel1.TabIndex = [System.Int32]5
$DiagRemoteOSLabel1.Text = [System.String]'This will check the operating system of remote computers and local computer'
#
#DiagRemoteOSLabel2
#
$DiagRemoteOSLabel2.AutoSize = $true
$DiagRemoteOSLabel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]32,[System.Int32]55))
$DiagRemoteOSLabel2.Name = [System.String]'DiagRemoteOSLabel2'
$DiagRemoteOSLabel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]13))
$DiagRemoteOSLabel2.TabIndex = [System.Int32]6
$DiagRemoteOSLabel2.Text = [System.String]'Output:'
#
#label1
#
$label1.AutoSize = $true
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]414,[System.Int32]64))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]181,[System.Int32]13))
$label1.TabIndex = [System.Int32]7
$label1.Text = [System.String]'Insert FQDN of the remote computer:'
#
#DiagCheckOS
#
$DiagCheckOS.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$DiagCheckOS.Controls.Add($label1)
$DiagCheckOS.Controls.Add($DiagRemoteOSLabel2)
$DiagCheckOS.Controls.Add($DiagRemoteOSLabel1)
$DiagCheckOS.Controls.Add($DiagRemoteOSOutput)
$DiagCheckOS.Controls.Add($DiagRemoteOSInput)
$DiagCheckOS.Controls.Add($DiagRemoteOSLocal)
$DiagCheckOS.Controls.Add($DiagRemoteOSSubmit)
$DiagCheckOS.Controls.Add($DiagRemoteOSBack)
$DiagCheckOS.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$DiagCheckOS.Name = [System.String]'DiagCheckOS'
$DiagCheckOS.Text = [System.String]'Check Remote Operating System Architecture - Aurora Automations'
$DiagCheckOS.ResumeLayout($false)
$DiagCheckOS.PerformLayout()
Add-Member -InputObject $DiagCheckOS -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $DiagCheckOS -Name DiagRemoteOSBack -Value $DiagRemoteOSBack -MemberType NoteProperty
Add-Member -InputObject $DiagCheckOS -Name DiagRemoteOSSubmit -Value $DiagRemoteOSSubmit -MemberType NoteProperty
Add-Member -InputObject $DiagCheckOS -Name DiagRemoteOSLocal -Value $DiagRemoteOSLocal -MemberType NoteProperty
Add-Member -InputObject $DiagCheckOS -Name DiagRemoteOSInput -Value $DiagRemoteOSInput -MemberType NoteProperty
Add-Member -InputObject $DiagCheckOS -Name DiagRemoteOSOutput -Value $DiagRemoteOSOutput -MemberType NoteProperty
Add-Member -InputObject $DiagCheckOS -Name DiagRemoteOSLabel1 -Value $DiagRemoteOSLabel1 -MemberType NoteProperty
Add-Member -InputObject $DiagCheckOS -Name DiagRemoteOSLabel2 -Value $DiagRemoteOSLabel2 -MemberType NoteProperty
Add-Member -InputObject $DiagCheckOS -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $DiagCheckOS -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
