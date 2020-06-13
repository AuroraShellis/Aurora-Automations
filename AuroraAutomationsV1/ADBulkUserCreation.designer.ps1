[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$ADBulkUserCreation = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$ADBulkBack = $null
[System.Windows.Forms.Button]$ADBulkSubmit = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'ADBulkUserCreation.resources.ps1')
$ADBulkBack = (New-Object -TypeName System.Windows.Forms.Button)
$ADBulkSubmit = (New-Object -TypeName System.Windows.Forms.Button)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$ADBulkUserCreation.SuspendLayout()
#
#ADBulkBack
#
$ADBulkBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]46,[System.Int32]373))
$ADBulkBack.Name = [System.String]'ADBulkBack'
$ADBulkBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$ADBulkBack.TabIndex = [System.Int32]0
$ADBulkBack.Text = [System.String]'Back'
$ADBulkBack.UseVisualStyleBackColor = $true
#
#ADBulkSubmit
#
$ADBulkSubmit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]205,[System.Int32]373))
$ADBulkSubmit.Name = [System.String]'ADBulkSubmit'
$ADBulkSubmit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$ADBulkSubmit.TabIndex = [System.Int32]1
$ADBulkSubmit.Text = [System.String]'Submit'
$ADBulkSubmit.UseVisualStyleBackColor = $true
#
#label1
#
$label1.AutoSize = $true
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]24,[System.Int32]23))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]63,[System.Int32]13))
$label1.TabIndex = [System.Int32]2
$label1.Text = [System.String]'Placeholder'
#
#ADBulkUserCreation
#
$ADBulkUserCreation.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$ADBulkUserCreation.Controls.Add($label1)
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
Add-Member -InputObject $ADBulkUserCreation -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $ADBulkUserCreation -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
