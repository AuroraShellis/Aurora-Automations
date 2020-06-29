[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$ADOUM = New-Object -TypeName System.Windows.Forms.Form
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
[System.Windows.Forms.Button]$OUQueryButton = $null
[System.Windows.Forms.Label]$QueryOULabel = $null
[System.Windows.Forms.TextBox]$QueryOUTextBox = $null
[System.Windows.Forms.Button]$OUCNUsersQueryButton = $null
[System.Windows.Forms.Label]$MoveOULabelOU = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'ADOUM.resources.ps1')
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
$OUQueryButton = (New-Object -TypeName System.Windows.Forms.Button)
$QueryOUTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$QueryOULabel = (New-Object -TypeName System.Windows.Forms.Label)
$OUCNUsersQueryButton = (New-Object -TypeName System.Windows.Forms.Button)
$ADOUM.SuspendLayout()
#
#OUBackButton
#
$OUBackButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]356))
$OUBackButton.Name = [System.String]'OUBackButton'
$OUBackButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$OUBackButton.TabIndex = [System.Int32]0
$OUBackButton.Text = [System.String]'Back'
$OUBackButton.UseVisualStyleBackColor = $true
$OUBackButton.add_Click({ADOUM.Back})
#
#OUCreateButton
#
$OUCreateButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]527,[System.Int32]105))
$OUCreateButton.Name = [System.String]'OUCreateButton'
$OUCreateButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$OUCreateButton.TabIndex = [System.Int32]1
$OUCreateButton.Text = [System.String]'Create'
$OUCreateButton.UseVisualStyleBackColor = $true
$OUCreateButton.add_Click({ADOUMCreation})
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
$OUOutput.ReadOnly = $true
$OUOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]295,[System.Int32]255))
$OUOutput.TabIndex = [System.Int32]3
$OUOutput.Text = [System.String]''
#
#OUCreateLabel
#
$OUCreateLabel.AutoSize = $true
$OUCreateLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]352,[System.Int32]62))
$OUCreateLabel.Name = [System.String]'OUCreateLabel'
$OUCreateLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]60,[System.Int32]13))
$OUCreateLabel.TabIndex = [System.Int32]4
$OUCreateLabel.Text = [System.String]'Create OU:'
#
#OUCreateBox
#
$OUCreateBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]355,[System.Int32]79))
$OUCreateBox.Name = [System.String]'OUCreateBox'
$OUCreateBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]247,[System.Int32]20))
$OUCreateBox.TabIndex = [System.Int32]5
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
$DeleteOULabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]352,[System.Int32]168))
$DeleteOULabel.Name = [System.String]'DeleteOULabel'
$DeleteOULabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]167,[System.Int32]13))
$DeleteOULabel.TabIndex = [System.Int32]7
$DeleteOULabel.Text = [System.String]'Delete OU (And All Child Objects):'
#
#DeleteOUButton
#
$DeleteOUButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]527,[System.Int32]211))
$DeleteOUButton.Name = [System.String]'DeleteOUButton'
$DeleteOUButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$DeleteOUButton.TabIndex = [System.Int32]6
$DeleteOUButton.Text = [System.String]'Delete'
$DeleteOUButton.UseVisualStyleBackColor = $true
$DeleteOUButton.add_Click({ADOUMDeletion})
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
$MoveOULabelUser.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]84,[System.Int32]13))
$MoveOULabelUser.TabIndex = [System.Int32]10
$MoveOULabelUser.Text = [System.String]'SAM Username:'
#
#MoveOUButton
#
$MoveOUButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]527,[System.Int32]311))
$MoveOUButton.Name = [System.String]'MoveOUButton'
$MoveOUButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$MoveOUButton.TabIndex = [System.Int32]9
$MoveOUButton.Text = [System.String]'Move'
$MoveOUButton.UseVisualStyleBackColor = $true
$MoveOUButton.add_Click({ADOUMoveUser})
#
#OULabelOut
#
$OULabelOut.AutoSize = $true
$OULabelOut.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]63))
$OULabelOut.Name = [System.String]'OULabelOut'
$OULabelOut.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]13))
$OULabelOut.TabIndex = [System.Int32]12
$OULabelOut.Text = [System.String]'Output:'
#
#CheckOUButton
#
$CheckOUButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]121,[System.Int32]356))
$CheckOUButton.Name = [System.String]'CheckOUButton'
$CheckOUButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]214,[System.Int32]23))
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
$MoveOUUserTo.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]472,[System.Int32]288))
$MoveOUUserTo.Name = [System.String]'MoveOUUserTo'
$MoveOUUserTo.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]22,[System.Int32]13))
$MoveOUUserTo.TabIndex = [System.Int32]15
$MoveOUUserTo.Text = [System.String]'TO'
#
#MoveOULabelOU
#
$MoveOULabelOU.AutoSize = $true
$MoveOULabelOU.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]494,[System.Int32]269))
$MoveOULabelOU.Name = [System.String]'MoveOULabelOU'
$MoveOULabelOU.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]60,[System.Int32]13))
$MoveOULabelOU.TabIndex = [System.Int32]16
$MoveOULabelOU.Text = [System.String]'Target OU:'
#
#OUQueryButton
#
$OUQueryButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]529,[System.Int32]385))
$OUQueryButton.Name = [System.String]'OUQueryButton'
$OUQueryButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]34))
$OUQueryButton.TabIndex = [System.Int32]17
$OUQueryButton.Text = [System.String]'Query OU'
$OUQueryButton.UseVisualStyleBackColor = $true
$OUQueryButton.add_Click({OUUserQuery})
#
#QueryOUTextBox
#
$QueryOUTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]355,[System.Int32]359))
$QueryOUTextBox.Name = [System.String]'QueryOUTextBox'
$QueryOUTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]247,[System.Int32]20))
$QueryOUTextBox.TabIndex = [System.Int32]18
#
#QueryOULabel
#
$QueryOULabel.AutoSize = $true
$QueryOULabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]355,[System.Int32]340))
$QueryOULabel.Name = [System.String]'QueryOULabel'
$QueryOULabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]102,[System.Int32]13))
$QueryOULabel.TabIndex = [System.Int32]19
$QueryOULabel.Text = [System.String]'Query OU for Users:'
#
#OUCNUsersQueryButton
#
$OUCNUsersQueryButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]355,[System.Int32]385))
$OUCNUsersQueryButton.Name = [System.String]'OUCNUsersQueryButton'
$OUCNUsersQueryButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]102,[System.Int32]34))
$OUCNUsersQueryButton.TabIndex = [System.Int32]20
$OUCNUsersQueryButton.Text = [System.String]'Query Default Users Container'
$OUCNUsersQueryButton.UseVisualStyleBackColor = $true
$OUCNUsersQueryButton.add_Click({ADOUMFormUsersCNQuery})
#
#ADOUM
#
$ADOUM.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$ADOUM.Controls.Add($OUCNUsersQueryButton)
$ADOUM.Controls.Add($QueryOULabel)
$ADOUM.Controls.Add($QueryOUTextBox)
$ADOUM.Controls.Add($OUQueryButton)
$ADOUM.Controls.Add($MoveOULabelOU)
$ADOUM.Controls.Add($MoveOUUserTo)
$ADOUM.Controls.Add($MoveOUUserTextBox)
$ADOUM.Controls.Add($CheckOUButton)
$ADOUM.Controls.Add($OULabelOut)
$ADOUM.Controls.Add($MoveOUOUTextBox)
$ADOUM.Controls.Add($MoveOULabelUser)
$ADOUM.Controls.Add($MoveOUButton)
$ADOUM.Controls.Add($DeleteOUBox)
$ADOUM.Controls.Add($DeleteOULabel)
$ADOUM.Controls.Add($DeleteOUButton)
$ADOUM.Controls.Add($OUCreateBox)
$ADOUM.Controls.Add($OUCreateLabel)
$ADOUM.Controls.Add($OUOutput)
$ADOUM.Controls.Add($OuDesc)
$ADOUM.Controls.Add($OUCreateButton)
$ADOUM.Controls.Add($OUBackButton)
$ADOUM.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$ADOUM.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$ADOUM.MaximizeBox = $false
$ADOUM.Name = [System.String]'ADOUM'
$ADOUM.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$ADOUM.Text = [System.String]'Organizational Unit Management - Aurora Automations'
$ADOUM.ResumeLayout($false)
$ADOUM.PerformLayout()
Add-Member -InputObject $ADOUM -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name OUBackButton -Value $OUBackButton -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name OUCreateButton -Value $OUCreateButton -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name OuDesc -Value $OuDesc -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name OUOutput -Value $OUOutput -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name OUCreateLabel -Value $OUCreateLabel -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name OUCreateBox -Value $OUCreateBox -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name DeleteOUBox -Value $DeleteOUBox -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name DeleteOULabel -Value $DeleteOULabel -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name DeleteOUButton -Value $DeleteOUButton -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name MoveOUOUTextBox -Value $MoveOUOUTextBox -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name MoveOULabelUser -Value $MoveOULabelUser -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name MoveOUButton -Value $MoveOUButton -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name OULabelOut -Value $OULabelOut -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name CheckOUButton -Value $CheckOUButton -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name MoveOUUserTextBox -Value $MoveOUUserTextBox -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name MoveOUUserTo -Value $MoveOUUserTo -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name OUQueryButton -Value $OUQueryButton -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name QueryOULabel -Value $QueryOULabel -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name QueryOUTextBox -Value $QueryOUTextBox -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name OUCNUsersQueryButton -Value $OUCNUsersQueryButton -MemberType NoteProperty
Add-Member -InputObject $ADOUM -Name MoveOULabelOU -Value $MoveOULabelOU -MemberType NoteProperty
}
. InitializeComponent
