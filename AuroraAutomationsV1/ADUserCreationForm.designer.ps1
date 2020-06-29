[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$ADUserCreationForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.TextBox]$FirstNameTxtBox = $null
[System.Windows.Forms.TextBox]$LastNameTxtBox = $null
[System.Windows.Forms.Button]$BackButton = $null
[System.Windows.Forms.Button]$SubmitButton = $null
[System.Windows.Forms.RichTextBox]$OutputTxtBox = $null
[System.Windows.Forms.Label]$ADUseCreationrLabel1 = $null
[System.Windows.Forms.Label]$ADUseCreationrLabel2 = $null
[System.Windows.Forms.Label]$ADUseCreationrLabel3 = $null
[System.Windows.Forms.Label]$ADUseCreationrLabel5 = $null
[System.Windows.Forms.Label]$ADUseCreationrLabel4 = $null
[System.Windows.Forms.CheckBox]$ADUseCreationOUCheckBox = $null
[System.Windows.Forms.TextBox]$ADUserCreationOUInput = $null
[System.Windows.Forms.Button]$ADUserCreationListOUs = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'ADUserCreationForm.resources.ps1')
$ADUseCreationrLabel1 = (New-Object -TypeName System.Windows.Forms.Label)
$ADUseCreationrLabel2 = (New-Object -TypeName System.Windows.Forms.Label)
$ADUseCreationrLabel3 = (New-Object -TypeName System.Windows.Forms.Label)
$FirstNameTxtBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$LastNameTxtBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$OutputTxtBox = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$BackButton = (New-Object -TypeName System.Windows.Forms.Button)
$SubmitButton = (New-Object -TypeName System.Windows.Forms.Button)
$ADUseCreationrLabel5 = (New-Object -TypeName System.Windows.Forms.Label)
$ADUserCreationOUInput = (New-Object -TypeName System.Windows.Forms.TextBox)
$ADUseCreationrLabel4 = (New-Object -TypeName System.Windows.Forms.Label)
$ADUseCreationOUCheckBox = (New-Object -TypeName System.Windows.Forms.CheckBox)
$ADUserCreationListOUs = (New-Object -TypeName System.Windows.Forms.Button)
$ADUserCreationForm.SuspendLayout()
#
#ADUseCreationrLabel1
#
$ADUseCreationrLabel1.AutoSize = $true
$ADUseCreationrLabel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]36,[System.Int32]26))
$ADUseCreationrLabel1.Name = [System.String]'ADUseCreationrLabel1'
$ADUseCreationrLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]149,[System.Int32]13))
$ADUseCreationrLabel1.TabIndex = [System.Int32]0
$ADUseCreationrLabel1.Text = [System.String]'Active Directory User Creation'
#
#ADUseCreationrLabel2
#
$ADUseCreationrLabel2.AutoSize = $true
$ADUseCreationrLabel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]36,[System.Int32]64))
$ADUseCreationrLabel2.Name = [System.String]'ADUseCreationrLabel2'
$ADUseCreationrLabel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]60,[System.Int32]13))
$ADUseCreationrLabel2.TabIndex = [System.Int32]1
$ADUseCreationrLabel2.Text = [System.String]'First Name:'
#
#ADUseCreationrLabel3
#
$ADUseCreationrLabel3.AutoSize = $true
$ADUseCreationrLabel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]36,[System.Int32]96))
$ADUseCreationrLabel3.Name = [System.String]'ADUseCreationrLabel3'
$ADUseCreationrLabel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]61,[System.Int32]13))
$ADUseCreationrLabel3.TabIndex = [System.Int32]2
$ADUseCreationrLabel3.Text = [System.String]'Last Name:'
#
#FirstNameTxtBox
#
$FirstNameTxtBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]103,[System.Int32]57))
$FirstNameTxtBox.Name = [System.String]'FirstNameTxtBox'
$FirstNameTxtBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]381,[System.Int32]20))
$FirstNameTxtBox.TabIndex = [System.Int32]3
$FirstNameTxtBox.add_TextChanged($FirstNameTxtBox_TextChanged)
#
#LastNameTxtBox
#
$LastNameTxtBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]103,[System.Int32]93))
$LastNameTxtBox.Name = [System.String]'LastNameTxtBox'
$LastNameTxtBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]381,[System.Int32]20))
$LastNameTxtBox.TabIndex = [System.Int32]4
$LastNameTxtBox.add_TextChanged($LastNameTxtBox_TextChanged)
#
#OutputTxtBox
#
$OutputTxtBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]39,[System.Int32]212))
$OutputTxtBox.Name = [System.String]'OutputTxtBox'
$OutputTxtBox.ReadOnly = $true
$OutputTxtBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]445,[System.Int32]144))
$OutputTxtBox.TabIndex = [System.Int32]5
$OutputTxtBox.Text = [System.String]''
#
#BackButton
#
$BackButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]39,[System.Int32]379))
$BackButton.Name = [System.String]'BackButton'
$BackButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$BackButton.TabIndex = [System.Int32]6
$BackButton.Text = [System.String]'Back'
$BackButton.UseVisualStyleBackColor = $true
$BackButton.add_Click({Individual.User.Back})
#
#SubmitButton
#
$SubmitButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]409,[System.Int32]379))
$SubmitButton.Name = [System.String]'SubmitButton'
$SubmitButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$SubmitButton.TabIndex = [System.Int32]7
$SubmitButton.Text = [System.String]'Submit'
$SubmitButton.UseVisualStyleBackColor = $true
$SubmitButton.add_Click({Individual.User.Submit})
#
#ADUseCreationrLabel5
#
$ADUseCreationrLabel5.AutoSize = $true
$ADUseCreationrLabel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]39,[System.Int32]193))
$ADUseCreationrLabel5.Name = [System.String]'ADUseCreationrLabel5'
$ADUseCreationrLabel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]13))
$ADUseCreationrLabel5.TabIndex = [System.Int32]8
$ADUseCreationrLabel5.Text = [System.String]'Output:'
$ADUseCreationrLabel5.add_Click($label4_Click)
#
#ADUserCreationOUInput
#
$ADUserCreationOUInput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]103,[System.Int32]128))
$ADUserCreationOUInput.Name = [System.String]'ADUserCreationOUInput'
$ADUserCreationOUInput.ReadOnly = $true
$ADUserCreationOUInput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]381,[System.Int32]20))
$ADUserCreationOUInput.TabIndex = [System.Int32]10
#
#ADUseCreationrLabel4
#
$ADUseCreationrLabel4.AutoSize = $true
$ADUseCreationrLabel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]36,[System.Int32]131))
$ADUseCreationrLabel4.Name = [System.String]'ADUseCreationrLabel4'
$ADUseCreationrLabel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]26,[System.Int32]13))
$ADUseCreationrLabel4.TabIndex = [System.Int32]9
$ADUseCreationrLabel4.Text = [System.String]'OU:'
#
#ADUseCreationOUCheckBox
#
$ADUseCreationOUCheckBox.AutoSize = $true
$ADUseCreationOUCheckBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]103,[System.Int32]155))
$ADUseCreationOUCheckBox.Name = [System.String]'ADUseCreationOUCheckBox'
$ADUseCreationOUCheckBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]168,[System.Int32]17))
$ADUseCreationOUCheckBox.TabIndex = [System.Int32]11
$ADUseCreationOUCheckBox.Text = [System.String]'Create User in a Specific OU?'
$ADUseCreationOUCheckBox.UseVisualStyleBackColor = $true
$ADUseCreationOUCheckBox.add_CheckedChanged({ADUserCreationLockInputBoxes})
#
#ADUserCreationListOUs
#
$ADUserCreationListOUs.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]385,[System.Int32]155))
$ADUserCreationListOUs.Name = [System.String]'ADUserCreationListOUs'
$ADUserCreationListOUs.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]99,[System.Int32]23))
$ADUserCreationListOUs.TabIndex = [System.Int32]12
$ADUserCreationListOUs.Text = [System.String]'List Current OUs'
$ADUserCreationListOUs.UseVisualStyleBackColor = $true
$ADUserCreationListOUs.add_Click({ADOUGetList})
#
#ADUserCreationForm
#
$ADUserCreationForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$ADUserCreationForm.Controls.Add($ADUserCreationListOUs)
$ADUserCreationForm.Controls.Add($ADUseCreationOUCheckBox)
$ADUserCreationForm.Controls.Add($ADUserCreationOUInput)
$ADUserCreationForm.Controls.Add($ADUseCreationrLabel4)
$ADUserCreationForm.Controls.Add($ADUseCreationrLabel5)
$ADUserCreationForm.Controls.Add($SubmitButton)
$ADUserCreationForm.Controls.Add($BackButton)
$ADUserCreationForm.Controls.Add($OutputTxtBox)
$ADUserCreationForm.Controls.Add($LastNameTxtBox)
$ADUserCreationForm.Controls.Add($FirstNameTxtBox)
$ADUserCreationForm.Controls.Add($ADUseCreationrLabel3)
$ADUserCreationForm.Controls.Add($ADUseCreationrLabel2)
$ADUserCreationForm.Controls.Add($ADUseCreationrLabel1)
$ADUserCreationForm.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$ADUserCreationForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$ADUserCreationForm.MaximizeBox = $false
$ADUserCreationForm.Name = [System.String]'ADUserCreationForm'
$ADUserCreationForm.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$ADUserCreationForm.Text = [System.String]'Active Directory User Creation - Aurora Automation'
$ADUserCreationForm.ResumeLayout($false)
$ADUserCreationForm.PerformLayout()
Add-Member -InputObject $ADUserCreationForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $ADUserCreationForm -Name FirstNameTxtBox -Value $FirstNameTxtBox -MemberType NoteProperty
Add-Member -InputObject $ADUserCreationForm -Name LastNameTxtBox -Value $LastNameTxtBox -MemberType NoteProperty
Add-Member -InputObject $ADUserCreationForm -Name BackButton -Value $BackButton -MemberType NoteProperty
Add-Member -InputObject $ADUserCreationForm -Name SubmitButton -Value $SubmitButton -MemberType NoteProperty
Add-Member -InputObject $ADUserCreationForm -Name OutputTxtBox -Value $OutputTxtBox -MemberType NoteProperty
Add-Member -InputObject $ADUserCreationForm -Name ADUseCreationrLabel1 -Value $ADUseCreationrLabel1 -MemberType NoteProperty
Add-Member -InputObject $ADUserCreationForm -Name ADUseCreationrLabel2 -Value $ADUseCreationrLabel2 -MemberType NoteProperty
Add-Member -InputObject $ADUserCreationForm -Name ADUseCreationrLabel3 -Value $ADUseCreationrLabel3 -MemberType NoteProperty
Add-Member -InputObject $ADUserCreationForm -Name ADUseCreationrLabel5 -Value $ADUseCreationrLabel5 -MemberType NoteProperty
Add-Member -InputObject $ADUserCreationForm -Name ADUseCreationrLabel4 -Value $ADUseCreationrLabel4 -MemberType NoteProperty
Add-Member -InputObject $ADUserCreationForm -Name ADUseCreationOUCheckBox -Value $ADUseCreationOUCheckBox -MemberType NoteProperty
Add-Member -InputObject $ADUserCreationForm -Name ADUserCreationOUInput -Value $ADUserCreationOUInput -MemberType NoteProperty
Add-Member -InputObject $ADUserCreationForm -Name ADUserCreationListOUs -Value $ADUserCreationListOUs -MemberType NoteProperty
Add-Member -InputObject $ADUserCreationForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
