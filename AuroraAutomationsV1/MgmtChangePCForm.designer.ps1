[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$MgmtChangePCForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$MgmtChangePCBack = $null
[System.Windows.Forms.Button]$MgmtChangePCQuery = $null
[System.Windows.Forms.Button]$MgmtChangePCSubmit = $null
[System.Windows.Forms.TextBox]$MgmtChangePCInput = $null
[System.Windows.Forms.TextBox]$MgmtChangePCDomain = $null
[System.Windows.Forms.TextBox]$MgmtChangePCWorkgroup = $null
[System.Windows.Forms.RichTextBox]$MgmtChangePCOutput = $null
[System.Windows.Forms.Label]$MgmtChangePCLabel1 = $null
[System.Windows.Forms.Label]$MgmtChangePCLabel2 = $null
[System.Windows.Forms.Label]$MgmtChangePCLabel3 = $null
[System.Windows.Forms.Label]$MgmtChangePCLabel4 = $null
[System.Windows.Forms.Label]$MgmtChangePCLabel5 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'MgmtChangePCForm.resources.ps1')
$MgmtChangePCBack = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtChangePCQuery = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtChangePCSubmit = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtChangePCInput = (New-Object -TypeName System.Windows.Forms.TextBox)
$MgmtChangePCDomain = (New-Object -TypeName System.Windows.Forms.TextBox)
$MgmtChangePCWorkgroup = (New-Object -TypeName System.Windows.Forms.TextBox)
$MgmtChangePCOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$MgmtChangePCLabel1 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtChangePCLabel2 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtChangePCLabel3 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtChangePCLabel4 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtChangePCLabel5 = (New-Object -TypeName System.Windows.Forms.Label)
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
#
#MgmtChangePCQuery
#
$MgmtChangePCQuery.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]275,[System.Int32]389))
$MgmtChangePCQuery.Name = [System.String]'MgmtChangePCQuery'
$MgmtChangePCQuery.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]146,[System.Int32]23))
$MgmtChangePCQuery.TabIndex = [System.Int32]1
$MgmtChangePCQuery.Text = [System.String]'Query Computer Name'
$MgmtChangePCQuery.UseVisualStyleBackColor = $true
#
#MgmtChangePCSubmit
#
$MgmtChangePCSubmit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]537,[System.Int32]224))
$MgmtChangePCSubmit.Name = [System.String]'MgmtChangePCSubmit'
$MgmtChangePCSubmit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$MgmtChangePCSubmit.TabIndex = [System.Int32]2
$MgmtChangePCSubmit.Text = [System.String]'Submit'
$MgmtChangePCSubmit.UseVisualStyleBackColor = $true
#
#MgmtChangePCInput
#
$MgmtChangePCInput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]443,[System.Int32]69))
$MgmtChangePCInput.Name = [System.String]'MgmtChangePCInput'
$MgmtChangePCInput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]169,[System.Int32]20))
$MgmtChangePCInput.TabIndex = [System.Int32]3
#
#MgmtChangePCDomain
#
$MgmtChangePCDomain.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]443,[System.Int32]128))
$MgmtChangePCDomain.Name = [System.String]'MgmtChangePCDomain'
$MgmtChangePCDomain.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]169,[System.Int32]20))
$MgmtChangePCDomain.TabIndex = [System.Int32]4
#
#MgmtChangePCWorkgroup
#
$MgmtChangePCWorkgroup.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]443,[System.Int32]187))
$MgmtChangePCWorkgroup.Name = [System.String]'MgmtChangePCWorkgroup'
$MgmtChangePCWorkgroup.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]169,[System.Int32]20))
$MgmtChangePCWorkgroup.TabIndex = [System.Int32]5
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
$MgmtChangePCLabel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]169,[System.Int32]13))
$MgmtChangePCLabel3.TabIndex = [System.Int32]9
$MgmtChangePCLabel3.Text = [System.String]'Insert New Local Computer Name:'
#
#MgmtChangePCLabel4
#
$MgmtChangePCLabel4.AutoSize = $true
$MgmtChangePCLabel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]443,[System.Int32]111))
$MgmtChangePCLabel4.Name = [System.String]'MgmtChangePCLabel4'
$MgmtChangePCLabel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]106,[System.Int32]13))
$MgmtChangePCLabel4.TabIndex = [System.Int32]10
$MgmtChangePCLabel4.Text = [System.String]'Insert Domain Name:'
$MgmtChangePCLabel4.add_Click($MgmtChangePCLabel4_Click)
#
#MgmtChangePCLabel5
#
$MgmtChangePCLabel5.AutoSize = $true
$MgmtChangePCLabel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]443,[System.Int32]168))
$MgmtChangePCLabel5.Name = [System.String]'MgmtChangePCLabel5'
$MgmtChangePCLabel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]123,[System.Int32]13))
$MgmtChangePCLabel5.TabIndex = [System.Int32]11
$MgmtChangePCLabel5.Text = [System.String]'Insert Workgroup Name:'
#
#MgmtChangePCForm
#
$MgmtChangePCForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$MgmtChangePCForm.Controls.Add($MgmtChangePCLabel5)
$MgmtChangePCForm.Controls.Add($MgmtChangePCLabel4)
$MgmtChangePCForm.Controls.Add($MgmtChangePCLabel3)
$MgmtChangePCForm.Controls.Add($MgmtChangePCLabel2)
$MgmtChangePCForm.Controls.Add($MgmtChangePCLabel1)
$MgmtChangePCForm.Controls.Add($MgmtChangePCOutput)
$MgmtChangePCForm.Controls.Add($MgmtChangePCWorkgroup)
$MgmtChangePCForm.Controls.Add($MgmtChangePCDomain)
$MgmtChangePCForm.Controls.Add($MgmtChangePCInput)
$MgmtChangePCForm.Controls.Add($MgmtChangePCSubmit)
$MgmtChangePCForm.Controls.Add($MgmtChangePCQuery)
$MgmtChangePCForm.Controls.Add($MgmtChangePCBack)
$MgmtChangePCForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$MgmtChangePCForm.Name = [System.String]'MgmtChangePCForm'
$MgmtChangePCForm.Text = [System.String]'Change Computer Name and Domain/Workgroup settings - Aurora Automations'
$MgmtChangePCForm.ResumeLayout($false)
$MgmtChangePCForm.PerformLayout()
Add-Member -InputObject $MgmtChangePCForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCBack -Value $MgmtChangePCBack -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCQuery -Value $MgmtChangePCQuery -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCSubmit -Value $MgmtChangePCSubmit -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCInput -Value $MgmtChangePCInput -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCDomain -Value $MgmtChangePCDomain -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCWorkgroup -Value $MgmtChangePCWorkgroup -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCOutput -Value $MgmtChangePCOutput -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCLabel1 -Value $MgmtChangePCLabel1 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCLabel2 -Value $MgmtChangePCLabel2 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCLabel3 -Value $MgmtChangePCLabel3 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCLabel4 -Value $MgmtChangePCLabel4 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name MgmtChangePCLabel5 -Value $MgmtChangePCLabel5 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangePCForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
