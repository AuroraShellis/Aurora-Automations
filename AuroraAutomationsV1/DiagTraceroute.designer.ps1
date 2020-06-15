[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$DiagTraceroute = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$DiagTraceBack = $null
[System.Windows.Forms.Button]$DiagTraceSubmit = $null
[System.Windows.Forms.TextBox]$DiagTraceInput = $null
[System.Windows.Forms.RichTextBox]$DiagTraceOutput = $null
[System.Windows.Forms.Label]$DiagTraceLabel1 = $null
[System.Windows.Forms.Label]$DiagTraceLabel2 = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'DiagTraceroute.resources.ps1')
$DiagTraceBack = (New-Object -TypeName System.Windows.Forms.Button)
$DiagTraceSubmit = (New-Object -TypeName System.Windows.Forms.Button)
$DiagTraceInput = (New-Object -TypeName System.Windows.Forms.TextBox)
$DiagTraceOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$DiagTraceLabel1 = (New-Object -TypeName System.Windows.Forms.Label)
$DiagTraceLabel2 = (New-Object -TypeName System.Windows.Forms.Label)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$DiagTraceroute.SuspendLayout()
#
#DiagTraceBack
#
$DiagTraceBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]28,[System.Int32]396))
$DiagTraceBack.Name = [System.String]'DiagTraceBack'
$DiagTraceBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$DiagTraceBack.TabIndex = [System.Int32]0
$DiagTraceBack.Text = [System.String]'Back'
$DiagTraceBack.UseVisualStyleBackColor = $true
#
#DiagTraceSubmit
#
$DiagTraceSubmit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]454,[System.Int32]116))
$DiagTraceSubmit.Name = [System.String]'DiagTraceSubmit'
$DiagTraceSubmit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]23))
$DiagTraceSubmit.TabIndex = [System.Int32]1
$DiagTraceSubmit.Text = [System.String]'Traceroute'
$DiagTraceSubmit.UseVisualStyleBackColor = $true
#
#DiagTraceInput
#
$DiagTraceInput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]454,[System.Int32]90))
$DiagTraceInput.Name = [System.String]'DiagTraceInput'
$DiagTraceInput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]20))
$DiagTraceInput.TabIndex = [System.Int32]2
#
#DiagTraceOutput
#
$DiagTraceOutput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]28,[System.Int32]81))
$DiagTraceOutput.Name = [System.String]'DiagTraceOutput'
$DiagTraceOutput.ReadOnly = $true
$DiagTraceOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]406,[System.Int32]295))
$DiagTraceOutput.TabIndex = [System.Int32]3
$DiagTraceOutput.Text = [System.String]''
#
#DiagTraceLabel1
#
$DiagTraceLabel1.AutoSize = $true
$DiagTraceLabel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]25,[System.Int32]25))
$DiagTraceLabel1.Name = [System.String]'DiagTraceLabel1'
$DiagTraceLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]219,[System.Int32]13))
$DiagTraceLabel1.TabIndex = [System.Int32]4
$DiagTraceLabel1.Text = [System.String]'This will test your connection to IP addresses'
#
#DiagTraceLabel2
#
$DiagTraceLabel2.AutoSize = $true
$DiagTraceLabel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]25,[System.Int32]53))
$DiagTraceLabel2.Name = [System.String]'DiagTraceLabel2'
$DiagTraceLabel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]13))
$DiagTraceLabel2.TabIndex = [System.Int32]5
$DiagTraceLabel2.Text = [System.String]'Output:'
#
#label1
#
$label1.AutoSize = $true
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]451,[System.Int32]62))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]88,[System.Int32]13))
$label1.TabIndex = [System.Int32]6
$label1.Text = [System.String]'Enter IP address:'
#
#DiagTraceroute
#
$DiagTraceroute.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$DiagTraceroute.Controls.Add($label1)
$DiagTraceroute.Controls.Add($DiagTraceLabel2)
$DiagTraceroute.Controls.Add($DiagTraceLabel1)
$DiagTraceroute.Controls.Add($DiagTraceOutput)
$DiagTraceroute.Controls.Add($DiagTraceInput)
$DiagTraceroute.Controls.Add($DiagTraceSubmit)
$DiagTraceroute.Controls.Add($DiagTraceBack)
$DiagTraceroute.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$DiagTraceroute.Name = [System.String]'DiagTraceroute'
$DiagTraceroute.Text = [System.String]'Connection Test - Aurora Automations'
$DiagTraceroute.ResumeLayout($false)
$DiagTraceroute.PerformLayout()
Add-Member -InputObject $DiagTraceroute -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $DiagTraceroute -Name DiagTraceBack -Value $DiagTraceBack -MemberType NoteProperty
Add-Member -InputObject $DiagTraceroute -Name DiagTraceSubmit -Value $DiagTraceSubmit -MemberType NoteProperty
Add-Member -InputObject $DiagTraceroute -Name DiagTraceInput -Value $DiagTraceInput -MemberType NoteProperty
Add-Member -InputObject $DiagTraceroute -Name DiagTraceOutput -Value $DiagTraceOutput -MemberType NoteProperty
Add-Member -InputObject $DiagTraceroute -Name DiagTraceLabel1 -Value $DiagTraceLabel1 -MemberType NoteProperty
Add-Member -InputObject $DiagTraceroute -Name DiagTraceLabel2 -Value $DiagTraceLabel2 -MemberType NoteProperty
Add-Member -InputObject $DiagTraceroute -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $DiagTraceroute -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
