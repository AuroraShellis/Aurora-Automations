[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$DiagListADPCs = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$DiagListPCBack = $null
[System.Windows.Forms.Button]$DiagListPCSubmit = $null
[System.Windows.Forms.RichTextBox]$DiagListPCOutput = $null
[System.Windows.Forms.Label]$DiagListPCLabel1 = $null
[System.Windows.Forms.Label]$DiagListPCLabel2 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'DiagListADPCs.resources.ps1')
$DiagListPCBack = (New-Object -TypeName System.Windows.Forms.Button)
$DiagListPCSubmit = (New-Object -TypeName System.Windows.Forms.Button)
$DiagListPCOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$DiagListPCLabel1 = (New-Object -TypeName System.Windows.Forms.Label)
$DiagListPCLabel2 = (New-Object -TypeName System.Windows.Forms.Label)
$DiagListADPCs.SuspendLayout()
#
#DiagListPCBack
#
$DiagListPCBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]28,[System.Int32]397))
$DiagListPCBack.Name = [System.String]'DiagListPCBack'
$DiagListPCBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$DiagListPCBack.TabIndex = [System.Int32]0
$DiagListPCBack.Text = [System.String]'Back'
$DiagListPCBack.UseVisualStyleBackColor = $true
$DiagListPCBack.add_Click({BackMachineListDiagnostics})
#
#DiagListPCSubmit
#
$DiagListPCSubmit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]488,[System.Int32]397))
$DiagListPCSubmit.Name = [System.String]'DiagListPCSubmit'
$DiagListPCSubmit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$DiagListPCSubmit.TabIndex = [System.Int32]1
$DiagListPCSubmit.Text = [System.String]'Refresh'
$DiagListPCSubmit.UseVisualStyleBackColor = $true
$DiagListPCSubmit.add_Click({RefreshMachinesDiagnosticsList})
#
#DiagListPCOutput
#
$DiagListPCOutput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]25,[System.Int32]69))
$DiagListPCOutput.Name = [System.String]'DiagListPCOutput'
$DiagListPCOutput.ReadOnly = $true
$DiagListPCOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]538,[System.Int32]307))
$DiagListPCOutput.TabIndex = [System.Int32]2
$DiagListPCOutput.Text = [System.String]''
#
#DiagListPCLabel1
#
$DiagListPCLabel1.AutoSize = $true
$DiagListPCLabel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]25,[System.Int32]24))
$DiagListPCLabel1.Name = [System.String]'DiagListPCLabel1'
$DiagListPCLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]331,[System.Int32]13))
$DiagListPCLabel1.TabIndex = [System.Int32]3
$DiagListPCLabel1.Text = [System.String]'This will list the computers connected to this Active Directory Domain'
#
#DiagListPCLabel2
#
$DiagListPCLabel2.AutoSize = $true
$DiagListPCLabel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]25,[System.Int32]53))
$DiagListPCLabel2.Name = [System.String]'DiagListPCLabel2'
$DiagListPCLabel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]13))
$DiagListPCLabel2.TabIndex = [System.Int32]4
$DiagListPCLabel2.Text = [System.String]'Output:'
#
#DiagListADPCs
#
$DiagListADPCs.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$DiagListADPCs.Controls.Add($DiagListPCLabel2)
$DiagListADPCs.Controls.Add($DiagListPCLabel1)
$DiagListADPCs.Controls.Add($DiagListPCOutput)
$DiagListADPCs.Controls.Add($DiagListPCSubmit)
$DiagListADPCs.Controls.Add($DiagListPCBack)
$DiagListADPCs.MaximizeBox = $false
$DiagListADPCs.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$DiagListADPCs.StartPosition = [System.Windows.Forms.FormStartPosition]::Manual
$DiagListADPCs.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$DiagListADPCs.Name = [System.String]'DiagListADPCs'
$DiagListADPCs.Text = [System.String]'Check Machines Connected to Active Directory - Aurora Automations'
$DiagListADPCs.ResumeLayout($false)
$DiagListADPCs.PerformLayout()
Add-Member -InputObject $DiagListADPCs -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $DiagListADPCs -Name DiagListPCBack -Value $DiagListPCBack -MemberType NoteProperty
Add-Member -InputObject $DiagListADPCs -Name DiagListPCSubmit -Value $DiagListPCSubmit -MemberType NoteProperty
Add-Member -InputObject $DiagListADPCs -Name DiagListPCOutput -Value $DiagListPCOutput -MemberType NoteProperty
Add-Member -InputObject $DiagListADPCs -Name DiagListPCLabel1 -Value $DiagListPCLabel1 -MemberType NoteProperty
Add-Member -InputObject $DiagListADPCs -Name DiagListPCLabel2 -Value $DiagListPCLabel2 -MemberType NoteProperty
Add-Member -InputObject $DiagListADPCs -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
