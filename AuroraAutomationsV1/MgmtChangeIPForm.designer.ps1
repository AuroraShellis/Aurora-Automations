[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$MgmtChangeIPForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$MgmtChangeIPBack = $null
[System.Windows.Forms.Button]$MgmtChangeIPQuery = $null
[System.Windows.Forms.Button]$MgmtChangeIPSubmit = $null
[System.Windows.Forms.TextBox]$MgmtChangeIPInput = $null
[System.Windows.Forms.TextBox]$MgmtChangeIPSubnet = $null
[System.Windows.Forms.TextBox]$MgmtChangeIPGateway = $null
[System.Windows.Forms.TextBox]$MgmtChangeIPPrefDNS = $null
[System.Windows.Forms.TextBox]$MgmtChangeIPAltDNS = $null
[System.Windows.Forms.RichTextBox]$MgmtChangeIPOutput = $null
[System.Windows.Forms.Label]$MgmtChangeIPLabel1 = $null
[System.Windows.Forms.Label]$MgmtChangeIPLabel2 = $null
[System.Windows.Forms.Label]$MgmtChangeIPLabel3 = $null
[System.Windows.Forms.Label]$MgmtChangeIPLabel4 = $null
[System.Windows.Forms.Label]$MgmtChangeIPLabel5 = $null
[System.Windows.Forms.Label]$MgmtChangeIPLabel6 = $null
[System.Windows.Forms.Label]$MgmtChangeIPLabel7 = $null
[System.Windows.Forms.Label]$MgmtChangeIPLabel69 = $null
[System.Windows.Forms.TextBox]$MgmtChangeAdapterInput = $null
[System.Windows.Forms.Button]$QueryNetworkAdaptorsSubmit = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'MgmtChangeIPForm.resources.ps1')
$MgmtChangeIPBack = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtChangeIPQuery = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtChangeIPSubmit = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtChangeIPInput = (New-Object -TypeName System.Windows.Forms.TextBox)
$MgmtChangeIPSubnet = (New-Object -TypeName System.Windows.Forms.TextBox)
$MgmtChangeIPGateway = (New-Object -TypeName System.Windows.Forms.TextBox)
$MgmtChangeIPPrefDNS = (New-Object -TypeName System.Windows.Forms.TextBox)
$MgmtChangeIPAltDNS = (New-Object -TypeName System.Windows.Forms.TextBox)
$MgmtChangeIPOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$MgmtChangeIPLabel1 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtChangeIPLabel2 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtChangeIPLabel3 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtChangeIPLabel4 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtChangeIPLabel5 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtChangeIPLabel6 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtChangeIPLabel7 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtChangeIPLabel69 = (New-Object -TypeName System.Windows.Forms.Label)
$MgmtChangeAdapterInput = (New-Object -TypeName System.Windows.Forms.TextBox)
$QueryNetworkAdaptorsSubmit = (New-Object -TypeName System.Windows.Forms.Button)
$MgmtChangeIPForm.SuspendLayout()
#
#MgmtChangeIPBack
#
$MgmtChangeIPBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]15,[System.Int32]394))
$MgmtChangeIPBack.Name = [System.String]'MgmtChangeIPBack'
$MgmtChangeIPBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$MgmtChangeIPBack.TabIndex = [System.Int32]0
$MgmtChangeIPBack.Text = [System.String]'Back'
$MgmtChangeIPBack.UseVisualStyleBackColor = $true
$MgmtChangeIPBack.add_Click({ChangeIPAddressBack})
#
#MgmtChangeIPQuery
#
$MgmtChangeIPQuery.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]296,[System.Int32]394))
$MgmtChangeIPQuery.Name = [System.String]'MgmtChangeIPQuery'
$MgmtChangeIPQuery.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]120,[System.Int32]23))
$MgmtChangeIPQuery.TabIndex = [System.Int32]1
$MgmtChangeIPQuery.Text = [System.String]' Local Computer IP'
$MgmtChangeIPQuery.UseVisualStyleBackColor = $true
$MgmtChangeIPQuery.add_Click({QueryComputerIPAddress})
#
#MgmtChangeIPSubmit
#
$MgmtChangeIPSubmit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]537,[System.Int32]394))
$MgmtChangeIPSubmit.Name = [System.String]'MgmtChangeIPSubmit'
$MgmtChangeIPSubmit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$MgmtChangeIPSubmit.TabIndex = [System.Int32]2
$MgmtChangeIPSubmit.Text = [System.String]'Submit'
$MgmtChangeIPSubmit.UseVisualStyleBackColor = $true
$MgmtChangeIPSubmit.add_Click({ChangeIPAddressSubmit})
#
#MgmtChangeIPInput
#
$MgmtChangeIPInput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]442,[System.Int32]184))
$MgmtChangeIPInput.Name = [System.String]'MgmtChangeIPInput'
$MgmtChangeIPInput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]167,[System.Int32]20))
$MgmtChangeIPInput.TabIndex = [System.Int32]3
#
#MgmtChangeIPSubnet
#
$MgmtChangeIPSubnet.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]442,[System.Int32]232))
$MgmtChangeIPSubnet.Name = [System.String]'MgmtChangeIPSubnet'
$MgmtChangeIPSubnet.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]167,[System.Int32]20))
$MgmtChangeIPSubnet.TabIndex = [System.Int32]4
#
#MgmtChangeIPGateway
#
$MgmtChangeIPGateway.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]442,[System.Int32]281))
$MgmtChangeIPGateway.Name = [System.String]'MgmtChangeIPGateway'
$MgmtChangeIPGateway.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]170,[System.Int32]20))
$MgmtChangeIPGateway.TabIndex = [System.Int32]5
#
#MgmtChangeIPPrefDNS
#
$MgmtChangeIPPrefDNS.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]442,[System.Int32]321))
$MgmtChangeIPPrefDNS.Name = [System.String]'MgmtChangeIPPrefDNS'
$MgmtChangeIPPrefDNS.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]170,[System.Int32]20))
$MgmtChangeIPPrefDNS.TabIndex = [System.Int32]6
#
#MgmtChangeIPAltDNS
#
$MgmtChangeIPAltDNS.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]442,[System.Int32]360))
$MgmtChangeIPAltDNS.Name = [System.String]'MgmtChangeIPAltDNS'
$MgmtChangeIPAltDNS.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]170,[System.Int32]20))
$MgmtChangeIPAltDNS.TabIndex = [System.Int32]7
#
#MgmtChangeIPOutput
#
$MgmtChangeIPOutput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]15,[System.Int32]72))
$MgmtChangeIPOutput.Name = [System.String]'MgmtChangeIPOutput'
$MgmtChangeIPOutput.ReadOnly = $true
$MgmtChangeIPOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]401,[System.Int32]308))
$MgmtChangeIPOutput.TabIndex = [System.Int32]8
$MgmtChangeIPOutput.Text = [System.String]''
#
#MgmtChangeIPLabel1
#
$MgmtChangeIPLabel1.AutoSize = $true
$MgmtChangeIPLabel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]22))
$MgmtChangeIPLabel1.Name = [System.String]'MgmtChangeIPLabel1'
$MgmtChangeIPLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]300,[System.Int32]13))
$MgmtChangeIPLabel1.TabIndex = [System.Int32]9
$MgmtChangeIPLabel1.Text = [System.String]'This will aid with assigning an IP address to the local computer'
#
#MgmtChangeIPLabel2
#
$MgmtChangeIPLabel2.AutoSize = $true
$MgmtChangeIPLabel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]52))
$MgmtChangeIPLabel2.Name = [System.String]'MgmtChangeIPLabel2'
$MgmtChangeIPLabel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]13))
$MgmtChangeIPLabel2.TabIndex = [System.Int32]10
$MgmtChangeIPLabel2.Text = [System.String]'Output:'
#
#MgmtChangeIPLabel3
#
$MgmtChangeIPLabel3.AutoSize = $true
$MgmtChangeIPLabel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]439,[System.Int32]168))
$MgmtChangeIPLabel3.Name = [System.String]'MgmtChangeIPLabel3'
$MgmtChangeIPLabel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]61,[System.Int32]13))
$MgmtChangeIPLabel3.TabIndex = [System.Int32]11
$MgmtChangeIPLabel3.Text = [System.String]'IP Address:'
#
#MgmtChangeIPLabel4
#
$MgmtChangeIPLabel4.AutoSize = $true
$MgmtChangeIPLabel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]439,[System.Int32]216))
$MgmtChangeIPLabel4.Name = [System.String]'MgmtChangeIPLabel4'
$MgmtChangeIPLabel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]13))
$MgmtChangeIPLabel4.TabIndex = [System.Int32]12
$MgmtChangeIPLabel4.Text = [System.String]'Subnet Mask:'
#
#MgmtChangeIPLabel5
#
$MgmtChangeIPLabel5.AutoSize = $true
$MgmtChangeIPLabel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]439,[System.Int32]265))
$MgmtChangeIPLabel5.Name = [System.String]'MgmtChangeIPLabel5'
$MgmtChangeIPLabel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]89,[System.Int32]13))
$MgmtChangeIPLabel5.TabIndex = [System.Int32]13
$MgmtChangeIPLabel5.Text = [System.String]'Default Gateway:'
#
#MgmtChangeIPLabel6
#
$MgmtChangeIPLabel6.AutoSize = $true
$MgmtChangeIPLabel6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]439,[System.Int32]304))
$MgmtChangeIPLabel6.Name = [System.String]'MgmtChangeIPLabel6'
$MgmtChangeIPLabel6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]79,[System.Int32]13))
$MgmtChangeIPLabel6.TabIndex = [System.Int32]14
$MgmtChangeIPLabel6.Text = [System.String]'Preferred DNS:'
#
#MgmtChangeIPLabel7
#
$MgmtChangeIPLabel7.AutoSize = $true
$MgmtChangeIPLabel7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]439,[System.Int32]344))
$MgmtChangeIPLabel7.Name = [System.String]'MgmtChangeIPLabel7'
$MgmtChangeIPLabel7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]86,[System.Int32]13))
$MgmtChangeIPLabel7.TabIndex = [System.Int32]15
$MgmtChangeIPLabel7.Text = [System.String]'Alternative DNS:'
#
#MgmtChangeIPLabel69
#
$MgmtChangeIPLabel69.AutoSize = $true
$MgmtChangeIPLabel69.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]439,[System.Int32]129))
$MgmtChangeIPLabel69.Name = [System.String]'MgmtChangeIPLabel69'
$MgmtChangeIPLabel69.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]77,[System.Int32]13))
$MgmtChangeIPLabel69.TabIndex = [System.Int32]17
$MgmtChangeIPLabel69.Text = [System.String]'Interface Alias:'
#
#MgmtChangeAdapterInput
#
$MgmtChangeAdapterInput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]442,[System.Int32]145))
$MgmtChangeAdapterInput.Name = [System.String]'MgmtChangeAdapterInput'
$MgmtChangeAdapterInput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]167,[System.Int32]20))
$MgmtChangeAdapterInput.TabIndex = [System.Int32]16
#
#QueryNetworkAdaptorsSubmit
#
$QueryNetworkAdaptorsSubmit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]175,[System.Int32]394))
$QueryNetworkAdaptorsSubmit.Name = [System.String]'QueryNetworkAdaptorsSubmit'
$QueryNetworkAdaptorsSubmit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]106,[System.Int32]23))
$QueryNetworkAdaptorsSubmit.TabIndex = [System.Int32]18
$QueryNetworkAdaptorsSubmit.Text = [System.String]'Query Adaptors'
$QueryNetworkAdaptorsSubmit.UseVisualStyleBackColor = $true
$QueryNetworkAdaptorsSubmit.add_Click({QueryAdaptors})
#
#MgmtChangeIPForm
#
$MgmtChangeIPForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$MgmtChangeIPForm.Controls.Add($QueryNetworkAdaptorsSubmit)
$MgmtChangeIPForm.Controls.Add($MgmtChangeIPLabel69)
$MgmtChangeIPForm.Controls.Add($MgmtChangeAdapterInput)
$MgmtChangeIPForm.Controls.Add($MgmtChangeIPLabel7)
$MgmtChangeIPForm.Controls.Add($MgmtChangeIPLabel6)
$MgmtChangeIPForm.Controls.Add($MgmtChangeIPLabel5)
$MgmtChangeIPForm.Controls.Add($MgmtChangeIPLabel4)
$MgmtChangeIPForm.Controls.Add($MgmtChangeIPLabel3)
$MgmtChangeIPForm.Controls.Add($MgmtChangeIPLabel2)
$MgmtChangeIPForm.Controls.Add($MgmtChangeIPLabel1)
$MgmtChangeIPForm.Controls.Add($MgmtChangeIPOutput)
$MgmtChangeIPForm.Controls.Add($MgmtChangeIPAltDNS)
$MgmtChangeIPForm.Controls.Add($MgmtChangeIPPrefDNS)
$MgmtChangeIPForm.Controls.Add($MgmtChangeIPGateway)
$MgmtChangeIPForm.Controls.Add($MgmtChangeIPSubnet)
$MgmtChangeIPForm.Controls.Add($MgmtChangeIPInput)
$MgmtChangeIPForm.Controls.Add($MgmtChangeIPSubmit)
$MgmtChangeIPForm.Controls.Add($MgmtChangeIPQuery)
$MgmtChangeIPForm.Controls.Add($MgmtChangeIPBack)
$MgmtChangeIPForm.MaximizeBox = $false
$MgmtChangeIPForm.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$MgmtChangeIPForm.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$MgmtChangeIPForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$MgmtChangeIPForm.Name = [System.String]'MgmtChangeIPForm'
$MgmtChangeIPForm.Text = [System.String]' Change IP Address - Aurora Automations'
$MgmtChangeIPForm.ResumeLayout($false)
$MgmtChangeIPForm.PerformLayout()
Add-Member -InputObject $MgmtChangeIPForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $MgmtChangeIPForm -Name MgmtChangeIPBack -Value $MgmtChangeIPBack -MemberType NoteProperty
Add-Member -InputObject $MgmtChangeIPForm -Name MgmtChangeIPQuery -Value $MgmtChangeIPQuery -MemberType NoteProperty
Add-Member -InputObject $MgmtChangeIPForm -Name MgmtChangeIPSubmit -Value $MgmtChangeIPSubmit -MemberType NoteProperty
Add-Member -InputObject $MgmtChangeIPForm -Name MgmtChangeIPInput -Value $MgmtChangeIPInput -MemberType NoteProperty
Add-Member -InputObject $MgmtChangeIPForm -Name MgmtChangeIPSubnet -Value $MgmtChangeIPSubnet -MemberType NoteProperty
Add-Member -InputObject $MgmtChangeIPForm -Name MgmtChangeIPGateway -Value $MgmtChangeIPGateway -MemberType NoteProperty
Add-Member -InputObject $MgmtChangeIPForm -Name MgmtChangeIPPrefDNS -Value $MgmtChangeIPPrefDNS -MemberType NoteProperty
Add-Member -InputObject $MgmtChangeIPForm -Name MgmtChangeIPAltDNS -Value $MgmtChangeIPAltDNS -MemberType NoteProperty
Add-Member -InputObject $MgmtChangeIPForm -Name MgmtChangeIPOutput -Value $MgmtChangeIPOutput -MemberType NoteProperty
Add-Member -InputObject $MgmtChangeIPForm -Name MgmtChangeIPLabel1 -Value $MgmtChangeIPLabel1 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangeIPForm -Name MgmtChangeIPLabel2 -Value $MgmtChangeIPLabel2 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangeIPForm -Name MgmtChangeIPLabel3 -Value $MgmtChangeIPLabel3 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangeIPForm -Name MgmtChangeIPLabel4 -Value $MgmtChangeIPLabel4 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangeIPForm -Name MgmtChangeIPLabel5 -Value $MgmtChangeIPLabel5 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangeIPForm -Name MgmtChangeIPLabel6 -Value $MgmtChangeIPLabel6 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangeIPForm -Name MgmtChangeIPLabel7 -Value $MgmtChangeIPLabel7 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangeIPForm -Name MgmtChangeIPLabel69 -Value $MgmtChangeIPLabel69 -MemberType NoteProperty
Add-Member -InputObject $MgmtChangeIPForm -Name MgmtChangeAdapterInput -Value $MgmtChangeAdapterInput -MemberType NoteProperty
Add-Member -InputObject $MgmtChangeIPForm -Name QueryNetworkAdaptorsSubmit -Value $QueryNetworkAdaptorsSubmit -MemberType NoteProperty
Add-Member -InputObject $MgmtChangeIPForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
