[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$MainMenu = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$OpenAD = $null
[System.Windows.Forms.Button]$OpenMgmt = $null
[System.Windows.Forms.Button]$OpenDiag = $null
[System.Windows.Forms.PictureBox]$ADPictureBox = $null
[System.Windows.Forms.PictureBox]$MgmtPictureBox = $null
[System.Windows.Forms.PictureBox]$DiagPictureBox = $null
[System.Windows.Forms.Label]$ActiveDirectoryLabel = $null
[System.Windows.Forms.Label]$ManagementLabel = $null
[System.Windows.Forms.Label]$DiagnosticMenuLabel = $null
[System.Windows.Forms.Label]$ActiveDirectoryManagementOpen = $null
[System.Windows.Forms.Label]$ManagementOpenLabel = $null
[System.Windows.Forms.Label]$DiagnosticLabelOpen = $null
[System.Windows.Forms.Button]$Credits = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'MainMenu.resources.ps1')
$ActiveDirectoryLabel = (New-Object -TypeName System.Windows.Forms.Label)
$ManagementLabel = (New-Object -TypeName System.Windows.Forms.Label)
$DiagnosticMenuLabel = (New-Object -TypeName System.Windows.Forms.Label)
$OpenAD = (New-Object -TypeName System.Windows.Forms.Button)
$OpenMgmt = (New-Object -TypeName System.Windows.Forms.Button)
$OpenDiag = (New-Object -TypeName System.Windows.Forms.Button)
$ADPictureBox = (New-Object -TypeName System.Windows.Forms.PictureBox)
$MgmtPictureBox = (New-Object -TypeName System.Windows.Forms.PictureBox)
$DiagPictureBox = (New-Object -TypeName System.Windows.Forms.PictureBox)
$ActiveDirectoryManagementOpen = (New-Object -TypeName System.Windows.Forms.Label)
$ManagementOpenLabel = (New-Object -TypeName System.Windows.Forms.Label)
$DiagnosticLabelOpen = (New-Object -TypeName System.Windows.Forms.Label)
$Credits = (New-Object -TypeName System.Windows.Forms.Button)
([System.ComponentModel.ISupportInitialize]$ADPictureBox).BeginInit()
([System.ComponentModel.ISupportInitialize]$MgmtPictureBox).BeginInit()
([System.ComponentModel.ISupportInitialize]$DiagPictureBox).BeginInit()
$MainMenu.SuspendLayout()
#
#ActiveDirectoryLabel
#
$ActiveDirectoryLabel.AutoSize = $true
$ActiveDirectoryLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]36))
$ActiveDirectoryLabel.Name = [System.String]'ActiveDirectoryLabel'
$ActiveDirectoryLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]117,[System.Int32]13))
$ActiveDirectoryLabel.TabIndex = [System.Int32]0
$ActiveDirectoryLabel.Text = [System.String]'Active Directory Scripts'
#
#ManagementLabel
#
$ManagementLabel.AutoSize = $true
$ManagementLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]267,[System.Int32]36))
$ManagementLabel.Name = [System.String]'ManagementLabel'
$ManagementLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]13))
$ManagementLabel.TabIndex = [System.Int32]1
$ManagementLabel.Text = [System.String]'Management Scripts'
#
#DiagnosticMenuLabel
#
$DiagnosticMenuLabel.AutoSize = $true
$DiagnosticMenuLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]481,[System.Int32]36))
$DiagnosticMenuLabel.Name = [System.String]'DiagnosticMenuLabel'
$DiagnosticMenuLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]92,[System.Int32]13))
$DiagnosticMenuLabel.TabIndex = [System.Int32]2
$DiagnosticMenuLabel.Text = [System.String]'Diagnostic Scripts'
#
#OpenAD
#
$OpenAD.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]67,[System.Int32]358))
$OpenAD.Name = [System.String]'OpenAD'
$OpenAD.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$OpenAD.TabIndex = [System.Int32]3
$OpenAD.Text = [System.String]'Open'
$OpenAD.UseVisualStyleBackColor = $true
$OpenAD.add_Click({ADMenu})
#
#OpenMgmt
#
$OpenMgmt.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]278,[System.Int32]358))
$OpenMgmt.Name = [System.String]'OpenMgmt'
$OpenMgmt.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$OpenMgmt.TabIndex = [System.Int32]4
$OpenMgmt.Text = [System.String]'Open'
$OpenMgmt.UseVisualStyleBackColor = $true
$OpenMgmt.add_Click({ManagementMenu})
#
#OpenDiag
#
$OpenDiag.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]488,[System.Int32]358))
$OpenDiag.Name = [System.String]'OpenDiag'
$OpenDiag.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$OpenDiag.TabIndex = [System.Int32]5
$OpenDiag.Text = [System.String]'Open'
$OpenDiag.UseVisualStyleBackColor = $true
$OpenDiag.add_Click({DiagnosticsMenu})
#
#ADPictureBox
#
$ADPictureBox.Cursor = [System.Windows.Forms.Cursors]::Hand
$ADPictureBox.Image = ([System.Drawing.Image]$resources.'ADPictureBox.Image')
$ADPictureBox.ImageLocation = [System.String]''
$ADPictureBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]52))
$ADPictureBox.Name = [System.String]'ADPictureBox'
$ADPictureBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]180,[System.Int32]300))
$ADPictureBox.TabIndex = [System.Int32]6
$ADPictureBox.TabStop = $false
$ADPictureBox.add_Click({ADMenu})
#
#MgmtPictureBox
#
$MgmtPictureBox.Cursor = [System.Windows.Forms.Cursors]::Hand
$MgmtPictureBox.Image = ([System.Drawing.Image]$resources.'MgmtPictureBox.Image')
$MgmtPictureBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]224,[System.Int32]52))
$MgmtPictureBox.Name = [System.String]'MgmtPictureBox'
$MgmtPictureBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]180,[System.Int32]300))
$MgmtPictureBox.TabIndex = [System.Int32]7
$MgmtPictureBox.TabStop = $false
$MgmtPictureBox.add_Click({ManagementMenu})
#
#DiagPictureBox
#
$DiagPictureBox.Cursor = [System.Windows.Forms.Cursors]::Hand
$DiagPictureBox.Image = ([System.Drawing.Image]$resources.'DiagPictureBox.Image')
$DiagPictureBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]434,[System.Int32]52))
$DiagPictureBox.Name = [System.String]'DiagPictureBox'
$DiagPictureBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]180,[System.Int32]300))
$DiagPictureBox.TabIndex = [System.Int32]8
$DiagPictureBox.TabStop = $false
$DiagPictureBox.add_Click({DiagnosticsMenu})
#
#ActiveDirectoryManagementOpen
#
$ActiveDirectoryManagementOpen.AutoSize = $true
$ActiveDirectoryManagementOpen.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]147,[System.Int32]358))
$ActiveDirectoryManagementOpen.Name = [System.String]'ActiveDirectoryManagementOpen'
$ActiveDirectoryManagementOpen.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]45,[System.Int32]13))
$ActiveDirectoryManagementOpen.TabIndex = [System.Int32]9
$ActiveDirectoryManagementOpen.Text = [System.String]'Figure 1'
#
#ManagementOpenLabel
#
$ManagementOpenLabel.AutoSize = $true
$ManagementOpenLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]359,[System.Int32]358))
$ManagementOpenLabel.Name = [System.String]'ManagementOpenLabel'
$ManagementOpenLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]45,[System.Int32]13))
$ManagementOpenLabel.TabIndex = [System.Int32]10
$ManagementOpenLabel.Text = [System.String]'Figure 2'
#
#DiagnosticLabelOpen
#
$DiagnosticLabelOpen.AutoSize = $true
$DiagnosticLabelOpen.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]569,[System.Int32]358))
$DiagnosticLabelOpen.Name = [System.String]'DiagnosticLabelOpen'
$DiagnosticLabelOpen.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]45,[System.Int32]13))
$DiagnosticLabelOpen.TabIndex = [System.Int32]11
$DiagnosticLabelOpen.Text = [System.String]'Figure 3'
#
#Credits
#
$Credits.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]278,[System.Int32]406))
$Credits.Name = [System.String]'Credits'
$Credits.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$Credits.TabIndex = [System.Int32]12
$Credits.Text = [System.String]'Credits'
$Credits.UseVisualStyleBackColor = $true
$Credits.add_Click({CreditsMenu})
#
#MainMenu
#
$MainMenu.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$MainMenu.Controls.Add($Credits)
$MainMenu.Controls.Add($DiagnosticLabelOpen)
$MainMenu.Controls.Add($ManagementOpenLabel)
$MainMenu.Controls.Add($ActiveDirectoryManagementOpen)
$MainMenu.Controls.Add($DiagPictureBox)
$MainMenu.Controls.Add($MgmtPictureBox)
$MainMenu.Controls.Add($ADPictureBox)
$MainMenu.Controls.Add($OpenDiag)
$MainMenu.Controls.Add($OpenMgmt)
$MainMenu.Controls.Add($OpenAD)
$MainMenu.Controls.Add($DiagnosticMenuLabel)
$MainMenu.Controls.Add($ManagementLabel)
$MainMenu.Controls.Add($ActiveDirectoryLabel)
$MainMenu.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$MainMenu.Name = [System.String]'MainMenu'
$MainMenu.Text = [System.String]'Main Menu - Aurora Automations'
([System.ComponentModel.ISupportInitialize]$ADPictureBox).EndInit()
([System.ComponentModel.ISupportInitialize]$MgmtPictureBox).EndInit()
([System.ComponentModel.ISupportInitialize]$DiagPictureBox).EndInit()
$MainMenu.ResumeLayout($false)
$MainMenu.PerformLayout()
Add-Member -InputObject $MainMenu -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name OpenAD -Value $OpenAD -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name OpenMgmt -Value $OpenMgmt -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name OpenDiag -Value $OpenDiag -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name ADPictureBox -Value $ADPictureBox -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name MgmtPictureBox -Value $MgmtPictureBox -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name DiagPictureBox -Value $DiagPictureBox -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name ActiveDirectoryLabel -Value $ActiveDirectoryLabel -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name ManagementLabel -Value $ManagementLabel -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name DiagnosticMenuLabel -Value $DiagnosticMenuLabel -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name ActiveDirectoryManagementOpen -Value $ActiveDirectoryManagementOpen -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name ManagementOpenLabel -Value $ManagementOpenLabel -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name DiagnosticLabelOpen -Value $DiagnosticLabelOpen -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name Credits -Value $Credits -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
