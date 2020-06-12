[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$UserCreationForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.TextBox]$FirstNameTxtBox = $null
[System.Windows.Forms.TextBox]$LastNameTxtBox = $null
[System.Windows.Forms.Button]$BackButton = $null
[System.Windows.Forms.Button]$SubmitButton = $null
[System.Windows.Forms.RichTextBox]$OutputTxtBox = $null
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'UserCreationForm.resources.ps1')
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$label3 = (New-Object -TypeName System.Windows.Forms.Label)
$FirstNameTxtBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$LastNameTxtBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$OutputTxtBox = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$BackButton = (New-Object -TypeName System.Windows.Forms.Button)
$SubmitButton = (New-Object -TypeName System.Windows.Forms.Button)
$label4 = (New-Object -TypeName System.Windows.Forms.Label)
$UserCreationForm.SuspendLayout()
#
#label1
#
$label1.AutoSize = $true
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]36,[System.Int32]26))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]149,[System.Int32]13))
$label1.TabIndex = [System.Int32]0
$label1.Text = [System.String]'Active Directory User Creation'
#
#label2
#
$label2.AutoSize = $true
$label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]36,[System.Int32]64))
$label2.Name = [System.String]'label2'
$label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]60,[System.Int32]13))
$label2.TabIndex = [System.Int32]1
$label2.Text = [System.String]'First Name:'
#
#label3
#
$label3.AutoSize = $true
$label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]36,[System.Int32]96))
$label3.Name = [System.String]'label3'
$label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]61,[System.Int32]13))
$label3.TabIndex = [System.Int32]2
$label3.Text = [System.String]'Last Name:'
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
$OutputTxtBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]39,[System.Int32]148))
$OutputTxtBox.Name = [System.String]'OutputTxtBox'
$OutputTxtBox.ReadOnly = $true
$OutputTxtBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]445,[System.Int32]123))
$OutputTxtBox.TabIndex = [System.Int32]5
$OutputTxtBox.Text = [System.String]''
$OutputTxtBox.add_TextChanged($OutputTxtBox_TextChanged)
#
#BackButton
#
$BackButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]39,[System.Int32]293))
$BackButton.Name = [System.String]'BackButton'
$BackButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$BackButton.TabIndex = [System.Int32]6
$BackButton.Text = [System.String]'Back'
$BackButton.UseVisualStyleBackColor = $true
$BackButton.add_Click($BackButton_Click)
#
#SubmitButton
#
$SubmitButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]148,[System.Int32]293))
$SubmitButton.Name = [System.String]'SubmitButton'
$SubmitButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$SubmitButton.TabIndex = [System.Int32]7
$SubmitButton.Text = [System.String]'Submit'
$SubmitButton.UseVisualStyleBackColor = $true
$SubmitButton.add_Click($SubmitButton_Click)
#
#label4
#
$label4.AutoSize = $true
$label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]39,[System.Int32]129))
$label4.Name = [System.String]'label4'
$label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]13))
$label4.TabIndex = [System.Int32]8
$label4.Text = [System.String]'Output:'
$label4.add_Click($label4_Click)
#
#UserCreationForm
#
$UserCreationForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$UserCreationForm.Controls.Add($label4)
$UserCreationForm.Controls.Add($SubmitButton)
$UserCreationForm.Controls.Add($BackButton)
$UserCreationForm.Controls.Add($OutputTxtBox)
$UserCreationForm.Controls.Add($LastNameTxtBox)
$UserCreationForm.Controls.Add($FirstNameTxtBox)
$UserCreationForm.Controls.Add($label3)
$UserCreationForm.Controls.Add($label2)
$UserCreationForm.Controls.Add($label1)
$UserCreationForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$UserCreationForm.Name = [System.String]'UserCreationForm'
$UserCreationForm.Text = [System.String]'Active Directory User Creation - Aurora Automation'
$UserCreationForm.ResumeLayout($false)
$UserCreationForm.PerformLayout()
Add-Member -InputObject $UserCreationForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $UserCreationForm -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $UserCreationForm -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $UserCreationForm -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $UserCreationForm -Name FirstNameTxtBox -Value $FirstNameTxtBox -MemberType NoteProperty
Add-Member -InputObject $UserCreationForm -Name LastNameTxtBox -Value $LastNameTxtBox -MemberType NoteProperty
Add-Member -InputObject $UserCreationForm -Name BackButton -Value $BackButton -MemberType NoteProperty
Add-Member -InputObject $UserCreationForm -Name SubmitButton -Value $SubmitButton -MemberType NoteProperty
Add-Member -InputObject $UserCreationForm -Name OutputTxtBox -Value $OutputTxtBox -MemberType NoteProperty
Add-Member -InputObject $UserCreationForm -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $UserCreationForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
