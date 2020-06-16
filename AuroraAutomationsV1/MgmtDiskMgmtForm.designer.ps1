[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$MgmtDiskMgmtForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$MgmtDiskMgmtBack = $null
[System.Windows.Forms.Button]$MgmtDiskMgmtQuery = $null
[System.Windows.Forms.Button]$MgmtDiskMgmtSubmit = $null
[System.Windows.Forms.TextBox]$MgmtDiskMgmtInput = $null
[System.Windows.Forms.RichTextBox]$MgmtDiskMgmtOutput = $null
[System.Windows.Forms.Label]$MgmtDiskMgmtLabel1 = $null
[System.Windows.Forms.Label]$MgmtDiskMgmtLabel2 = $null
[System.Windows.Forms.Label]$MgmtDiskMgmtLabel3 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'MgmtDiskMgmtForm.resources.ps1')
$MgmtDiskMgmtBack = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtDiskMgmtQuery = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtDiskMgmtSubmit = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtDiskMgmtInput = (New-Object -TypeName System.Windows.Forms.TextBox)
$MgmtDiskMgmtOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$MgmtDiskMgmtLabel1 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtDiskMgmtLabel2 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtDiskMgmtLabel3 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtDiskMgmtForm.SuspendLayout()
#
#MgmtDiskMgmtBack
#
$MgmtDiskMgmtBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]389))
$MgmtDiskMgmtBack.Name = [System.String]'MgmtDiskMgmtBack'
$MgmtDiskMgmtBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$MgmtDiskMgmtBack.TabIndex = [System.Int32]0
$MgmtDiskMgmtBack.Text = [System.String]'Back'
$MgmtDiskMgmtBack.UseVisualStyleBackColor = $true
#
#MgmtDiskMgmtQuery
#
$MgmtDiskMgmtQuery.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]275,[System.Int32]389))
$MgmtDiskMgmtQuery.Name = [System.String]'MgmtDiskMgmtQuery'
$MgmtDiskMgmtQuery.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]131,[System.Int32]23))
$MgmtDiskMgmtQuery.TabIndex = [System.Int32]1
$MgmtDiskMgmtQuery.Text = [System.String]'Query Local Computer'
$MgmtDiskMgmtQuery.UseVisualStyleBackColor = $true
#
#MgmtDiskMgmtSubmit
#
$MgmtDiskMgmtSubmit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]527,[System.Int32]120))
$MgmtDiskMgmtSubmit.Name = [System.String]'MgmtDiskMgmtSubmit'
$MgmtDiskMgmtSubmit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$MgmtDiskMgmtSubmit.TabIndex = [System.Int32]2
$MgmtDiskMgmtSubmit.Text = [System.String]'Submit'
$MgmtDiskMgmtSubmit.UseVisualStyleBackColor = $true
#
#MgmtDiskMgmtInput
#
$MgmtDiskMgmtInput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]426,[System.Int32]79))
$MgmtDiskMgmtInput.Name = [System.String]'MgmtDiskMgmtInput'
$MgmtDiskMgmtInput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]176,[System.Int32]20))
$MgmtDiskMgmtInput.TabIndex = [System.Int32]3
#
#MgmtDiskMgmtOutput
#
$MgmtDiskMgmtOutput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]79))
$MgmtDiskMgmtOutput.Name = [System.String]'MgmtDiskMgmtOutput'
$MgmtDiskMgmtOutput.ReadOnly = $true
$MgmtDiskMgmtOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]394,[System.Int32]293))
$MgmtDiskMgmtOutput.TabIndex = [System.Int32]4
$MgmtDiskMgmtOutput.Text = [System.String]''
#
#MgmtDiskMgmtLabel1
#
$MgmtDiskMgmtLabel1.AutoSize = $true
$MgmtDiskMgmtLabel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]20))
$MgmtDiskMgmtLabel1.Name = [System.String]'MgmtDiskMgmtLabel1'
$MgmtDiskMgmtLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]361,[System.Int32]13))
$MgmtDiskMgmtLabel1.TabIndex = [System.Int32]5
$MgmtDiskMgmtLabel1.Text = [System.String]'This will list disks located on both the local computer and remote computers'
#
#MgmtDiskMgmtLabel2
#
$MgmtDiskMgmtLabel2.AutoSize = $true
$MgmtDiskMgmtLabel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]54))
$MgmtDiskMgmtLabel2.Name = [System.String]'MgmtDiskMgmtLabel2'
$MgmtDiskMgmtLabel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]13))
$MgmtDiskMgmtLabel2.TabIndex = [System.Int32]6
$MgmtDiskMgmtLabel2.Text = [System.String]'Output:'
#
#MgmtDiskMgmtLabel3
#
$MgmtDiskMgmtLabel3.AutoSize = $true
$MgmtDiskMgmtLabel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]423,[System.Int32]54))
$MgmtDiskMgmtLabel3.Name = [System.String]'MgmtDiskMgmtLabel3'
$MgmtDiskMgmtLabel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]163,[System.Int32]13))
$MgmtDiskMgmtLabel3.TabIndex = [System.Int32]7
$MgmtDiskMgmtLabel3.Text = [System.String]'Insert FQDN of remote computer:'
#
#MgmtDiskMgmtForm
#
$MgmtDiskMgmtForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$MgmtDiskMgmtForm.Controls.Add($MgmtDiskMgmtLabel3)
$MgmtDiskMgmtForm.Controls.Add($MgmtDiskMgmtLabel2)
$MgmtDiskMgmtForm.Controls.Add($MgmtDiskMgmtLabel1)
$MgmtDiskMgmtForm.Controls.Add($MgmtDiskMgmtOutput)
$MgmtDiskMgmtForm.Controls.Add($MgmtDiskMgmtInput)
$MgmtDiskMgmtForm.Controls.Add($MgmtDiskMgmtSubmit)
$MgmtDiskMgmtForm.Controls.Add($MgmtDiskMgmtQuery)
$MgmtDiskMgmtForm.Controls.Add($MgmtDiskMgmtBack)
$MgmtDiskMgmtForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$MgmtDiskMgmtForm.Name = [System.String]'MgmtDiskMgmtForm'
$MgmtDiskMgmtForm.Text = [System.String]'Remote and Local Disk Management - Aurora Automations'
$MgmtDiskMgmtForm.ResumeLayout($false)
$MgmtDiskMgmtForm.PerformLayout()
Add-Member -InputObject $MgmtDiskMgmtForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $MgmtDiskMgmtForm -Name MgmtDiskMgmtBack -Value $MgmtDiskMgmtBack -MemberType NoteProperty
Add-Member -InputObject $MgmtDiskMgmtForm -Name MgmtDiskMgmtQuery -Value $MgmtDiskMgmtQuery -MemberType NoteProperty
Add-Member -InputObject $MgmtDiskMgmtForm -Name MgmtDiskMgmtSubmit -Value $MgmtDiskMgmtSubmit -MemberType NoteProperty
Add-Member -InputObject $MgmtDiskMgmtForm -Name MgmtDiskMgmtInput -Value $MgmtDiskMgmtInput -MemberType NoteProperty
Add-Member -InputObject $MgmtDiskMgmtForm -Name MgmtDiskMgmtOutput -Value $MgmtDiskMgmtOutput -MemberType NoteProperty
Add-Member -InputObject $MgmtDiskMgmtForm -Name MgmtDiskMgmtLabel1 -Value $MgmtDiskMgmtLabel1 -MemberType NoteProperty
Add-Member -InputObject $MgmtDiskMgmtForm -Name MgmtDiskMgmtLabel2 -Value $MgmtDiskMgmtLabel2 -MemberType NoteProperty
Add-Member -InputObject $MgmtDiskMgmtForm -Name MgmtDiskMgmtLabel3 -Value $MgmtDiskMgmtLabel3 -MemberType NoteProperty
Add-Member -InputObject $MgmtDiskMgmtForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
