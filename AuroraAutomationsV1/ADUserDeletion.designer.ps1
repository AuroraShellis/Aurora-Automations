[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$ADUserDeletion = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$UserDeleteBack = $null
[System.Windows.Forms.Button]$UserDeleteSubmit = $null
[System.Windows.Forms.Label]$UserDeleteLabel = $null
[System.Windows.Forms.RichTextBox]$UserDeleteOutput = $null
[System.Windows.Forms.Label]$UserDeleteLabel2 = $null
[System.Windows.Forms.Label]$UserDeleteLabel3 = $null
[System.Windows.Forms.Label]$UserDeleteLabel4 = $null
[System.Windows.Forms.Button]$UserDeleteQueryOU = $null
[System.Windows.Forms.TextBox]$UserDeleteQueryTextBox = $null
[System.Windows.Forms.TextBox]$UserDeleteUserTextBox = $null
[System.Windows.Forms.Button]$UserDeleteListOU = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.Button]$UserDeleteQueryUserCN = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'ADUserDeletion.resources.ps1')
$UserDeleteBack = (New-Object -TypeName System.Windows.Forms.Button)
$UserDeleteSubmit = (New-Object -TypeName System.Windows.Forms.Button)
$UserDeleteLabel = (New-Object -TypeName System.Windows.Forms.Label)
$UserDeleteQueryTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$UserDeleteOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$UserDeleteLabel2 = (New-Object -TypeName System.Windows.Forms.Label)
$UserDeleteLabel3 = (New-Object -TypeName System.Windows.Forms.Label)
$UserDeleteUserTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$UserDeleteLabel4 = (New-Object -TypeName System.Windows.Forms.Label)
$UserDeleteQueryOU = (New-Object -TypeName System.Windows.Forms.Button)
$UserDeleteListOU = (New-Object -TypeName System.Windows.Forms.Button)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$UserDeleteQueryUserCN = (New-Object -TypeName System.Windows.Forms.Button)
$ADUserDeletion.SuspendLayout()
#
#UserDeleteBack
#
$UserDeleteBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]32,[System.Int32]386))
$UserDeleteBack.Name = [System.String]'UserDeleteBack'
$UserDeleteBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$UserDeleteBack.TabIndex = [System.Int32]0
$UserDeleteBack.Text = [System.String]'Back'
$UserDeleteBack.UseVisualStyleBackColor = $true
$UserDeleteBack.Add_Click({ADUD.Back})
#
#UserDeleteSubmit
#
$UserDeleteSubmit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]523,[System.Int32]261))
$UserDeleteSubmit.Name = [System.String]'UserDeleteSubmit'
$UserDeleteSubmit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$UserDeleteSubmit.TabIndex = [System.Int32]1
$UserDeleteSubmit.Text = [System.String]'Delete'
$UserDeleteSubmit.UseVisualStyleBackColor = $true
$UserDeleteSubmit.Add_Click({ADDeleteFormUserDeletion})
#
#UserDeleteLabel
#
$UserDeleteLabel.AutoSize = $true
$UserDeleteLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]32,[System.Int32]29))
$UserDeleteLabel.Name = [System.String]'UserDeleteLabel'
$UserDeleteLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]273,[System.Int32]13))
$UserDeleteLabel.TabIndex = [System.Int32]2
$UserDeleteLabel.Text = [System.String]'This form will aid in the deletion of Active Directory Users'
#
#UserDeleteQueryTextBox
#
$UserDeleteQueryTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]347,[System.Int32]86))
$UserDeleteQueryTextBox.Name = [System.String]'UserDeleteQueryTextBox'
$UserDeleteQueryTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]251,[System.Int32]20))
$UserDeleteQueryTextBox.TabIndex = [System.Int32]3
#
#UserDeleteOutput
#
$UserDeleteOutput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]32,[System.Int32]87))
$UserDeleteOutput.Name = [System.String]'UserDeleteOutput'
$UserDeleteOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]298,[System.Int32]280))
$UserDeleteOutput.TabIndex = [System.Int32]4
$UserDeleteOutput.Text = [System.String]''
$UserDeleteOutput.ReadOnly = $true
#
#UserDeleteLabel2
#
$UserDeleteLabel2.AutoSize = $true
$UserDeleteLabel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]35,[System.Int32]65))
$UserDeleteLabel2.Name = [System.String]'UserDeleteLabel2'
$UserDeleteLabel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]13))
$UserDeleteLabel2.TabIndex = [System.Int32]5
$UserDeleteLabel2.Text = [System.String]'Output:'
#
#UserDeleteLabel3
#
$UserDeleteLabel3.AutoSize = $true
$UserDeleteLabel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]347,[System.Int32]67))
$UserDeleteLabel3.Name = [System.String]'UserDeleteLabel3'
$UserDeleteLabel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]102,[System.Int32]13))
$UserDeleteLabel3.TabIndex = [System.Int32]6
$UserDeleteLabel3.Text = [System.String]'Query OU for Users:'
#
#UserDeleteUserTextBox
#
$UserDeleteUserTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]350,[System.Int32]235))
$UserDeleteUserTextBox.Name = [System.String]'UserDeleteUserTextBox'
$UserDeleteUserTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]248,[System.Int32]20))
$UserDeleteUserTextBox.TabIndex = [System.Int32]7
#
#UserDeleteLabel4
#
$UserDeleteLabel4.AutoSize = $true
$UserDeleteLabel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]347,[System.Int32]219))
$UserDeleteLabel4.Name = [System.String]'UserDeleteLabel4'
$UserDeleteLabel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]199,[System.Int32]13))
$UserDeleteLabel4.TabIndex = [System.Int32]8
$UserDeleteLabel4.Text = [System.String]'Insert SAM Account name to be deleted:'
#
#UserDeleteQueryOU
#
$UserDeleteQueryOU.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]347,[System.Int32]113))
$UserDeleteQueryOU.Name = [System.String]'UserDeleteQueryOU'
$UserDeleteQueryOU.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]251,[System.Int32]23))
$UserDeleteQueryOU.TabIndex = [System.Int32]9
$UserDeleteQueryOU.Text = [System.String]'Query OU'
$UserDeleteQueryOU.UseVisualStyleBackColor = $true
$UserDeleteQueryOU.Add_Click({ADDeleteFormOUQuery})
#
#UserDeleteListOU
#
$UserDeleteListOU.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]117,[System.Int32]386))
$UserDeleteListOU.Name = [System.String]'UserDeleteListOU'
$UserDeleteListOU.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]213,[System.Int32]23))
$UserDeleteListOU.TabIndex = [System.Int32]10
$UserDeleteListOU.Text = [System.String]'List Current OUs'
$UserDeleteListOU.UseVisualStyleBackColor = $true
$UserDeleteListOU.Add_Click({UDGetList})
#
#label1
#
$label1.AutoSize = $true
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]350,[System.Int32]244))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]0,[System.Int32]13))
$label1.TabIndex = [System.Int32]11
#
#UserDeleteQueryUserCN
#
$UserDeleteQueryUserCN.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]347,[System.Int32]144))
$UserDeleteQueryUserCN.Name = [System.String]'UserDeleteQueryUserCN'
$UserDeleteQueryUserCN.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]251,[System.Int32]23))
$UserDeleteQueryUserCN.TabIndex = [System.Int32]12
$UserDeleteQueryUserCN.Text = [System.String]'Query Default Users Container'
$UserDeleteQueryUserCN.UseVisualStyleBackColor = $true
$UserDeleteQueryUserCN.Add_Click({ADDeleteFormUsersCNQuery})
#
#ADUserDeletion
#
$ADUserDeletion.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$ADUserDeletion.Controls.Add($UserDeleteQueryUserCN)
$ADUserDeletion.Controls.Add($label1)
$ADUserDeletion.Controls.Add($UserDeleteListOU)
$ADUserDeletion.Controls.Add($UserDeleteQueryOU)
$ADUserDeletion.Controls.Add($UserDeleteLabel4)
$ADUserDeletion.Controls.Add($UserDeleteUserTextBox)
$ADUserDeletion.Controls.Add($UserDeleteLabel3)
$ADUserDeletion.Controls.Add($UserDeleteLabel2)
$ADUserDeletion.Controls.Add($UserDeleteOutput)
$ADUserDeletion.Controls.Add($UserDeleteQueryTextBox)
$ADUserDeletion.Controls.Add($UserDeleteLabel)
$ADUserDeletion.Controls.Add($UserDeleteSubmit)
$ADUserDeletion.Controls.Add($UserDeleteBack)
$ADUserDeletion.HelpButton = $true
$ADUserDeletion.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$ADUserDeletion.Name = [System.String]'ADUserDeletion'
$ADUserDeletion.Text = [System.String]'Active Directory User Deletion - Aurora Automations'
$ADUserDeletion.add_Load($ADUserDeletion_Load)
$ADUserDeletion.ResumeLayout($false)
$ADUserDeletion.PerformLayout()
Add-Member -InputObject $ADUserDeletion -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $ADUserDeletion -Name UserDeleteBack -Value $UserDeleteBack -MemberType NoteProperty
Add-Member -InputObject $ADUserDeletion -Name UserDeleteSubmit -Value $UserDeleteSubmit -MemberType NoteProperty
Add-Member -InputObject $ADUserDeletion -Name UserDeleteLabel -Value $UserDeleteLabel -MemberType NoteProperty
Add-Member -InputObject $ADUserDeletion -Name UserDeleteOutput -Value $UserDeleteOutput -MemberType NoteProperty
Add-Member -InputObject $ADUserDeletion -Name UserDeleteLabel2 -Value $UserDeleteLabel2 -MemberType NoteProperty
Add-Member -InputObject $ADUserDeletion -Name UserDeleteLabel3 -Value $UserDeleteLabel3 -MemberType NoteProperty
Add-Member -InputObject $ADUserDeletion -Name UserDeleteLabel4 -Value $UserDeleteLabel4 -MemberType NoteProperty
Add-Member -InputObject $ADUserDeletion -Name UserDeleteQueryOU -Value $UserDeleteQueryOU -MemberType NoteProperty
Add-Member -InputObject $ADUserDeletion -Name UserDeleteQueryTextBox -Value $UserDeleteQueryTextBox -MemberType NoteProperty
Add-Member -InputObject $ADUserDeletion -Name UserDeleteUserTextBox -Value $UserDeleteUserTextBox -MemberType NoteProperty
Add-Member -InputObject $ADUserDeletion -Name UserDeleteListOU -Value $UserDeleteListOU -MemberType NoteProperty
Add-Member -InputObject $ADUserDeletion -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $ADUserDeletion -Name UserDeleteQueryUserCN -Value $UserDeleteQueryUserCN -MemberType NoteProperty
Add-Member -InputObject $ADUserDeletion -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
