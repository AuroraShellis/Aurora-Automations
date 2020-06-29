[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$ADPasswordReset = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$PassResetBack = $null
[System.Windows.Forms.Button]$PassResetSubmit = $null
[System.Windows.Forms.Label]$PassResetLabel = $null
[System.Windows.Forms.Label]$PassResetLabel2 = $null
[System.Windows.Forms.TextBox]$PassResetUserInput = $null
[System.Windows.Forms.Label]$PassResetLabel3 = $null
[System.Windows.Forms.Label]$PassResetLabel4 = $null
[System.Windows.Forms.Button]$PassResetQueryOU = $null
[System.Windows.Forms.TextBox]$PassResetQueryTextBox = $null
[System.Windows.Forms.Label]$PassResetLabel5 = $null
[System.Windows.Forms.Label]$PassResetLabel6 = $null
[System.Windows.Forms.Button]$PassResetListOU = $null
[System.Windows.Forms.RichTextBox]$ADPasswordOutput = $null
[System.Windows.Forms.MaskedTextBox]$PassResetPassInput = $null
[System.Windows.Forms.MaskedTextBox]$PassResetPassConfirm = $null
[System.Windows.Forms.Button]$PassResetQueryUsersCN = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'ADPasswordReset.resources.ps1')
$PassResetBack = (New-Object -TypeName System.Windows.Forms.Button)
$PassResetSubmit = (New-Object -TypeName System.Windows.Forms.Button)
$PassResetLabel = (New-Object -TypeName System.Windows.Forms.Label)
$PassResetLabel2 = (New-Object -TypeName System.Windows.Forms.Label)
$PassResetUserInput = (New-Object -TypeName System.Windows.Forms.TextBox)
$ADPasswordOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$PassResetLabel3 = (New-Object -TypeName System.Windows.Forms.Label)
$PassResetLabel4 = (New-Object -TypeName System.Windows.Forms.Label)
$PassResetQueryTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$PassResetQueryOU = (New-Object -TypeName System.Windows.Forms.Button)
$PassResetLabel5 = (New-Object -TypeName System.Windows.Forms.Label)
$PassResetLabel6 = (New-Object -TypeName System.Windows.Forms.Label)
$PassResetListOU = (New-Object -TypeName System.Windows.Forms.Button)
$PassResetPassInput = (New-Object -TypeName System.Windows.Forms.MaskedTextBox)
$PassResetPassConfirm = (New-Object -TypeName System.Windows.Forms.MaskedTextBox)
$PassResetQueryUsersCN = (New-Object -TypeName System.Windows.Forms.Button)
$ADPasswordReset.SuspendLayout()
#
#PassResetBack
#
$PassResetBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]30,[System.Int32]376))
$PassResetBack.Name = [System.String]'PassResetBack'
$PassResetBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$PassResetBack.TabIndex = [System.Int32]0
$PassResetBack.Text = [System.String]'Back'
$PassResetBack.UseVisualStyleBackColor = $true
$PassResetBack.add_Click({PasswordResetBack})
#
#PassResetSubmit
#
$PassResetSubmit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]515,[System.Int32]376))
$PassResetSubmit.Name = [System.String]'PassResetSubmit'
$PassResetSubmit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$PassResetSubmit.TabIndex = [System.Int32]1
$PassResetSubmit.Text = [System.String]'Change'
$PassResetSubmit.UseVisualStyleBackColor = $true
$PassResetSubmit.Add_Click({PasswordResetInputs})
#
#PassResetLabel
#
$PassResetLabel.AutoSize = $true
$PassResetLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]27,[System.Int32]23))
$PassResetLabel.Name = [System.String]'PassResetLabel'
$PassResetLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]340,[System.Int32]13))
$PassResetLabel.TabIndex = [System.Int32]2
$PassResetLabel.Text = [System.String]'This will aid in the reseting of Active Directory User account passwords'
#
#PassResetLabel2
#
$PassResetLabel2.AutoSize = $true
$PassResetLabel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]366,[System.Int32]225))
$PassResetLabel2.Name = [System.String]'PassResetLabel2'
$PassResetLabel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]107,[System.Int32]13))
$PassResetLabel2.TabIndex = [System.Int32]3
$PassResetLabel2.Text = [System.String]'SAM Account Name:'
#
#PassResetUserInput
#
$PassResetUserInput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]369,[System.Int32]241))
$PassResetUserInput.Name = [System.String]'PassResetUserInput'
$PassResetUserInput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]221,[System.Int32]20))
$PassResetUserInput.TabIndex = [System.Int32]4
#
#ADPasswordOutput
#
$ADPasswordOutput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]30,[System.Int32]82))
$ADPasswordOutput.Name = [System.String]'ADPasswordOutput'
$ADPasswordOutput.ReadOnly = $true
$ADPasswordOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]298,[System.Int32]280))
$ADPasswordOutput.TabIndex = [System.Int32]5
$ADPasswordOutput.Text = [System.String]''
#
#PassResetLabel3
#
$PassResetLabel3.AutoSize = $true
$PassResetLabel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]27,[System.Int32]55))
$PassResetLabel3.Name = [System.String]'PassResetLabel3'
$PassResetLabel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]13))
$PassResetLabel3.TabIndex = [System.Int32]6
$PassResetLabel3.Text = [System.String]'Output:'
#
#PassResetLabel4
#
$PassResetLabel4.AutoSize = $true
$PassResetLabel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]366,[System.Int32]66))
$PassResetLabel4.Name = [System.String]'PassResetLabel4'
$PassResetLabel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]102,[System.Int32]13))
$PassResetLabel4.TabIndex = [System.Int32]7
$PassResetLabel4.Text = [System.String]'Query OU for Users:'
#
#PassResetQueryTextBox
#
$PassResetQueryTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]369,[System.Int32]82))
$PassResetQueryTextBox.Name = [System.String]'PassResetQueryTextBox'
$PassResetQueryTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]221,[System.Int32]20))
$PassResetQueryTextBox.TabIndex = [System.Int32]8
#
#PassResetQueryOU
#
$PassResetQueryOU.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]369,[System.Int32]109))
$PassResetQueryOU.Name = [System.String]'PassResetQueryOU'
$PassResetQueryOU.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]221,[System.Int32]23))
$PassResetQueryOU.TabIndex = [System.Int32]9
$PassResetQueryOU.Text = [System.String]'Query OU'
$PassResetQueryOU.UseVisualStyleBackColor = $true
$PassResetQueryOU.Add_Click({PasswordOUQuery})
#
#PassResetLabel5
#
$PassResetLabel5.AutoSize = $true
$PassResetLabel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]366,[System.Int32]275))
$PassResetLabel5.Name = [System.String]'PassResetLabel5'
$PassResetLabel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]56,[System.Int32]13))
$PassResetLabel5.TabIndex = [System.Int32]10
$PassResetLabel5.Text = [System.String]'Password:'
#
#PassResetLabel6
#
$PassResetLabel6.AutoSize = $true
$PassResetLabel6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]366,[System.Int32]324))
$PassResetLabel6.Name = [System.String]'PassResetLabel6'
$PassResetLabel6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]94,[System.Int32]13))
$PassResetLabel6.TabIndex = [System.Int32]12
$PassResetLabel6.Text = [System.String]'Confirm Password:'
#
#PassResetListOU
#
$PassResetListOU.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]125,[System.Int32]376))
$PassResetListOU.Name = [System.String]'PassResetListOU'
$PassResetListOU.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]203,[System.Int32]23))
$PassResetListOU.TabIndex = [System.Int32]14
$PassResetListOU.Text = [System.String]'List Current OUs'
$PassResetListOU.UseVisualStyleBackColor = $true
$PassResetListOU.Add_Click({PasswordListOU})
#
#PassResetPassInput
#
$PassResetPassInput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]369,[System.Int32]291))
$PassResetPassInput.Name = [System.String]'PassResetPassInput'
$PassResetPassInput.PasswordChar = [System.Char]'*'
$PassResetPassInput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]221,[System.Int32]20))
$PassResetPassInput.TabIndex = [System.Int32]15
#
#PassResetPassConfirm
#
$PassResetPassConfirm.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]369,[System.Int32]340))
$PassResetPassConfirm.Name = [System.String]'PassResetPassConfirm'
$PassResetPassConfirm.PasswordChar = [System.Char]'*'
$PassResetPassConfirm.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]221,[System.Int32]20))
$PassResetPassConfirm.TabIndex = [System.Int32]16
#
#PassResetQueryUsersCN
#
$PassResetQueryUsersCN.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]369,[System.Int32]138))
$PassResetQueryUsersCN.Name = [System.String]'PassResetQueryUsersCN'
$PassResetQueryUsersCN.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]221,[System.Int32]23))
$PassResetQueryUsersCN.TabIndex = [System.Int32]17
$PassResetQueryUsersCN.Text = [System.String]'Query Default Users Container'
$PassResetQueryUsersCN.UseVisualStyleBackColor = $true
$PassResetQueryUsersCN.Add_Click({PasswordUsersCNQuery})
#
#ADPasswordReset
#
$ADPasswordReset.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$ADPasswordReset.Controls.Add($PassResetQueryUsersCN)
$ADPasswordReset.Controls.Add($PassResetPassConfirm)
$ADPasswordReset.Controls.Add($PassResetPassInput)
$ADPasswordReset.Controls.Add($PassResetListOU)
$ADPasswordReset.Controls.Add($PassResetLabel6)
$ADPasswordReset.Controls.Add($PassResetLabel5)
$ADPasswordReset.Controls.Add($PassResetQueryOU)
$ADPasswordReset.Controls.Add($PassResetQueryTextBox)
$ADPasswordReset.Controls.Add($PassResetLabel4)
$ADPasswordReset.Controls.Add($PassResetLabel3)
$ADPasswordReset.Controls.Add($ADPasswordOutput)
$ADPasswordReset.Controls.Add($PassResetUserInput)
$ADPasswordReset.Controls.Add($PassResetLabel2)
$ADPasswordReset.Controls.Add($PassResetLabel)
$ADPasswordReset.Controls.Add($PassResetSubmit)
$ADPasswordReset.Controls.Add($PassResetBack)
$ADPasswordReset.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$ADPasswordReset.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$ADPasswordReset.MaximizeBox = $false
$ADPasswordReset.Name = [System.String]'ADPasswordReset'
$ADPasswordReset.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$ADPasswordReset.Text = [System.String]'Actve Directory Password Reset - Aurora Automations'
$ADPasswordReset.ResumeLayout($false)
$ADPasswordReset.PerformLayout()
Add-Member -InputObject $ADPasswordReset -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $ADPasswordReset -Name PassResetBack -Value $PassResetBack -MemberType NoteProperty
Add-Member -InputObject $ADPasswordReset -Name PassResetSubmit -Value $PassResetSubmit -MemberType NoteProperty
Add-Member -InputObject $ADPasswordReset -Name PassResetLabel -Value $PassResetLabel -MemberType NoteProperty
Add-Member -InputObject $ADPasswordReset -Name PassResetLabel2 -Value $PassResetLabel2 -MemberType NoteProperty
Add-Member -InputObject $ADPasswordReset -Name PassResetUserInput -Value $PassResetUserInput -MemberType NoteProperty
Add-Member -InputObject $ADPasswordReset -Name PassResetLabel3 -Value $PassResetLabel3 -MemberType NoteProperty
Add-Member -InputObject $ADPasswordReset -Name PassResetLabel4 -Value $PassResetLabel4 -MemberType NoteProperty
Add-Member -InputObject $ADPasswordReset -Name PassResetQueryOU -Value $PassResetQueryOU -MemberType NoteProperty
Add-Member -InputObject $ADPasswordReset -Name PassResetQueryTextBox -Value $PassResetQueryTextBox -MemberType NoteProperty
Add-Member -InputObject $ADPasswordReset -Name PassResetLabel5 -Value $PassResetLabel5 -MemberType NoteProperty
Add-Member -InputObject $ADPasswordReset -Name PassResetLabel6 -Value $PassResetLabel6 -MemberType NoteProperty
Add-Member -InputObject $ADPasswordReset -Name PassResetListOU -Value $PassResetListOU -MemberType NoteProperty
Add-Member -InputObject $ADPasswordReset -Name ADPasswordOutput -Value $ADPasswordOutput -MemberType NoteProperty
Add-Member -InputObject $ADPasswordReset -Name PassResetPassInput -Value $PassResetPassInput -MemberType NoteProperty
Add-Member -InputObject $ADPasswordReset -Name PassResetPassConfirm -Value $PassResetPassConfirm -MemberType NoteProperty
Add-Member -InputObject $ADPasswordReset -Name PassResetQueryUsersCN -Value $PassResetQueryUsersCN -MemberType NoteProperty
Add-Member -InputObject $ADPasswordReset -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
