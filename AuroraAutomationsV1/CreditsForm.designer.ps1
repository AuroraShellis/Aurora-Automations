[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$CreditsForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$CreditsBack = $null
[System.Windows.Forms.RichTextBox]$CreditsOutput = $null
[System.Windows.Forms.PictureBox]$CreditsPictureBox = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'CreditsForm.resources.ps1')
$CreditsBack = (New-Object -TypeName System.Windows.Forms.Button)
$CreditsOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$CreditsPictureBox = (New-Object -TypeName System.Windows.Forms.PictureBox)
([System.ComponentModel.ISupportInitialize]$CreditsPictureBox).BeginInit()
$CreditsForm.SuspendLayout()
#
#CreditsBack
#
$CreditsBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]30,[System.Int32]400))
$CreditsBack.Name = [System.String]'CreditsBack'
$CreditsBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$CreditsBack.TabIndex = [System.Int32]0
$CreditsBack.Text = [System.String]'Back'
$CreditsBack.UseVisualStyleBackColor = $true
$CreditsBack.add_Click({CreditsBack})
#
#CreditsOutput
#
$CreditsOutput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]30,[System.Int32]47))
$CreditsOutput.Name = [System.String]'CreditsOutput'
$CreditsOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]326,[System.Int32]330))
$CreditsOutput.TabIndex = [System.Int32]2
$CreditsOutput.Text = [System.String]''
#
#CreditsPictureBox
#
$CreditsPictureBox.Image = ([System.Drawing.Image]$resources.'CreditsPictureBox.Image')
$CreditsPictureBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]385,[System.Int32]99))
$CreditsPictureBox.Name = [System.String]'CreditsPictureBox'
$CreditsPictureBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]238,[System.Int32]228))
$CreditsPictureBox.TabIndex = [System.Int32]3
$CreditsPictureBox.TabStop = $false
#
#CreditsForm
#
$CreditsForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$CreditsForm.Controls.Add($CreditsPictureBox)
$CreditsForm.Controls.Add($CreditsOutput)
$CreditsForm.Controls.Add($CreditsBack)
$CreditsForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$CreditsForm.Name = [System.String]'CreditsForm'
$CreditsForm.Text = [System.String]'Credits - Aurora Automations'
([System.ComponentModel.ISupportInitialize]$CreditsPictureBox).EndInit()
$CreditsForm.ResumeLayout($false)
Add-Member -InputObject $CreditsForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $CreditsForm -Name CreditsBack -Value $CreditsBack -MemberType NoteProperty
Add-Member -InputObject $CreditsForm -Name CreditsOutput -Value $CreditsOutput -MemberType NoteProperty
Add-Member -InputObject $CreditsForm -Name CreditsPictureBox -Value $CreditsPictureBox -MemberType NoteProperty
Add-Member -InputObject $CreditsForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
