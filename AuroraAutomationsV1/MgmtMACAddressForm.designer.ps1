[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$MgmtMACAddressForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$MgmtMACAddressBack = $null
[System.Windows.Forms.Button]$MgmtMACAddressSubmit = $null
[System.Windows.Forms.RichTextBox]$MgmtMACAddressOutput = $null
[System.Windows.Forms.Label]$MgmtMACAddressLabel1 = $null
[System.Windows.Forms.Label]$MgmtMACAddressLabel2 = $null
[System.Windows.Forms.TextBox]$MgmtMACAddressInput = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'MgmtMACAddressForm.resources.ps1')
$MgmtMACAddressBack = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtMACAddressSubmit = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtMACAddressOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$MgmtMACAddressLabel1 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtMACAddressLabel2 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtMACAddressInput = (New-Object -TypeName System.Windows.Forms.TextBox)
$MgmtMACAddressForm.SuspendLayout()
#
#MgmtMACAddressBack
#
$MgmtMACAddressBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]15,[System.Int32]393))
$MgmtMACAddressBack.Name = [System.String]'MgmtMACAddressBack'
$MgmtMACAddressBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$MgmtMACAddressBack.TabIndex = [System.Int32]0
$MgmtMACAddressBack.Text = [System.String]'Back'
$MgmtMACAddressBack.UseVisualStyleBackColor = $true
$MgmtMACAddressBack.add_Click({MACBack})
#
#MgmtMACAddressSubmit
#
$MgmtMACAddressSubmit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]537,[System.Int32]85))
$MgmtMACAddressSubmit.Name = [System.String]'MgmtMACAddressSubmit'
$MgmtMACAddressSubmit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$MgmtMACAddressSubmit.TabIndex = [System.Int32]1
$MgmtMACAddressSubmit.Text = [System.String]'Submit'
$MgmtMACAddressSubmit.UseVisualStyleBackColor = $true
$MgmtMACAddressSubmit.add_Click({MACFormSubmit})
#
#MgmtMACAddressOutput
#
$MgmtMACAddressOutput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]77))
$MgmtMACAddressOutput.Name = [System.String]'MgmtMACAddressOutput'
$MgmtMACAddressOutput.ReadOnly = $true
$MgmtMACAddressOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]378,[System.Int32]300))
$MgmtMACAddressOutput.TabIndex = [System.Int32]3
$MgmtMACAddressOutput.Text = [System.String]''
#
#MgmtMACAddressLabel1
#
$MgmtMACAddressLabel1.AutoSize = $true
$MgmtMACAddressLabel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]22))
$MgmtMACAddressLabel1.Name = [System.String]'MgmtMACAddressLabel1'
$MgmtMACAddressLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]303,[System.Int32]13))
$MgmtMACAddressLabel1.TabIndex = [System.Int32]4
$MgmtMACAddressLabel1.Text = [System.String]'This will generate random MAC Addresses for testing purposes.'
#
#MgmtMACAddressLabel2
#
$MgmtMACAddressLabel2.AutoSize = $true
$MgmtMACAddressLabel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]51))
$MgmtMACAddressLabel2.Name = [System.String]'MgmtMACAddressLabel2'
$MgmtMACAddressLabel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]13))
$MgmtMACAddressLabel2.TabIndex = [System.Int32]5
$MgmtMACAddressLabel2.Text = [System.String]'Output:'
#
#MgmtMACAddressInput
#
$MgmtMACAddressInput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]405,[System.Int32]87))
$MgmtMACAddressInput.Name = [System.String]'MgmtMACAddressInput'
$MgmtMACAddressInput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]109,[System.Int32]20))
$MgmtMACAddressInput.TabIndex = [System.Int32]2
#
#MgmtMACAddressForm
#
$MgmtMACAddressForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$MgmtMACAddressForm.Controls.Add($MgmtMACAddressLabel2)
$MgmtMACAddressForm.Controls.Add($MgmtMACAddressLabel1)
$MgmtMACAddressForm.Controls.Add($MgmtMACAddressOutput)
$MgmtMACAddressForm.Controls.Add($MgmtMACAddressInput)
$MgmtMACAddressForm.Controls.Add($MgmtMACAddressSubmit)
$MgmtMACAddressForm.Controls.Add($MgmtMACAddressBack)
$MgmtMACAddressForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$MgmtMACAddressForm.Name = [System.String]'MgmtMACAddressForm'
$MgmtMACAddressForm.Text = [System.String]'Generate MAC Addresses - Aurora Automations'
$MgmtMACAddressForm.ResumeLayout($false)
$MgmtMACAddressForm.PerformLayout()
Add-Member -InputObject $MgmtMACAddressForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $MgmtMACAddressForm -Name MgmtMACAddressBack -Value $MgmtMACAddressBack -MemberType NoteProperty
Add-Member -InputObject $MgmtMACAddressForm -Name MgmtMACAddressSubmit -Value $MgmtMACAddressSubmit -MemberType NoteProperty
Add-Member -InputObject $MgmtMACAddressForm -Name MgmtMACAddressOutput -Value $MgmtMACAddressOutput -MemberType NoteProperty
Add-Member -InputObject $MgmtMACAddressForm -Name MgmtMACAddressLabel1 -Value $MgmtMACAddressLabel1 -MemberType NoteProperty
Add-Member -InputObject $MgmtMACAddressForm -Name MgmtMACAddressLabel2 -Value $MgmtMACAddressLabel2 -MemberType NoteProperty
Add-Member -InputObject $MgmtMACAddressForm -Name MgmtMACAddressInput -Value $MgmtMACAddressInput -MemberType NoteProperty
Add-Member -InputObject $MgmtMACAddressForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
