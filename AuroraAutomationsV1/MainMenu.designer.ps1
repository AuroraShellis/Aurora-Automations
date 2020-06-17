[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$MainMenu = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.Label]$label5 = $null
[System.Windows.Forms.Label]$label6 = $null
[System.Windows.Forms.Button]$OpenAD = $null
[System.Windows.Forms.Button]$OpenMgmt = $null
[System.Windows.Forms.Button]$OpenDiag = $null
[System.Windows.Forms.PictureBox]$ADPictureBox = $null
[System.Windows.Forms.PictureBox]$MgmtPictureBox = $null
[System.Windows.Forms.PictureBox]$DiagPictureBox = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'MainMenu.resources.ps1')
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$label3 = (New-Object -TypeName System.Windows.Forms.Label)
$OpenAD = (New-Object -TypeName System.Windows.Forms.Button)
$OpenMgmt = (New-Object -TypeName System.Windows.Forms.Button)
$OpenDiag = (New-Object -TypeName System.Windows.Forms.Button)
$ADPictureBox = (New-Object -TypeName System.Windows.Forms.PictureBox)
$MgmtPictureBox = (New-Object -TypeName System.Windows.Forms.PictureBox)
$DiagPictureBox = (New-Object -TypeName System.Windows.Forms.PictureBox)
$label4 = (New-Object -TypeName System.Windows.Forms.Label)
$label5 = (New-Object -TypeName System.Windows.Forms.Label)
$label6 = (New-Object -TypeName System.Windows.Forms.Label)
([System.ComponentModel.ISupportInitialize]$ADPictureBox).BeginInit()
([System.ComponentModel.ISupportInitialize]$MgmtPictureBox).BeginInit()
([System.ComponentModel.ISupportInitialize]$DiagPictureBox).BeginInit()
$MainMenu.SuspendLayout()
#
#label1
#
$label1.AutoSize = $true
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]29,[System.Int32]12))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]117,[System.Int32]13))
$label1.TabIndex = [System.Int32]0
$label1.Text = [System.String]'Active Directory Scripts'
#
#label2
#
$label2.AutoSize = $true
$label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]253,[System.Int32]12))
$label2.Name = [System.String]'label2'
$label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]13))
$label2.TabIndex = [System.Int32]1
$label2.Text = [System.String]'Management Scripts'
#
#label3
#
$label3.AutoSize = $true
$label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]464,[System.Int32]12))
$label3.Name = [System.String]'label3'
$label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]92,[System.Int32]13))
$label3.TabIndex = [System.Int32]2
$label3.Text = [System.String]'Diagnostic Scripts'
#
#OpenAD
#
$OpenAD.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]47,[System.Int32]385))
$OpenAD.Name = [System.String]'OpenAD'
$OpenAD.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$OpenAD.TabIndex = [System.Int32]3
$OpenAD.Text = [System.String]'Open'
$OpenAD.UseVisualStyleBackColor = $true
#
#OpenMgmt
#
$OpenMgmt.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]256,[System.Int32]385))
$OpenMgmt.Name = [System.String]'OpenMgmt'
$OpenMgmt.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$OpenMgmt.TabIndex = [System.Int32]4
$OpenMgmt.Text = [System.String]'Open'
$OpenMgmt.UseVisualStyleBackColor = $true
#
#OpenDiag
#
$OpenDiag.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]481,[System.Int32]385))
$OpenDiag.Name = [System.String]'OpenDiag'
$OpenDiag.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$OpenDiag.TabIndex = [System.Int32]5
$OpenDiag.Text = [System.String]'Open'
$OpenDiag.UseVisualStyleBackColor = $true
#
#ADPictureBox
#
$ADPictureBox.Image = ([System.Drawing.Image]$resources.'ADPictureBox.Image')
$ADPictureBox.ImageLocation = [System.String]''
$ADPictureBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]52))
$ADPictureBox.Name = [System.String]'ADPictureBox'
$ADPictureBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]180,[System.Int32]300))
$ADPictureBox.TabIndex = [System.Int32]6
$ADPictureBox.TabStop = $false
#
#MgmtPictureBox
#
$MgmtPictureBox.Image = ([System.Drawing.Image]$resources.'MgmtPictureBox.Image')
$MgmtPictureBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]224,[System.Int32]52))
$MgmtPictureBox.Name = [System.String]'MgmtPictureBox'
$MgmtPictureBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]180,[System.Int32]300))
$MgmtPictureBox.TabIndex = [System.Int32]7
$MgmtPictureBox.TabStop = $false
#
#DiagPictureBox
#
$DiagPictureBox.Image = ([System.Drawing.Image]$resources.'DiagPictureBox.Image')
$DiagPictureBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]434,[System.Int32]52))
$DiagPictureBox.Name = [System.String]'DiagPictureBox'
$DiagPictureBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]180,[System.Int32]300))
$DiagPictureBox.TabIndex = [System.Int32]8
$DiagPictureBox.TabStop = $false
#
#label4
#
$label4.AutoSize = $true
$label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]13,[System.Int32]359))
$label4.Name = [System.String]'label4'
$label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]28,[System.Int32]13))
$label4.TabIndex = [System.Int32]9
$label4.Text = [System.String]'APA'
#
#label5
#
$label5.AutoSize = $true
$label5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]221,[System.Int32]359))
$label5.Name = [System.String]'label5'
$label5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]28,[System.Int32]13))
$label5.TabIndex = [System.Int32]10
$label5.Text = [System.String]'APA'
#
#label6
#
$label6.AutoSize = $true
$label6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]431,[System.Int32]359))
$label6.Name = [System.String]'label6'
$label6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]28,[System.Int32]13))
$label6.TabIndex = [System.Int32]11
$label6.Text = [System.String]'APA'
#
#MainMenu
#
$MainMenu.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$MainMenu.Controls.Add($label6)
$MainMenu.Controls.Add($label5)
$MainMenu.Controls.Add($label4)
$MainMenu.Controls.Add($DiagPictureBox)
$MainMenu.Controls.Add($MgmtPictureBox)
$MainMenu.Controls.Add($ADPictureBox)
$MainMenu.Controls.Add($OpenDiag)
$MainMenu.Controls.Add($OpenMgmt)
$MainMenu.Controls.Add($OpenAD)
$MainMenu.Controls.Add($label3)
$MainMenu.Controls.Add($label2)
$MainMenu.Controls.Add($label1)
$MainMenu.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$MainMenu.Name = [System.String]'MainMenu'
$MainMenu.Text = [System.String]'Main Menu - Aurora Automations'
([System.ComponentModel.ISupportInitialize]$ADPictureBox).EndInit()
([System.ComponentModel.ISupportInitialize]$MgmtPictureBox).EndInit()
([System.ComponentModel.ISupportInitialize]$DiagPictureBox).EndInit()
$MainMenu.ResumeLayout($false)
$MainMenu.PerformLayout()
Add-Member -InputObject $MainMenu -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name label5 -Value $label5 -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name label6 -Value $label6 -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name OpenAD -Value $OpenAD -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name OpenMgmt -Value $OpenMgmt -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name OpenDiag -Value $OpenDiag -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name ADPictureBox -Value $ADPictureBox -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name MgmtPictureBox -Value $MgmtPictureBox -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name DiagPictureBox -Value $DiagPictureBox -MemberType NoteProperty
Add-Member -InputObject $MainMenu -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
