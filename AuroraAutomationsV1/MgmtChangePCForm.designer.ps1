[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$MgmtChangePCForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$MgmtChangePCBack = $null
[System.Windows.Forms.Button]$MgmtChangePCQuery = $null
[System.Windows.Forms.TextBox]$MgmtChangePCInput = $null
[System.Windows.Forms.RichTextBox]$MgmtChangePCOutput = $null
[System.Windows.Forms.Label]$MgmtChangePCLabel1 = $null
[System.Windows.Forms.Label]$MgmtChangePCLabel2 = $null
[System.Windows.Forms.Label]$MgmtChangePCLabel3 = $null
[System.Windows.Forms.Button]$MgmtChangePCRemove = $null
[System.Windows.Forms.Button]$AddComputerDomain = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'MgmtChangePCForm.resources.ps1')
$MgmtChangePCBack = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtChangePCQuery = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtChangePCRemove = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtChangePCInput = (New-Object -TypeName System.Windows.Forms.TextBox)
$MgmtChangePCOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$MgmtChangePCLabel1 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtChangePCLabel2 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtChangePCLabel3 = (New-Object -TypeName System.Windows.Forms.Label)
$AddComputerDomain = (New-Object -TypeName System.Windows.Forms.Button)
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
$MgmtChangePCQuery.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]275,[System.Int32]389))
$MgmtChangePCQuery.Name = [System.String]'MgmtChangePCQuery'
$MgmtChangePCQuery.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]146,[System.Int32]23))
$MgmtChangePCQuery.TabIndex = [System.Int32]1
$MgmtChangePCQuery.Text = [System.String]'Query Computer Name'
$MgmtChangePCQuery.UseVisualStyleBackColor = $true
$MgmtChangePCQuery.add_Click({QueryComouterListJoinDomainForm})
#
#MgmtChangePCRemove
#
$MgmtChangePCRemove.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]537,[System.Int32]95))
$MgmtChangePCRemove.Name = [System.String]'MgmtChangePCRemove'
$MgmtChangePCRemove.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$MgmtChangePCRemove.TabIndex = [System.Int32]2
$MgmtChangePCRemove.Text = [System.String]'Remove'
$MgmtChangePCRemove.UseVisualStyleBackColor = $true
$MgmtChangePCRemove.add_Click({RemoveComputerDomain})
#
#MgmtChangePCInput
#
$MgmtChangePCInput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]443,[System.Int32]69))
$MgmtChangePCInput.Name = [System.String]'MgmtChangePCInput'
$MgmtChangePCInput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]169,[System.Int32]20))
$MgmtChangePCInput.TabIndex = [System.Int32]3
#
#MgmtChangePCOutput
#
$MgmtChangePCOutput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]23,[System.Int32]69))
$MgmtChangePCOutput.Name = [System.String]'MgmtChangePCOutput'
$MgmtChangePCOutput.ReadOnly = $true
$MgmtChangePCOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]398,[System.Int32]305))
$MgmtChangePCOutput.TabIndex = [System.Int32]6
$MgmtChangePCOutput.Text = [System.String]''
#
#MgmtChangePCLabel1
#
$MgmtChangePCLabel1.AutoSize = $true
$MgmtChangePCLabel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]20,[System.Int32]18))
$MgmtChangePCLabel1.Name = [System.String]'MgmtChangePCLabel1'
$MgmtChangePCLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]376,[System.Int32]13))
$MgmtChangePCLabel1.TabIndex = [System.Int32]7
$MgmtChangePCLabel1.Text = [System.String]'This will aid with the changing of computer names and joining/leaving domains'
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
$MgmtChangePCLabel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]440,[System.Int32]51))
$MgmtChangePCLabel3.Name = [System.String]'MgmtChangePCLabel3'
$MgmtChangePCLabel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]83,[System.Int32]13))
$MgmtChangePCLabel3.TabIndex = [System.Int32]9
$MgmtChangePCLabel3.Text = [System.String]'Computer Name'
$MgmtChangePCLabel3.add_Click($MgmtChangePCLabel3_Click)
#
#AddComputerDomain
#
$AddComputerDomain.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]448,[System.Int32]95))
$AddComputerDomain.Name = [System.String]'AddComputerDomain'
$AddComputerDomain.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$AddComputerDomain.TabIndex = [System.Int32]10
$AddComputerDomain.Text = [System.String]'Add'
$AddComputerDomain.UseVisualStyleBackColor = $true
$AddComputerDomain.add_Click({AddComputerDomain})
#
#MgmtChangePCForm
#
$MgmtChangePCForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$MgmtChangePCForm.Controls.Add($AddComputerDomain)
$MgmtChangePCForm.Controls.Add($MgmtChangePCLabel3)
$MgmtChangePCForm.Controls.Add($MgmtChangePCLabel2)
$MgmtChangePCForm.Controls.Add($MgmtChangePCLabel1)
$MgmtChangePCForm.Controls.Add($MgmtChangePCOutput)
$MgmtChangePCForm.Controls.Add($MgmtChangePCInput)
$MgmtChangePCForm.Controls.Add($MgmtChangePCRemove)
$MgmtChangePCForm.Controls.Add($MgmtChangePCQuery)
$MgmtChangePCForm.Controls.Add($MgmtChangePCBack)
$MgmtChangePCForm.MaximizeBox = $false
$MgmtChangePCForm.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$MgmtChangePCForm.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$MgmtChangePCForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$MgmtChangePCForm.Name = [System.String]'MgmtChangePCForm'
$MgmtChangePCForm.Text = [System.String]'Change Computer Name and Domain/Workgroup settings - Aurora Automations'
$MgmtChangePCForm.ResumeLayout($false)
$MgmtChangePCForm.PerformLayout()
Add-Member -InputObject $MgmtChangePCForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCBack -Value $MgmtChangePCBack -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCQuery -Value $MgmtChangePCQuery -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCInput -Value $MgmtChangePCInput -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCOutput -Value $MgmtChangePCOutput -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCLabel1 -Value $MgmtChangePCLabel1 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCLabel2 -Value $MgmtChangePCLabel2 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCLabel3 -Value $MgmtChangePCLabel3 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCRemove -Value $MgmtChangePCRemove -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name AddComputerDomain -Value $AddComputerDomain -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
