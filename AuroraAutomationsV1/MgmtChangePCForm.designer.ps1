[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$MgmtChangePCForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$MgmtChangePCBack = $null
[System.Windows.Forms.Button]$MgmtChangePCQuery = $null
[System.Windows.Forms.RichTextBox]$MgmtChangePCOutput = $null
[System.Windows.Forms.Label]$MgmtChangePCLabel1 = $null
[System.Windows.Forms.Label]$MgmtChangePCLabel2 = $null
[System.Windows.Forms.Label]$MgmtChangePCLabel3 = $null
[System.Windows.Forms.TextBox]$MgmtChangePCNameInput = $null
[System.Windows.Forms.Button]$MgmtPCJoinLeaveButton = $null
[System.Windows.Forms.Label]$MgmtChangePCLabel4 = $null
[System.Windows.Forms.TextBox]$MgmtChangeDomainNameInput = $null
[System.Windows.Forms.Label]$MgmtChangePCLabel6 = $null
[System.Windows.Forms.TextBox]$MgmtChangeWorkGroupNameInput = $null
[System.Windows.Forms.Label]$MgmtChangePCLabel7 = $null
[System.Windows.Forms.TextBox]$MgmtChangeDomainUsernameInput = $null
[System.Windows.Forms.Label]$MgmtChangePCLabel8 = $null
[System.Windows.Forms.TextBox]$MgmtChangeDomainPassInput = $null
[System.Windows.Forms.Label]$MgmtChangePCLabel5 = $null
[System.Windows.Forms.CheckBox]$MgmtRestartCheckBox = $null
[System.Windows.Forms.CheckBox]$MgmtRenameCheckBox = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'MgmtChangePCForm.resources.ps1')
$MgmtChangePCBack = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtChangePCQuery = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtChangePCNameInput = (New-Object -TypeName System.Windows.Forms.TextBox)
$MgmtChangePCOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$MgmtChangePCLabel1 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtChangePCLabel2 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtChangePCLabel3 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtPCJoinLeaveButton = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtChangePCLabel4 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtChangeDomainNameInput = (New-Object -TypeName System.Windows.Forms.TextBox)
$MgmtChangePCLabel6 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtChangeWorkGroupNameInput = (New-Object -TypeName System.Windows.Forms.TextBox)
$MgmtChangePCLabel7 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtChangeDomainUsernameInput = (New-Object -TypeName System.Windows.Forms.TextBox)
$MgmtChangePCLabel8 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtChangeDomainPassInput = (New-Object -TypeName System.Windows.Forms.TextBox)
$MgmtRestartCheckBox = (New-Object -TypeName System.Windows.Forms.CheckBox)
$MgmtChangePCLabel5 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtRenameCheckBox = (New-Object -TypeName System.Windows.Forms.CheckBox)
$MgmtChangePCForm.SuspendLayout()
#
#MgmtChangePCBack
#
$MgmtChangePCBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]23,[System.Int32]389))
$MgmtChangePCBack.Name = [System.String]'MgmtChangePCBack'
$MgmtChangePCBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$MgmtChangePCBack.TabIndex = [System.Int32]0
$MgmtChangePCBack.Text = [System.String]'Back'
$MgmtChangePCBack.UseVisualStyleBackColor = $true
$MgmtChangePCBack.add_Click({ChangeComputerDomainBack})
#
#MgmtChangePCQuery
#
$MgmtChangePCQuery.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]199,[System.Int32]389))
$MgmtChangePCQuery.Name = [System.String]'MgmtChangePCQuery'
$MgmtChangePCQuery.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]146,[System.Int32]23))
$MgmtChangePCQuery.TabIndex = [System.Int32]1
$MgmtChangePCQuery.Text = [System.String]'Query Computer Name'
$MgmtChangePCQuery.UseVisualStyleBackColor = $true
$MgmtChangePCQuery.Add_Click({QueryComouterListJoinDomainForm})
#
#MgmtChangePCNameInput
#
$MgmtChangePCNameInput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]367,[System.Int32]87))
$MgmtChangePCNameInput.Name = [System.String]'MgmtChangePCNameInput'
$MgmtChangePCNameInput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]240,[System.Int32]20))
$MgmtChangePCNameInput.TabIndex = [System.Int32]3
#
#MgmtChangePCOutput
#
$MgmtChangePCOutput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]23,[System.Int32]69))
$MgmtChangePCOutput.Name = [System.String]'MgmtChangePCOutput'
$MgmtChangePCOutput.ReadOnly = $true
$MgmtChangePCOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]322,[System.Int32]305))
$MgmtChangePCOutput.TabIndex = [System.Int32]6
$MgmtChangePCOutput.Text = [System.String]''
#
#MgmtChangePCLabel1
#
$MgmtChangePCLabel1.AutoSize = $true
$MgmtChangePCLabel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]20,[System.Int32]18))
$MgmtChangePCLabel1.Name = [System.String]'MgmtChangePCLabel1'
$MgmtChangePCLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]488,[System.Int32]13))
$MgmtChangePCLabel1.TabIndex = [System.Int32]7
$MgmtChangePCLabel1.Text = [System.String]'This will aid with the changing of computer names and joining/leaving domains of the current machine.'
#
#MgmtChangePCLabel2
#
$MgmtChangePCLabel2.AutoSize = $true
$MgmtChangePCLabel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]20,[System.Int32]51))
$MgmtChangePCLabel2.Name = [System.String]'MgmtChangePCLabel2'
$MgmtChangePCLabel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]13))
$MgmtChangePCLabel2.TabIndex = [System.Int32]8
$MgmtChangePCLabel2.Text = [System.String]'Output:'
#
#MgmtChangePCLabel3
#
$MgmtChangePCLabel3.AutoSize = $true
$MgmtChangePCLabel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]364,[System.Int32]69))
$MgmtChangePCLabel3.Name = [System.String]'MgmtChangePCLabel3'
$MgmtChangePCLabel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]111,[System.Int32]13))
$MgmtChangePCLabel3.TabIndex = [System.Int32]9
$MgmtChangePCLabel3.Text = [System.String]'New Computer Name:'
#
#MgmtPCJoinLeaveButton
#
$MgmtPCJoinLeaveButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]368,[System.Int32]351))
$MgmtPCJoinLeaveButton.Name = [System.String]'MgmtPCJoinLeaveButton'
$MgmtPCJoinLeaveButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]240,[System.Int32]23))
$MgmtPCJoinLeaveButton.TabIndex = [System.Int32]10
$MgmtPCJoinLeaveButton.Text = [System.String]'Submit'
$MgmtPCJoinLeaveButton.UseVisualStyleBackColor = $true
$MgmtPCJoinLeaveButton.Add_Click({DomainChangeSubmitFunction})
#
#MgmtChangePCLabel4
#
$MgmtChangePCLabel4.AutoSize = $true
$MgmtChangePCLabel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]364,[System.Int32]148))
$MgmtChangePCLabel4.Name = [System.String]'MgmtChangePCLabel4'
$MgmtChangePCLabel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]80,[System.Int32]13))
$MgmtChangePCLabel4.TabIndex = [System.Int32]12
$MgmtChangePCLabel4.Text = [System.String]'Domain to Join:'
#
#MgmtChangeDomainNameInput
#
$MgmtChangeDomainNameInput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]367,[System.Int32]164))
$MgmtChangeDomainNameInput.Name = [System.String]'MgmtChangeDomainNameInput'
$MgmtChangeDomainNameInput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]108,[System.Int32]20))
$MgmtChangeDomainNameInput.TabIndex = [System.Int32]11
$MgmtChangeDomainNameInput.Add_TextChanged({UserLockTextBoxes})
#
#MgmtChangePCLabel6
#
$MgmtChangePCLabel6.AutoSize = $true
$MgmtChangePCLabel6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]496,[System.Int32]148))
$MgmtChangePCLabel6.Name = [System.String]'MgmtChangePCLabel6'
$MgmtChangePCLabel6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]97,[System.Int32]13))
$MgmtChangePCLabel6.TabIndex = [System.Int32]14
$MgmtChangePCLabel6.Text = [System.String]'Workgroup to Join:'
#
#MgmtChangeWorkGroupNameInput
#
$MgmtChangeWorkGroupNameInput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]499,[System.Int32]164))
$MgmtChangeWorkGroupNameInput.Name = [System.String]'MgmtChangeWorkGroupNameInput'
$MgmtChangeWorkGroupNameInput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]108,[System.Int32]20))
$MgmtChangeWorkGroupNameInput.TabIndex = [System.Int32]13
$MgmtChangeWorkGroupNameInput.Add_TextChanged({UserLockTextBoxes})
#
#MgmtChangePCLabel7
#
$MgmtChangePCLabel7.AutoSize = $true
$MgmtChangePCLabel7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]364,[System.Int32]217))
$MgmtChangePCLabel7.Name = [System.String]'MgmtChangePCLabel7'
$MgmtChangePCLabel7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]129,[System.Int32]13))
$MgmtChangePCLabel7.TabIndex = [System.Int32]16
$MgmtChangePCLabel7.Text = [System.String]'Admin Username:'
#
#MgmtChangeDomainUsernameInput
#
$MgmtChangeDomainUsernameInput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]366,[System.Int32]233))
$MgmtChangeDomainUsernameInput.Name = [System.String]'MgmtChangeDomainUsernameInput'
$MgmtChangeDomainUsernameInput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]240,[System.Int32]20))
$MgmtChangeDomainUsernameInput.TabIndex = [System.Int32]15
#
#MgmtChangePCLabel8
#
$MgmtChangePCLabel8.AutoSize = $true
$MgmtChangePCLabel8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]364,[System.Int32]268))
$MgmtChangePCLabel8.Name = [System.String]'MgmtChangePCLabel8'
$MgmtChangePCLabel8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]130,[System.Int32]13))
$MgmtChangePCLabel8.TabIndex = [System.Int32]18
$MgmtChangePCLabel8.Text = [System.String]'Admin Password: '
#
#MgmtChangeDomainPassInput
#
$MgmtChangeDomainPassInput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]368,[System.Int32]284))
$MgmtChangeDomainPassInput.Name = [System.String]'MgmtChangeDomainPassInput'
$MgmtChangeDomainPassInput.PasswordChar = [System.Char]'*'
$MgmtChangeDomainPassInput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]240,[System.Int32]20))
$MgmtChangeDomainPassInput.TabIndex = [System.Int32]17
#
#MgmtRestartCheckBox
#
$MgmtRestartCheckBox.AutoSize = $true
$MgmtRestartCheckBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]368,[System.Int32]314))
$MgmtRestartCheckBox.Name = [System.String]'MgmtRestartCheckBox'
$MgmtRestartCheckBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]124,[System.Int32]17))
$MgmtRestartCheckBox.TabIndex = [System.Int32]19
$MgmtRestartCheckBox.Text = [System.String]'Restart Immediately?'
$MgmtRestartCheckBox.UseVisualStyleBackColor = $true
#
#MgmtChangePCLabel5
#
$MgmtChangePCLabel5.AutoSize = $true
$MgmtChangePCLabel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]475,[System.Int32]167))
$MgmtChangePCLabel5.Name = [System.String]'MgmtChangePCLabel5'
$MgmtChangePCLabel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]23,[System.Int32]13))
$MgmtChangePCLabel5.TabIndex = [System.Int32]22
$MgmtChangePCLabel5.Text = [System.String]'OR'
#
#MgmtRenameCheckBox
#
$MgmtRenameCheckBox.AutoSize = $true
$MgmtRenameCheckBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]367,[System.Int32]113))
$MgmtRenameCheckBox.Name = [System.String]'MgmtRenameCheckBox'
$MgmtRenameCheckBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]96,[System.Int32]17))
$MgmtRenameCheckBox.TabIndex = [System.Int32]23
$MgmtRenameCheckBox.Text = [System.String]'Rename Only?'
$MgmtRenameCheckBox.UseVisualStyleBackColor = $true
$MgmtRenameCheckBox.add_CheckedChanged({RenamePcOnlyLockBoxes})
#
#MgmtChangePCForm
#
$MgmtChangePCForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$MgmtChangePCForm.Controls.Add($MgmtRenameCheckBox)
$MgmtChangePCForm.Controls.Add($MgmtChangePCLabel5)
$MgmtChangePCForm.Controls.Add($MgmtRestartCheckBox)
$MgmtChangePCForm.Controls.Add($MgmtChangePCLabel8)
$MgmtChangePCForm.Controls.Add($MgmtChangeDomainPassInput)
$MgmtChangePCForm.Controls.Add($MgmtChangePCLabel7)
$MgmtChangePCForm.Controls.Add($MgmtChangeDomainUsernameInput)
$MgmtChangePCForm.Controls.Add($MgmtChangePCLabel6)
$MgmtChangePCForm.Controls.Add($MgmtChangeWorkGroupNameInput)
$MgmtChangePCForm.Controls.Add($MgmtChangePCLabel4)
$MgmtChangePCForm.Controls.Add($MgmtChangeDomainNameInput)
$MgmtChangePCForm.Controls.Add($MgmtPCJoinLeaveButton)
$MgmtChangePCForm.Controls.Add($MgmtChangePCLabel3)
$MgmtChangePCForm.Controls.Add($MgmtChangePCLabel2)
$MgmtChangePCForm.Controls.Add($MgmtChangePCLabel1)
$MgmtChangePCForm.Controls.Add($MgmtChangePCOutput)
$MgmtChangePCForm.Controls.Add($MgmtChangePCNameInput)
$MgmtChangePCForm.Controls.Add($MgmtChangePCQuery)
$MgmtChangePCForm.Controls.Add($MgmtChangePCBack)
$MgmtChangePCForm.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$MgmtChangePCForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$MgmtChangePCForm.MaximizeBox = $false
$MgmtChangePCForm.Name = [System.String]'MgmtChangePCForm'
$MgmtChangePCForm.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$MgmtChangePCForm.Text = [System.String]'Change Computer Name and Domain/Workgroup settings - Aurora Automations'
$MgmtChangePCForm.add_Load($MgmtChangePCForm_Load)
$MgmtChangePCForm.ResumeLayout($false)
$MgmtChangePCForm.PerformLayout()
Add-Member -InputObject $MgmtChangePCForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCBack -Value $MgmtChangePCBack -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCQuery -Value $MgmtChangePCQuery -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCOutput -Value $MgmtChangePCOutput -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCLabel1 -Value $MgmtChangePCLabel1 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCLabel2 -Value $MgmtChangePCLabel2 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCLabel3 -Value $MgmtChangePCLabel3 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCNameInput -Value $MgmtChangePCNameInput -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtPCJoinLeaveButton -Value $MgmtPCJoinLeaveButton -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCLabel4 -Value $MgmtChangePCLabel4 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangeDomainNameInput -Value $MgmtChangeDomainNameInput -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCLabel6 -Value $MgmtChangePCLabel6 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangeWorkGroupNameInput -Value $MgmtChangeWorkGroupNameInput -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCLabel7 -Value $MgmtChangePCLabel7 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangeDomainUsernameInput -Value $MgmtChangeDomainUsernameInput -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCLabel8 -Value $MgmtChangePCLabel8 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangeDomainPassInput -Value $MgmtChangeDomainPassInput -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCLabel5 -Value $MgmtChangePCLabel5 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtRestartCheckBox -Value $MgmtRestartCheckBox -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtRenameCheckBox -Value $MgmtRenameCheckBox -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
