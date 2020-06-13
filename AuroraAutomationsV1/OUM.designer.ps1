[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$OUM = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$OUBackButton = $null
[System.Windows.Forms.Button]$OUCreateButton = $null
[System.Windows.Forms.Label]$OuDesc = $null
[System.Windows.Forms.RichTextBox]$OUOutput = $null
[System.Windows.Forms.Label]$OUCreateLabel = $null
[System.Windows.Forms.TextBox]$OUCreateBox = $null
[System.Windows.Forms.TextBox]$DeleteOUBox = $null
[System.Windows.Forms.Label]$DeleteOULabel = $null
[System.Windows.Forms.Button]$DeleteOUButton = $null
[System.Windows.Forms.TextBox]$MoveOUOUTextBox = $null
[System.Windows.Forms.Label]$MoveOULabelUser = $null
[System.Windows.Forms.Button]$MoveOUButton = $null
[System.Windows.Forms.Label]$OULabelOut = $null
[System.Windows.Forms.Button]$CheckOUButton = $null
[System.Windows.Forms.TextBox]$MoveOUUserTextBox = $null
[System.Windows.Forms.Label]$MoveOUUserTo = $null
[System.Windows.Forms.Label]$MoveOULabelOU = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'OUM.resources.ps1')
$OUBackButton = (New-Object -TypeName System.Windows.Forms.Button)
$OUCreateButton = (New-Object -TypeName System.Windows.Forms.Button)
$OuDesc = (New-Object -TypeName System.Windows.Forms.Label)
$OUOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$OUCreateLabel = (New-Object -TypeName System.Windows.Forms.Label)
$OUCreateBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$DeleteOUBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$DeleteOULabel = (New-Object -TypeName System.Windows.Forms.Label)
$DeleteOUButton = (New-Object -TypeName System.Windows.Forms.Button)
$MoveOUOUTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$MoveOULabelUser = (New-Object -TypeName System.Windows.Forms.Label)
$MoveOUButton = (New-Object -TypeName System.Windows.Forms.Button)
$OULabelOut = (New-Object -TypeName System.Windows.Forms.Label)
$CheckOUButton = (New-Object -TypeName System.Windows.Forms.Button)
$MoveOUUserTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$MoveOUUserTo = (New-Object -TypeName System.Windows.Forms.Label)
$MoveOULabelOU = (New-Object -TypeName System.Windows.Forms.Label)
$OUM.SuspendLayout()
#
#OUBackButton
#
$OUBackButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]356))
$OUBackButton.Name = [System.String]'OUBackButton'
$OUBackButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$OUBackButton.TabIndex = [System.Int32]0
$OUBackButton.Text = [System.String]'Back'
$OUBackButton.UseVisualStyleBackColor = $true
#
#OUCreateButton
#
$OUCreateButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]527,[System.Int32]105))
$OUCreateButton.Name = [System.String]'OUCreateButton'
$OUCreateButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$OUCreateButton.TabIndex = [System.Int32]1
$OUCreateButton.Text = [System.String]'Create'
$OUCreateButton.UseVisualStyleBackColor = $true
#
#OuDesc
#
$OuDesc.AutoSize = $true
$OuDesc.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]13,[System.Int32]13))
$OuDesc.Name = [System.String]'OuDesc'
$OuDesc.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]210,[System.Int32]13))
$OuDesc.TabIndex = [System.Int32]2
$OuDesc.Text = [System.String]'These features deal with OU Management.'
#
#OUOutput
#
$OUOutput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]79))
$OUOutput.Name = [System.String]'OUOutput'
$OUOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]295,[System.Int32]255))
$OUOutput.TabIndex = [System.Int32]3
$OUOutput.Text = [System.String]''
$OUOutput.add_TextChanged($ADPrereqOutput_TextChanged)
#
#OUCreateLabel
#
$OUCreateLabel.AutoSize = $true
$OUCreateLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]352,[System.Int32]63))
$OUCreateLabel.Name = [System.String]'OUCreateLabel'
$OUCreateLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]57,[System.Int32]13))
$OUCreateLabel.TabIndex = [System.Int32]4
$OUCreateLabel.Text = [System.String]'Create OU'
$OUCreateLabel.add_Click($label1_Click)
#
#OUCreateBox
#
$OUCreateBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]355,[System.Int32]79))
$OUCreateBox.Name = [System.String]'OUCreateBox'
$OUCreateBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]247,[System.Int32]20))
$OUCreateBox.TabIndex = [System.Int32]5
$OUCreateBox.add_TextChanged($OUCreateBox_TextChanged)
#
#DeleteOUBox
#
$DeleteOUBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]355,[System.Int32]185))
$DeleteOUBox.Name = [System.String]'DeleteOUBox'
$DeleteOUBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]247,[System.Int32]20))
$DeleteOUBox.TabIndex = [System.Int32]8
#
#DeleteOULabel
#
$DeleteOULabel.AutoSize = $true
$DeleteOULabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]352,[System.Int32]160))
$DeleteOULabel.Name = [System.String]'DeleteOULabel'
$DeleteOULabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]57,[System.Int32]13))
$DeleteOULabel.TabIndex = [System.Int32]7
$DeleteOULabel.Text = [System.String]'Delete OU'
$DeleteOULabel.add_Click($label2_Click)
#
#DeleteOUButton
#
$DeleteOUButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]527,[System.Int32]211))
$DeleteOUButton.Name = [System.String]'DeleteOUButton'
$DeleteOUButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$DeleteOUButton.TabIndex = [System.Int32]6
$DeleteOUButton.Text = [System.String]'Delete'
$DeleteOUButton.UseVisualStyleBackColor = $true
$DeleteOUButton.add_Click($OUMDeletion)
#
#MoveOUOUTextBox
#
$MoveOUOUTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]497,[System.Int32]285))
$MoveOUOUTextBox.Name = [System.String]'MoveOUOUTextBox'
$MoveOUOUTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]105,[System.Int32]20))
$MoveOUOUTextBox.TabIndex = [System.Int32]11
#
#MoveOULabelUser
#
$MoveOULabelUser.AutoSize = $true
$MoveOULabelUser.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]352,[System.Int32]269))
$MoveOULabelUser.Name = [System.String]'MoveOULabelUser'
$MoveOULabelUser.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]29,[System.Int32]13))
$MoveOULabelUser.TabIndex = [System.Int32]10
$MoveOULabelUser.Text = [System.String]'User'
#
#MoveOUButton
#
$MoveOUButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]527,[System.Int32]311))
$MoveOUButton.Name = [System.String]'MoveOUButton'
$MoveOUButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$MoveOUButton.TabIndex = [System.Int32]9
$MoveOUButton.Text = [System.String]'Move'
$MoveOUButton.UseVisualStyleBackColor = $true
$MoveOUButton.add_Click($MoveOUButton_Click)
#
#OULabelOut
#
$OULabelOut.AutoSize = $true
$OULabelOut.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]63))
$OULabelOut.Name = [System.String]'OULabelOut'
$OULabelOut.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]13))
$OULabelOut.TabIndex = [System.Int32]12
$OULabelOut.Text = [System.String]'Output:'
$OULabelOut.add_Click($label4_Click)
#
#CheckOUButton
#
$CheckOUButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]355,[System.Int32]356))
$CheckOUButton.Name = [System.String]'CheckOUButton'
$CheckOUButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]247,[System.Int32]47))
$CheckOUButton.TabIndex = [System.Int32]13
$CheckOUButton.Text = [System.String]'List Current OUs'
$CheckOUButton.UseVisualStyleBackColor = $true
$CheckOUButton.add_Click({OUGetList})
#
#MoveOUUserTextBox
#
$MoveOUUserTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]355,[System.Int32]285))
$MoveOUUserTextBox.Name = [System.String]'MoveOUUserTextBox'
$MoveOUUserTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]114,[System.Int32]20))
$MoveOUUserTextBox.TabIndex = [System.Int32]14
#
#MoveOUUserTo
#
$MoveOUUserTo.AutoSize = $true
$MoveOUUserTo.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]475,[System.Int32]288))
$MoveOUUserTo.Name = [System.String]'MoveOUUserTo'
$MoveOUUserTo.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]20,[System.Int32]13))
$MoveOUUserTo.TabIndex = [System.Int32]15
$MoveOUUserTo.Text = [System.String]'To'
#
#MoveOULabelOU
#
$MoveOULabelOU.AutoSize = $true
$MoveOULabelOU.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]494,[System.Int32]269))
$MoveOULabelOU.Name = [System.String]'MoveOULabelOU'
$MoveOULabelOU.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]23,[System.Int32]13))
$MoveOULabelOU.TabIndex = [System.Int32]16
$MoveOULabelOU.Text = [System.String]'OU'
#
#OUM
#
$OUM.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$OUM.Controls.Add($MoveOULabelOU)
$OUM.Controls.Add($MoveOUUserTo)
$OUM.Controls.Add($MoveOUUserTextBox)
$OUM.Controls.Add($CheckOUButton)
$OUM.Controls.Add($OULabelOut)
$OUM.Controls.Add($MoveOUOUTextBox)
$OUM.Controls.Add($MoveOULabelUser)
$OUM.Controls.Add($MoveOUButton)
$OUM.Controls.Add($DeleteOUBox)
$OUM.Controls.Add($DeleteOULabel)
$OUM.Controls.Add($DeleteOUButton)
$OUM.Controls.Add($OUCreateBox)
$OUM.Controls.Add($OUCreateLabel)
$OUM.Controls.Add($OUOutput)
$OUM.Controls.Add($OuDesc)
$OUM.Controls.Add($OUCreateButton)
$OUM.Controls.Add($OUBackButton)
$OUM.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$OUM.Name = [System.String]'OUM'
$OUM.Text = [System.String]'Organizational Unit Management - Aurora Automations'
$OUM.ResumeLayout($false)
$OUM.PerformLayout()
Add-Member -InputObject $OUM -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $OUM -Name OUBackButton -Value $OUBackButton -MemberType NoteProperty
Add-Member -InputObject $OUM -Name OUCreateButton -Value $OUCreateButton -MemberType NoteProperty
Add-Member -InputObject $OUM -Name OuDesc -Value $OuDesc -MemberType NoteProperty
Add-Member -InputObject $OUM -Name OUOutput -Value $OUOutput -MemberType NoteProperty
Add-Member -InputObject $OUM -Name OUCreateLabel -Value $OUCreateLabel -MemberType NoteProperty
Add-Member -InputObject $OUM -Name OUCreateBox -Value $OUCreateBox -MemberType NoteProperty
Add-Member -InputObject $OUM -Name DeleteOUBox -Value $DeleteOUBox -MemberType NoteProperty
Add-Member -InputObject $OUM -Name DeleteOULabel -Value $DeleteOULabel -MemberType NoteProperty
Add-Member -InputObject $OUM -Name DeleteOUButton -Value $DeleteOUButton -MemberType NoteProperty
Add-Member -InputObject $OUM -Name MoveOUOUTextBox -Value $MoveOUOUTextBox -MemberType NoteProperty
Add-Member -InputObject $OUM -Name MoveOULabelUser -Value $MoveOULabelUser -MemberType NoteProperty
Add-Member -InputObject $OUM -Name MoveOUButton -Value $MoveOUButton -MemberType NoteProperty
Add-Member -InputObject $OUM -Name OULabelOut -Value $OULabelOut -MemberType NoteProperty
Add-Member -InputObject $OUM -Name CheckOUButton -Value $CheckOUButton -MemberType NoteProperty
Add-Member -InputObject $OUM -Name MoveOUUserTextBox -Value $MoveOUUserTextBox -MemberType NoteProperty
Add-Member -InputObject $OUM -Name MoveOUUserTo -Value $MoveOUUserTo -MemberType NoteProperty
Add-Member -InputObject $OUM -Name MoveOULabelOU -Value $MoveOULabelOU -MemberType NoteProperty
}
. InitializeComponent
