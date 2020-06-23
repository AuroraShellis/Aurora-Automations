[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$MgmtFilePermissionForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$MgmtFilePermBack = $null
[System.Windows.Forms.TextBox]$MgmtFilePermInput = $null
[System.Windows.Forms.RichTextBox]$MgmtFilePermOutput = $null
[System.Windows.Forms.Label]$MgmtFilePermLabel1 = $null
[System.Windows.Forms.Label]$MgmtFilePermLabel2 = $null
[System.Windows.Forms.Label]$MgmtFilePermLabel3 = $null
[System.Windows.Forms.FolderBrowserDialog]$MgmtFilePermBrowseBox = $null
[System.Windows.Forms.Button]$MgmtFilePermBrowse = $null
[System.Windows.Forms.Button]$MgmtFilePermCheckButton = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'MgmtFilePermissionForm.resources.ps1')
$MgmtFilePermBack = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtFilePermInput = (New-Object -TypeName System.Windows.Forms.TextBox)
$MgmtFilePermOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$MgmtFilePermLabel1 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtFilePermLabel2 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtFilePermLabel3 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtFilePermBrowseBox = (New-Object -TypeName System.Windows.Forms.FolderBrowserDialog)
$MgmtFilePermBrowse = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtFilePermCheckButton = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtFilePermissionForm.SuspendLayout()
#
#MgmtFilePermBack
#
$MgmtFilePermBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]395))
$MgmtFilePermBack.Name = [System.String]'MgmtFilePermBack'
$MgmtFilePermBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$MgmtFilePermBack.TabIndex = [System.Int32]0
$MgmtFilePermBack.Text = [System.String]'Back'
$MgmtFilePermBack.UseVisualStyleBackColor = $true
$MgmtFilePermBack.Add_Click({MgmtFilePremBack})
#
#MgmtFilePermInput
#
$MgmtFilePermInput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]379,[System.Int32]82))
$MgmtFilePermInput.Name = [System.String]'MgmtFilePermInput'
$MgmtFilePermInput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]203,[System.Int32]20))
$MgmtFilePermInput.TabIndex = [System.Int32]2
#
#MgmtFilePermOutput
#
$MgmtFilePermOutput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]82))
$MgmtFilePermOutput.Name = [System.String]'MgmtFilePermOutput'
$MgmtFilePermOutput.ReadOnly = $true
$MgmtFilePermOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]361,[System.Int32]295))
$MgmtFilePermOutput.TabIndex = [System.Int32]4
$MgmtFilePermOutput.Text = [System.String]''
#
#MgmtFilePermLabel1
#
$MgmtFilePermLabel1.AutoSize = $true
$MgmtFilePermLabel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]24))
$MgmtFilePermLabel1.Name = [System.String]'MgmtFilePermLabel1'
$MgmtFilePermLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]225,[System.Int32]13))
$MgmtFilePermLabel1.TabIndex = [System.Int32]5
$MgmtFilePermLabel1.Text = [System.String]'This will check the user permissions of a folder'
#
#MgmtFilePermLabel2
#
$MgmtFilePermLabel2.AutoSize = $true
$MgmtFilePermLabel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]63))
$MgmtFilePermLabel2.Name = [System.String]'MgmtFilePermLabel2'
$MgmtFilePermLabel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]13))
$MgmtFilePermLabel2.TabIndex = [System.Int32]6
$MgmtFilePermLabel2.Text = [System.String]'Output:'
#
#MgmtFilePermLabel3
#
$MgmtFilePermLabel3.AutoSize = $true
$MgmtFilePermLabel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]376,[System.Int32]63))
$MgmtFilePermLabel3.Name = [System.String]'MgmtFilePermLabel3'
$MgmtFilePermLabel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]89,[System.Int32]13))
$MgmtFilePermLabel3.TabIndex = [System.Int32]7
$MgmtFilePermLabel3.Text = [System.String]'Insert folder path:'
#
#MgmtFilePermBrowseBox
#
$MgmtFilePermBrowseBox.RootFolder = [System.Environment+SpecialFolder]::UserProfile
#
#MgmtFilePermBrowse
#
$MgmtFilePermBrowse.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]588,[System.Int32]79))
$MgmtFilePermBrowse.Name = [System.String]'MgmtFilePermBrowse'
$MgmtFilePermBrowse.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]24,[System.Int32]23))
$MgmtFilePermBrowse.TabIndex = [System.Int32]11
$MgmtFilePermBrowse.Text = [System.String]'...'
$MgmtFilePermBrowse.add_Click({MgmtFilePermissionBrowse})
#
#MgmtFilePermCheckButton
#
$MgmtFilePermCheckButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]507,[System.Int32]108))
$MgmtFilePermCheckButton.Name = [System.String]'MgmtFilePermCheckButton'
$MgmtFilePermCheckButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$MgmtFilePermCheckButton.TabIndex = [System.Int32]12
$MgmtFilePermCheckButton.Text = [System.String]'Check'
$MgmtFilePermCheckButton.Add_Click({MgmtFolderSubmitCheck})
#
#MgmtFilePermissionForm
#
$MgmtFilePermissionForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$MgmtFilePermissionForm.Controls.Add($MgmtFilePermCheckButton)
$MgmtFilePermissionForm.Controls.Add($MgmtFilePermBrowse)
$MgmtFilePermissionForm.Controls.Add($MgmtFilePermLabel3)
$MgmtFilePermissionForm.Controls.Add($MgmtFilePermLabel2)
$MgmtFilePermissionForm.Controls.Add($MgmtFilePermLabel1)
$MgmtFilePermissionForm.Controls.Add($MgmtFilePermOutput)
$MgmtFilePermissionForm.Controls.Add($MgmtFilePermInput)
$MgmtFilePermissionForm.Controls.Add($MgmtFilePermBack)
$MgmtFilePermissionForm.MaximizeBox = $false
$MgmtFilePermissionForm.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$MgmtFilePermissionForm.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$MgmtFilePermissionForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$MgmtFilePermissionForm.Name = [System.String]'MgmtFilePermissionForm'
$MgmtFilePermissionForm.Text = [System.String]'Check Folder Permissions - Aurora Automations'
$MgmtFilePermissionForm.ResumeLayout($false)
$MgmtFilePermissionForm.PerformLayout()
Add-Member -InputObject $MgmtFilePermissionForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $MgmtFilePermissionForm -Name MgmtFilePermBack -Value $MgmtFilePermBack -MemberType NoteProperty
Add-Member -InputObject $MgmtFilePermissionForm -Name MgmtFilePermInput -Value $MgmtFilePermInput -MemberType NoteProperty
Add-Member -InputObject $MgmtFilePermissionForm -Name MgmtFilePermOutput -Value $MgmtFilePermOutput -MemberType NoteProperty
Add-Member -InputObject $MgmtFilePermissionForm -Name MgmtFilePermLabel1 -Value $MgmtFilePermLabel1 -MemberType NoteProperty
Add-Member -InputObject $MgmtFilePermissionForm -Name MgmtFilePermLabel2 -Value $MgmtFilePermLabel2 -MemberType NoteProperty
Add-Member -InputObject $MgmtFilePermissionForm -Name MgmtFilePermLabel3 -Value $MgmtFilePermLabel3 -MemberType NoteProperty
Add-Member -InputObject $MgmtFilePermissionForm -Name MgmtFilePermBrowseBox -Value $MgmtFilePermBrowseBox -MemberType NoteProperty
Add-Member -InputObject $MgmtFilePermissionForm -Name MgmtFilePermBrowse -Value $MgmtFilePermBrowse -MemberType NoteProperty
Add-Member -InputObject $MgmtFilePermissionForm -Name MgmtFilePermCheckButton -Value $MgmtFilePermCheckButton -MemberType NoteProperty
Add-Member -InputObject $MgmtFilePermissionForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
