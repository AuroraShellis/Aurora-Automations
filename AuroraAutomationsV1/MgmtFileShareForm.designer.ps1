[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$MgmtFileShareForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$MgmtFileShareBack = $null
[System.Windows.Forms.Button]$MgmtFileShareSubmit = $null
[System.Windows.Forms.Button]$MgmtFileShareRefresh = $null
[System.Windows.Forms.RichTextBox]$MgmtFileShareOutput = $null
[System.Windows.Forms.Label]$MgmtFileShareLabel1 = $null
[System.Windows.Forms.Label]$MgmtFileShareLabel2 = $null
[System.Windows.Forms.TextBox]$MgmtFileShareName = $null
[System.Windows.Forms.Label]$MgmtFileShareLabel3 = $null
[System.Windows.Forms.TextBox]$MgmtFileShareDir = $null
[System.Windows.Forms.Label]$MgmtFileShareLabel4 = $null
[System.Windows.Forms.TextBox]$MgmtFileShareUser = $null
[System.Windows.Forms.Label]$MgmtFileShareLabel5 = $null
[System.Windows.Forms.CheckBox]$MgmtFileShareFull = $null
[System.Windows.Forms.CheckBox]$MgmtFileShareChange = $null
[System.Windows.Forms.CheckBox]$MgmtFileShareRead = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.Button]$QueryFileSharePermButton = $null
[System.Windows.Forms.FolderBrowserDialog]$MgmtFileShareBrowse = $null
[System.Windows.Forms.Button]$MgmtFileShareBrowseButton = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'MgmtFileShareForm.resources.ps1')
$MgmtFileShareBack = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtFileShareSubmit = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtFileShareRefresh = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtFileShareOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$MgmtFileShareLabel1 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtFileShareLabel2 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtFileShareName = (New-Object -TypeName System.Windows.Forms.TextBox)
$MgmtFileShareLabel3 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtFileShareDir = (New-Object -TypeName System.Windows.Forms.TextBox)
$MgmtFileShareUser = (New-Object -TypeName System.Windows.Forms.TextBox)
$MgmtFileShareLabel4 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtFileShareLabel5 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtFileShareFull = (New-Object -TypeName System.Windows.Forms.CheckBox)
$MgmtFileShareChange = (New-Object -TypeName System.Windows.Forms.CheckBox)
$MgmtFileShareRead = (New-Object -TypeName System.Windows.Forms.CheckBox)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtFileShareBrowseButton = (New-Object -TypeName System.Windows.Forms.Button)
$QueryFileSharePermButton = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtFileShareBrowse = (New-Object -TypeName System.Windows.Forms.FolderBrowserDialog)
$MgmtFileShareForm.SuspendLayout()
#
#MgmtFileShareBack
#
$MgmtFileShareBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]32,[System.Int32]390))
$MgmtFileShareBack.Name = [System.String]'MgmtFileShareBack'
$MgmtFileShareBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$MgmtFileShareBack.TabIndex = [System.Int32]0
$MgmtFileShareBack.Text = [System.String]'Back'
$MgmtFileShareBack.UseVisualStyleBackColor = $true
$MgmtFileShareBack.add_Click({BackFileShareManagement})
#
#MgmtFileShareSubmit
#
$MgmtFileShareSubmit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]412,[System.Int32]322))
$MgmtFileShareSubmit.Name = [System.String]'MgmtFileShareSubmit'
$MgmtFileShareSubmit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]91))
$MgmtFileShareSubmit.TabIndex = [System.Int32]1
$MgmtFileShareSubmit.Text = [System.String]'Create'
$MgmtFileShareSubmit.UseVisualStyleBackColor = $true
$MgmtFileShareSubmit.add_Click({FilesShareCreationButton})
#
#MgmtFileShareRefresh
#
$MgmtFileShareRefresh.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]309,[System.Int32]390))
$MgmtFileShareRefresh.Name = [System.String]'MgmtFileShareRefresh'
$MgmtFileShareRefresh.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$MgmtFileShareRefresh.TabIndex = [System.Int32]2
$MgmtFileShareRefresh.Text = [System.String]'Query All'
$MgmtFileShareRefresh.UseVisualStyleBackColor = $true
$MgmtFileShareRefresh.add_Click({QueryAllFileShare})
#
#MgmtFileShareOutput
#
$MgmtFileShareOutput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]26,[System.Int32]64))
$MgmtFileShareOutput.Name = [System.String]'MgmtFileShareOutput'
$MgmtFileShareOutput.ReadOnly = $true
$MgmtFileShareOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]358,[System.Int32]320))
$MgmtFileShareOutput.TabIndex = [System.Int32]3
$MgmtFileShareOutput.Text = [System.String]''
#
#MgmtFileShareLabel1
#
$MgmtFileShareLabel1.AutoSize = $true
$MgmtFileShareLabel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]23,[System.Int32]18))
$MgmtFileShareLabel1.Name = [System.String]'MgmtFileShareLabel1'
$MgmtFileShareLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]219,[System.Int32]13))
$MgmtFileShareLabel1.TabIndex = [System.Int32]4
$MgmtFileShareLabel1.Text = [System.String]'This will aid in the creation of SMB file shares'
#
#MgmtFileShareLabel2
#
$MgmtFileShareLabel2.AutoSize = $true
$MgmtFileShareLabel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]26,[System.Int32]48))
$MgmtFileShareLabel2.Name = [System.String]'MgmtFileShareLabel2'
$MgmtFileShareLabel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]13))
$MgmtFileShareLabel2.TabIndex = [System.Int32]5
$MgmtFileShareLabel2.Text = [System.String]'Output:'
#
#MgmtFileShareName
#
$MgmtFileShareName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]410,[System.Int32]133))
$MgmtFileShareName.Name = [System.String]'MgmtFileShareName'
$MgmtFileShareName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]153,[System.Int32]20))
$MgmtFileShareName.TabIndex = [System.Int32]6
#
#MgmtFileShareLabel3
#
$MgmtFileShareLabel3.AutoSize = $true
$MgmtFileShareLabel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]407,[System.Int32]117))
$MgmtFileShareLabel3.Name = [System.String]'MgmtFileShareLabel3'
$MgmtFileShareLabel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]85,[System.Int32]13))
$MgmtFileShareLabel3.TabIndex = [System.Int32]7
$MgmtFileShareLabel3.Text = [System.String]'File Share Name'
#
#MgmtFileShareDir
#
$MgmtFileShareDir.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]410,[System.Int32]74))
$MgmtFileShareDir.Name = [System.String]'MgmtFileShareDir'
$MgmtFileShareDir.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]173,[System.Int32]20))
$MgmtFileShareDir.TabIndex = [System.Int32]8
#
#MgmtFileShareUser
#
$MgmtFileShareUser.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]410,[System.Int32]190))
$MgmtFileShareUser.Name = [System.String]'MgmtFileShareUser'
$MgmtFileShareUser.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]173,[System.Int32]20))
$MgmtFileShareUser.TabIndex = [System.Int32]9
#
#MgmtFileShareLabel4
#
$MgmtFileShareLabel4.AutoSize = $true
$MgmtFileShareLabel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]407,[System.Int32]58))
$MgmtFileShareLabel4.Name = [System.String]'MgmtFileShareLabel4'
$MgmtFileShareLabel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]134,[System.Int32]13))
$MgmtFileShareLabel4.TabIndex = [System.Int32]10
$MgmtFileShareLabel4.Text = [System.String]'Location Of The File Share'
#
#MgmtFileShareLabel5
#
$MgmtFileShareLabel5.AutoSize = $true
$MgmtFileShareLabel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]407,[System.Int32]174))
$MgmtFileShareLabel5.Name = [System.String]'MgmtFileShareLabel5'
$MgmtFileShareLabel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]13))
$MgmtFileShareLabel5.TabIndex = [System.Int32]11
$MgmtFileShareLabel5.Text = [System.String]'User or Group Name'
#
#MgmtFileShareFull
#
$MgmtFileShareFull.AutoSize = $true
$MgmtFileShareFull.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]412,[System.Int32]253))
$MgmtFileShareFull.Name = [System.String]'MgmtFileShareFull'
$MgmtFileShareFull.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]78,[System.Int32]17))
$MgmtFileShareFull.TabIndex = [System.Int32]12
$MgmtFileShareFull.Text = [System.String]'Full Control'
$MgmtFileShareFull.UseVisualStyleBackColor = $true
$MgmtFileShareFull.add_CheckedChanged({FullControl})
#
#MgmtFileShareChange
#
$MgmtFileShareChange.AutoSize = $true
$MgmtFileShareChange.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]412,[System.Int32]276))
$MgmtFileShareChange.Name = [System.String]'MgmtFileShareChange'
$MgmtFileShareChange.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]63,[System.Int32]17))
$MgmtFileShareChange.TabIndex = [System.Int32]13
$MgmtFileShareChange.Text = [System.String]'Change'
$MgmtFileShareChange.UseVisualStyleBackColor = $true
$MgmtFileShareChange.add_CheckedChanged({ChangeAccessControl})
#
#MgmtFileShareRead
#
$MgmtFileShareRead.AutoSize = $true
$MgmtFileShareRead.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]412,[System.Int32]299))
$MgmtFileShareRead.Name = [System.String]'MgmtFileShareRead'
$MgmtFileShareRead.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]52,[System.Int32]17))
$MgmtFileShareRead.TabIndex = [System.Int32]14
$MgmtFileShareRead.Text = [System.String]'Read'
$MgmtFileShareRead.UseVisualStyleBackColor = $true
$MgmtFileShareRead.add_CheckedChanged({ReadAccessControl})
#
#label1
#
$label1.AutoSize = $true
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]409,[System.Int32]227))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]92,[System.Int32]13))
$label1.TabIndex = [System.Int32]15
$label1.Text = [System.String]'Select permission:'
#
#MgmtFileShareBrowseButton
#
$MgmtFileShareBrowseButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]588,[System.Int32]74))
$MgmtFileShareBrowseButton.Name = [System.String]'MgmtFileShareBrowseButton'
$MgmtFileShareBrowseButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]24,[System.Int32]20))
$MgmtFileShareBrowseButton.TabIndex = [System.Int32]17
$MgmtFileShareBrowseButton.Text = [System.String]'...'
$MgmtFileShareBrowseButton.UseVisualStyleBackColor = $true
$MgmtFileShareBrowseButton.add_Click({MgmtFolderBrowseFuction})
#
#QueryFileSharePermButton
#
$QueryFileSharePermButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]569,[System.Int32]133))
$QueryFileSharePermButton.Name = [System.String]'QueryFileSharePermButton'
$QueryFileSharePermButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]43,[System.Int32]20))
$QueryFileSharePermButton.TabIndex = [System.Int32]18
$QueryFileSharePermButton.Text = [System.String]'Query'
$QueryFileSharePermButton.UseVisualStyleBackColor = $true
$QueryFileSharePermButton.add_Click({FileSharePermQuery})
#
#MgmtFileShareForm
#
$MgmtFileShareForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$MgmtFileShareForm.Controls.Add($QueryFileSharePermButton)
$MgmtFileShareForm.Controls.Add($MgmtFileShareBrowseButton)
$MgmtFileShareForm.Controls.Add($label1)
$MgmtFileShareForm.Controls.Add($MgmtFileShareRead)
$MgmtFileShareForm.Controls.Add($MgmtFileShareChange)
$MgmtFileShareForm.Controls.Add($MgmtFileShareFull)
$MgmtFileShareForm.Controls.Add($MgmtFileShareLabel5)
$MgmtFileShareForm.Controls.Add($MgmtFileShareLabel4)
$MgmtFileShareForm.Controls.Add($MgmtFileShareUser)
$MgmtFileShareForm.Controls.Add($MgmtFileShareDir)
$MgmtFileShareForm.Controls.Add($MgmtFileShareLabel3)
$MgmtFileShareForm.Controls.Add($MgmtFileShareName)
$MgmtFileShareForm.Controls.Add($MgmtFileShareLabel2)
$MgmtFileShareForm.Controls.Add($MgmtFileShareLabel1)
$MgmtFileShareForm.Controls.Add($MgmtFileShareOutput)
$MgmtFileShareForm.Controls.Add($MgmtFileShareRefresh)
$MgmtFileShareForm.Controls.Add($MgmtFileShareSubmit)
$MgmtFileShareForm.Controls.Add($MgmtFileShareBack)
$MgmtFileShareForm.MaximizeBox = $false
$MgmtFileShareForm.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$MgmtFileShareForm.StartPosition = [System.Windows.Forms.FormStartPosition]::Manual
$MgmtFileShareForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$MgmtFileShareForm.Name = [System.String]'MgmtFileShareForm'
$MgmtFileShareForm.Text = [System.String]'File Share Creation - Aurora Automations'
$MgmtFileShareForm.ResumeLayout($false)
$MgmtFileShareForm.PerformLayout()
Add-Member -InputObject $MgmtFileShareForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $MgmtFileShareForm -Name MgmtFileShareBack -Value $MgmtFileShareBack -MemberType NoteProperty
Add-Member -InputObject $MgmtFileShareForm -Name MgmtFileShareSubmit -Value $MgmtFileShareSubmit -MemberType NoteProperty
Add-Member -InputObject $MgmtFileShareForm -Name MgmtFileShareRefresh -Value $MgmtFileShareRefresh -MemberType NoteProperty
Add-Member -InputObject $MgmtFileShareForm -Name MgmtFileShareOutput -Value $MgmtFileShareOutput -MemberType NoteProperty
Add-Member -InputObject $MgmtFileShareForm -Name MgmtFileShareLabel1 -Value $MgmtFileShareLabel1 -MemberType NoteProperty
Add-Member -InputObject $MgmtFileShareForm -Name MgmtFileShareLabel2 -Value $MgmtFileShareLabel2 -MemberType NoteProperty
Add-Member -InputObject $MgmtFileShareForm -Name MgmtFileShareName -Value $MgmtFileShareName -MemberType NoteProperty
Add-Member -InputObject $MgmtFileShareForm -Name MgmtFileShareLabel3 -Value $MgmtFileShareLabel3 -MemberType NoteProperty
Add-Member -InputObject $MgmtFileShareForm -Name MgmtFileShareDir -Value $MgmtFileShareDir -MemberType NoteProperty
Add-Member -InputObject $MgmtFileShareForm -Name MgmtFileShareLabel4 -Value $MgmtFileShareLabel4 -MemberType NoteProperty
Add-Member -InputObject $MgmtFileShareForm -Name MgmtFileShareUser -Value $MgmtFileShareUser -MemberType NoteProperty
Add-Member -InputObject $MgmtFileShareForm -Name MgmtFileShareLabel5 -Value $MgmtFileShareLabel5 -MemberType NoteProperty
Add-Member -InputObject $MgmtFileShareForm -Name MgmtFileShareFull -Value $MgmtFileShareFull -MemberType NoteProperty
Add-Member -InputObject $MgmtFileShareForm -Name MgmtFileShareChange -Value $MgmtFileShareChange -MemberType NoteProperty
Add-Member -InputObject $MgmtFileShareForm -Name MgmtFileShareRead -Value $MgmtFileShareRead -MemberType NoteProperty
Add-Member -InputObject $MgmtFileShareForm -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $MgmtFileShareForm -Name QueryFileSharePermButton -Value $QueryFileSharePermButton -MemberType NoteProperty
Add-Member -InputObject $MgmtFileShareForm -Name MgmtFileShareBrowse -Value $MgmtFileShareBrowse -MemberType NoteProperty
Add-Member -InputObject $MgmtFileShareForm -Name MgmtFileShareBrowseButton -Value $MgmtFileShareBrowseButton -MemberType NoteProperty
Add-Member -InputObject $MgmtFileShareForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
