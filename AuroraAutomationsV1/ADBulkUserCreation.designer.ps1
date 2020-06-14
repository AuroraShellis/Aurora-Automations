[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$ADBulkUserCreation = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$ADBulkBack = $null
[System.Windows.Forms.Button]$ADBulkSubmit = $null
[System.Windows.Forms.Label]$ADBulkLabel1 = $null
[System.Windows.Forms.Label]$ADBulkLabel2 = $null
[System.Windows.Forms.TextBox]$ADBulkCSVInput = $null
[System.Windows.Forms.Label]$ADBulkLabel3 = $null
[System.Windows.Forms.RichTextBox]$ADBulkOutput = $null
[System.Windows.Forms.Button]$ADBulkBrowseButton = $null
[System.Windows.Forms.OpenFileDialog]$ADOpenFileBrowse = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'ADBulkUserCreation.resources.ps1')
$ADBulkBack = (New-Object -TypeName System.Windows.Forms.Button)
$ADBulkSubmit = (New-Object -TypeName System.Windows.Forms.Button)
$ADBulkLabel1 = (New-Object -TypeName System.Windows.Forms.Label)
$ADBulkLabel2 = (New-Object -TypeName System.Windows.Forms.Label)
$ADBulkCSVInput = (New-Object -TypeName System.Windows.Forms.TextBox)
$ADBulkLabel3 = (New-Object -TypeName System.Windows.Forms.Label)
$ADBulkOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$ADOpenFileBrowse = (New-Object -TypeName System.Windows.Forms.OpenFileDialog)
$ADBulkBrowseButton = (New-Object -TypeName System.Windows.Forms.Button)
$ADBulkUserCreation.SuspendLayout()
#
#ADBulkBack
#
$ADBulkBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]30,[System.Int32]373))
$ADBulkBack.Name = [System.String]'ADBulkBack'
$ADBulkBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$ADBulkBack.TabIndex = [System.Int32]0
$ADBulkBack.Text = [System.String]'Back'
$ADBulkBack.UseVisualStyleBackColor = $true
$ADBulkBack.Add_Click({CSVBulkBack})
#
#ADBulkSubmit
#
$ADBulkSubmit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]433,[System.Int32]373))
$ADBulkSubmit.Name = [System.String]'ADBulkSubmit'
$ADBulkSubmit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$ADBulkSubmit.TabIndex = [System.Int32]1
$ADBulkSubmit.Text = [System.String]'Submit'
$ADBulkSubmit.UseVisualStyleBackColor = $true
#
#ADBulkLabel1
#
$ADBulkLabel1.AutoSize = $true
$ADBulkLabel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]24,[System.Int32]23))
$ADBulkLabel1.Name = [System.String]'ADBulkLabel1'
$ADBulkLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]343,[System.Int32]13))
$ADBulkLabel1.TabIndex = [System.Int32]2
$ADBulkLabel1.Text = [System.String]'This will aid in the creation of mulitple users simultaneously through CSV'
#
#ADBulkLabel2
#
$ADBulkLabel2.AutoSize = $true
$ADBulkLabel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]27,[System.Int32]53))
$ADBulkLabel2.Name = [System.String]'ADBulkLabel2'
$ADBulkLabel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]112,[System.Int32]13))
$ADBulkLabel2.TabIndex = [System.Int32]3
$ADBulkLabel2.Text = [System.String]'Insert path to CSV file:'
#
#ADBulkCSVInput
#
$ADBulkCSVInput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]27,[System.Int32]70))
$ADBulkCSVInput.Name = [System.String]'ADBulkCSVInput'
$ADBulkCSVInput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]481,[System.Int32]20))
$ADBulkCSVInput.TabIndex = [System.Int32]4
#
#ADBulkLabel3
#
$ADBulkLabel3.AutoSize = $true
$ADBulkLabel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]27,[System.Int32]111))
$ADBulkLabel3.Name = [System.String]'ADBulkLabel3'
$ADBulkLabel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]13))
$ADBulkLabel3.TabIndex = [System.Int32]5
$ADBulkLabel3.Text = [System.String]'Output:'
#
#ADBulkOutput
#
$ADBulkOutput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]27,[System.Int32]127))
$ADBulkOutput.Name = [System.String]'ADBulkOutput'
$ADBulkOutput.ReadOnly = $true
$ADBulkOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]481,[System.Int32]227))
$ADBulkOutput.TabIndex = [System.Int32]6
$ADBulkOutput.Text = [System.String]''
#
#ADOpenFileBrowse
#
$ADOpenFileBrowse.DefaultExt = [System.String]'csv'
$ADOpenFileBrowse.FileName = [System.String]'ADOpenFileBrowse'
$ADOpenFileBrowse.add_FileOk($openFileDialog1_FileOk)
#
#ADBulkBrowseButton
#
$ADBulkBrowseButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]432,[System.Int32]97))
$ADBulkBrowseButton.Name = [System.String]'ADBulkBrowseButton'
$ADBulkBrowseButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$ADBulkBrowseButton.TabIndex = [System.Int32]7
$ADBulkBrowseButton.Text = [System.String]'Browse'
$ADBulkBrowseButton.UseVisualStyleBackColor = $true
$ADBulkBrowseButton.add_Click({ADBulkCSVBrowse})
#
#ADBulkUserCreation
#
$ADBulkUserCreation.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$ADBulkUserCreation.Controls.Add($ADBulkBrowseButton)
$ADBulkUserCreation.Controls.Add($ADBulkOutput)
$ADBulkUserCreation.Controls.Add($ADBulkLabel3)
$ADBulkUserCreation.Controls.Add($ADBulkCSVInput)
$ADBulkUserCreation.Controls.Add($ADBulkLabel2)
$ADBulkUserCreation.Controls.Add($ADBulkLabel1)
$ADBulkUserCreation.Controls.Add($ADBulkSubmit)
$ADBulkUserCreation.Controls.Add($ADBulkBack)
$ADBulkUserCreation.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$ADBulkUserCreation.Name = [System.String]'ADBulkUserCreation'
$ADBulkUserCreation.Text = [System.String]'Bulk User Creation - Aurora Automations'
$ADBulkUserCreation.ResumeLayout($false)
$ADBulkUserCreation.PerformLayout()
Add-Member -InputObject $ADBulkUserCreation -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $ADBulkUserCreation -Name ADBulkBack -Value $ADBulkBack -MemberType NoteProperty
Add-Member -InputObject $ADBulkUserCreation -Name ADBulkSubmit -Value $ADBulkSubmit -MemberType NoteProperty
Add-Member -InputObject $ADBulkUserCreation -Name ADBulkLabel1 -Value $ADBulkLabel1 -MemberType NoteProperty
Add-Member -InputObject $ADBulkUserCreation -Name ADBulkLabel2 -Value $ADBulkLabel2 -MemberType NoteProperty
Add-Member -InputObject $ADBulkUserCreation -Name ADBulkCSVInput -Value $ADBulkCSVInput -MemberType NoteProperty
Add-Member -InputObject $ADBulkUserCreation -Name ADBulkLabel3 -Value $ADBulkLabel3 -MemberType NoteProperty
Add-Member -InputObject $ADBulkUserCreation -Name ADBulkOutput -Value $ADBulkOutput -MemberType NoteProperty
Add-Member -InputObject $ADBulkUserCreation -Name ADBulkBrowseButton -Value $ADBulkBrowseButton -MemberType NoteProperty
Add-Member -InputObject $ADBulkUserCreation -Name ADOpenFileBrowse -Value $ADOpenFileBrowse -MemberType NoteProperty
Add-Member -InputObject $ADBulkUserCreation -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
