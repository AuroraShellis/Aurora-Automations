[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$DiagADDetails = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$DiagADDetailsBack = $null
[System.Windows.Forms.Button]$DiagADDetailsSubmit = $null
[System.Windows.Forms.RichTextBox]$DiagADDetailsOutput = $null
[System.Windows.Forms.Label]$DiagADDetailsLabel1 = $null
[System.Windows.Forms.Label]$DiagADDetailsLabel2 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'DiagADDetails.resources.ps1')
$DiagADDetailsBack = (New-Object -TypeName System.Windows.Forms.Button)
$DiagADDetailsSubmit = (New-Object -TypeName System.Windows.Forms.Button)
$DiagADDetailsOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$DiagADDetailsLabel1 = (New-Object -TypeName System.Windows.Forms.Label)
$DiagADDetailsLabel2 = (New-Object -TypeName System.Windows.Forms.Label)
$DiagADDetails.SuspendLayout()
#
#DiagADDetailsBack
#
$DiagADDetailsBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]39,[System.Int32]384))
$DiagADDetailsBack.Name = [System.String]'DiagADDetailsBack'
$DiagADDetailsBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$DiagADDetailsBack.TabIndex = [System.Int32]0
$DiagADDetailsBack.Text = [System.String]'Back'
$DiagADDetailsBack.UseVisualStyleBackColor = $true
$DiagADDetailsBack.add_Click({ActiveDirectortDetailsBack})
#
#DiagADDetailsSubmit
#
$DiagADDetailsSubmit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]495,[System.Int32]384))
$DiagADDetailsSubmit.Name = [System.String]'DiagADDetailsSubmit'
$DiagADDetailsSubmit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$DiagADDetailsSubmit.TabIndex = [System.Int32]1
$DiagADDetailsSubmit.Text = [System.String]'Refresh'
$DiagADDetailsSubmit.UseVisualStyleBackColor = $true
$DiagADDetailsSubmit.add_Click({RefreshActiveDirectoryDetails})
#
#DiagADDetailsOutput
#
$DiagADDetailsOutput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]39,[System.Int32]74))
$DiagADDetailsOutput.Name = [System.String]'DiagADDetailsOutput'
$DiagADDetailsOutput.ReadOnly = $true
$DiagADDetailsOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]531,[System.Int32]293))
$DiagADDetailsOutput.TabIndex = [System.Int32]2
$DiagADDetailsOutput.Text = [System.String]''
#
#DiagADDetailsLabel1
#
$DiagADDetailsLabel1.AutoSize = $true
$DiagADDetailsLabel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]36,[System.Int32]22))
$DiagADDetailsLabel1.Name = [System.String]'DiagADDetailsLabel1'
$DiagADDetailsLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]262,[System.Int32]13))
$DiagADDetailsLabel1.TabIndex = [System.Int32]3
$DiagADDetailsLabel1.Text = [System.String]'This will list the details of your Active Directory Domain'
#
#DiagADDetailsLabel2
#
$DiagADDetailsLabel2.AutoSize = $true
$DiagADDetailsLabel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]36,[System.Int32]58))
$DiagADDetailsLabel2.Name = [System.String]'DiagADDetailsLabel2'
$DiagADDetailsLabel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]13))
$DiagADDetailsLabel2.TabIndex = [System.Int32]4
$DiagADDetailsLabel2.Text = [System.String]'Output:'
#
#DiagADDetails
#
$DiagADDetails.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$DiagADDetails.Controls.Add($DiagADDetailsLabel2)
$DiagADDetails.Controls.Add($DiagADDetailsLabel1)
$DiagADDetails.Controls.Add($DiagADDetailsOutput)
$DiagADDetails.Controls.Add($DiagADDetailsSubmit)
$DiagADDetails.Controls.Add($DiagADDetailsBack)
$DiagADDetails.MaximizeBox = $false
$DiagADDetails.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$DiagADDetails.StartPosition = [System.Windows.Forms.FormStartPosition]::Manual
$DiagADDetails.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$DiagADDetails.Name = [System.String]'DiagADDetails'
$DiagADDetails.Text = [System.String]'Active Directory Details and Information - Aurora Automations'
$DiagADDetails.ResumeLayout($false)
$DiagADDetails.PerformLayout()
Add-Member -InputObject $DiagADDetails -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $DiagADDetails -Name DiagADDetailsBack -Value $DiagADDetailsBack -MemberType NoteProperty
Add-Member -InputObject $DiagADDetails -Name DiagADDetailsSubmit -Value $DiagADDetailsSubmit -MemberType NoteProperty
Add-Member -InputObject $DiagADDetails -Name DiagADDetailsOutput -Value $DiagADDetailsOutput -MemberType NoteProperty
Add-Member -InputObject $DiagADDetails -Name DiagADDetailsLabel1 -Value $DiagADDetailsLabel1 -MemberType NoteProperty
Add-Member -InputObject $DiagADDetails -Name DiagADDetailsLabel2 -Value $DiagADDetailsLabel2 -MemberType NoteProperty
Add-Member -InputObject $DiagADDetails -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
