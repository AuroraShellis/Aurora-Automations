[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$ADGroupMgmt = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$ADGroupBack = $null
[System.Windows.Forms.Button]$ADGroupSubmit = $null
[System.Windows.Forms.Label]$ADGroupLabel1 = $null
[System.Windows.Forms.Label]$ADGroupLabel2 = $null
[System.Windows.Forms.Button]$ADGroupListOU = $null
[System.Windows.Forms.Label]$ADGroupLabel3 = $null
[System.Windows.Forms.TextBox]$ADGroupQueryTextBox = $null
[System.Windows.Forms.Button]$ADGroupOUQuery = $null
[System.Windows.Forms.Label]$ADGroupLabel4 = $null
[System.Windows.Forms.TextBox]$ADGroupNameInput = $null
[System.Windows.Forms.TextBox]$ADGroupLocateInput = $null
[System.Windows.Forms.Label]$ADGroupLabel5 = $null
[System.Windows.Forms.Label]$ADGroupLabel6 = $null
[System.Windows.Forms.TextBox]$ADGroupNameMove = $null
[System.Windows.Forms.TextBox]$ADGroupTargetOU = $null
[System.Windows.Forms.Label]$ADGroupLabel8 = $null
[System.Windows.Forms.Button]$ADGroupMove = $null
[System.Windows.Forms.RichTextBox]$ADGroupMgmtOutput = $null
[System.Windows.Forms.Button]$DeleteGroupButton = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'ADGroupMgmt.resources.ps1')
$ADGroupBack = (New-Object -TypeName System.Windows.Forms.Button)
$ADGroupSubmit = (New-Object -TypeName System.Windows.Forms.Button)
$ADGroupLabel1 = (New-Object -TypeName System.Windows.Forms.Label)
$ADGroupMgmtOutput = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$ADGroupLabel2 = (New-Object -TypeName System.Windows.Forms.Label)
$ADGroupListOU = (New-Object -TypeName System.Windows.Forms.Button)
$ADGroupLabel3 = (New-Object -TypeName System.Windows.Forms.Label)
$ADGroupQueryTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$ADGroupOUQuery = (New-Object -TypeName System.Windows.Forms.Button)
$ADGroupLabel4 = (New-Object -TypeName System.Windows.Forms.Label)
$ADGroupLabel5 = (New-Object -TypeName System.Windows.Forms.Label)
$ADGroupNameInput = (New-Object -TypeName System.Windows.Forms.TextBox)
$ADGroupLocateInput = (New-Object -TypeName System.Windows.Forms.TextBox)
$ADGroupLabel6 = (New-Object -TypeName System.Windows.Forms.Label)
$ADGroupNameMove = (New-Object -TypeName System.Windows.Forms.TextBox)
$ADGroupTargetOU = (New-Object -TypeName System.Windows.Forms.TextBox)
$ADGroupLabel8 = (New-Object -TypeName System.Windows.Forms.Label)
$ADGroupMove = (New-Object -TypeName System.Windows.Forms.Button)
$DeleteGroupButton = (New-Object -TypeName System.Windows.Forms.Button)
$ADGroupMgmt.SuspendLayout()
#
#ADGroupBack
#
$ADGroupBack.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]15,[System.Int32]377))
$ADGroupBack.Name = [System.String]'ADGroupBack'
$ADGroupBack.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$ADGroupBack.TabIndex = [System.Int32]0
$ADGroupBack.Text = [System.String]'Back'
$ADGroupBack.UseVisualStyleBackColor = $true
$ADGroupBack.add_Click({GroupBack})
#
#ADGroupSubmit
#
$ADGroupSubmit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]360,[System.Int32]248))
$ADGroupSubmit.Name = [System.String]'ADGroupSubmit'
$ADGroupSubmit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$ADGroupSubmit.TabIndex = [System.Int32]1
$ADGroupSubmit.Text = [System.String]'Create'
$ADGroupSubmit.UseVisualStyleBackColor = $true
$ADGroupSubmit.add_Click({GroupCreation})
#
#ADGroupLabel1
#
$ADGroupLabel1.AutoSize = $true
$ADGroupLabel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]22))
$ADGroupLabel1.Name = [System.String]'ADGroupLabel1'
$ADGroupLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]281,[System.Int32]13))
$ADGroupLabel1.TabIndex = [System.Int32]2
$ADGroupLabel1.Text = [System.String]'This will aid in the management of Active Directory Groups'
#
#ADGroupMgmtOutput
#
$ADGroupMgmtOutput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]15,[System.Int32]78))
$ADGroupMgmtOutput.Name = [System.String]'ADGroupMgmtOutput'
$ADGroupMgmtOutput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]298,[System.Int32]280))
$ADGroupMgmtOutput.TabIndex = [System.Int32]3
$ADGroupMgmtOutput.Text = [System.String]''
#
#ADGroupLabel2
#
$ADGroupLabel2.AutoSize = $true
$ADGroupLabel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]53))
$ADGroupLabel2.Name = [System.String]'ADGroupLabel2'
$ADGroupLabel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]13))
$ADGroupLabel2.TabIndex = [System.Int32]4
$ADGroupLabel2.Text = [System.String]'Output:'
#
#ADGroupListOU
#
$ADGroupListOU.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]117,[System.Int32]377))
$ADGroupListOU.Name = [System.String]'ADGroupListOU'
$ADGroupListOU.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]196,[System.Int32]23))
$ADGroupListOU.TabIndex = [System.Int32]5
$ADGroupListOU.Text = [System.String]'List Current OUs'
$ADGroupListOU.UseVisualStyleBackColor = $true
$ADGroupListOU.add_Click({ListOUGroupManagement})
#
#ADGroupLabel3
#
$ADGroupLabel3.AutoSize = $true
$ADGroupLabel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]357,[System.Int32]53))
$ADGroupLabel3.Name = [System.String]'ADGroupLabel3'
$ADGroupLabel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]106,[System.Int32]13))
$ADGroupLabel3.TabIndex = [System.Int32]6
$ADGroupLabel3.Text = [System.String]'Query OU for Groups'
#
#ADGroupQueryTextBox
#
$ADGroupQueryTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]360,[System.Int32]78))
$ADGroupQueryTextBox.Name = [System.String]'ADGroupQueryTextBox'
$ADGroupQueryTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]241,[System.Int32]20))
$ADGroupQueryTextBox.TabIndex = [System.Int32]7
$ADGroupQueryTextBox.add_TextChanged($ADGroupQueryTextBox_TextChanged)
#
#ADGroupOUQuery
#
$ADGroupOUQuery.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]360,[System.Int32]104))
$ADGroupOUQuery.Name = [System.String]'ADGroupOUQuery'
$ADGroupOUQuery.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]241,[System.Int32]23))
$ADGroupOUQuery.TabIndex = [System.Int32]8
$ADGroupOUQuery.Text = [System.String]'Query OU'
$ADGroupOUQuery.UseVisualStyleBackColor = $true
$ADGroupOUQuery.add_Click({GroupQuery})
#
#ADGroupLabel4
#
$ADGroupLabel4.AutoSize = $true
$ADGroupLabel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]357,[System.Int32]151))
$ADGroupLabel4.Name = [System.String]'ADGroupLabel4'
$ADGroupLabel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]99,[System.Int32]13))
$ADGroupLabel4.TabIndex = [System.Int32]9
$ADGroupLabel4.Text = [System.String]'Insert Group Name:'
#
#ADGroupLabel5
#
$ADGroupLabel5.AutoSize = $true
$ADGroupLabel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]357,[System.Int32]206))
$ADGroupLabel5.Name = [System.String]'ADGroupLabel5'
$ADGroupLabel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]149,[System.Int32]13))
$ADGroupLabel5.TabIndex = [System.Int32]10
$ADGroupLabel5.Text = [System.String]'Group Location (OU Location)'
#
#ADGroupNameInput
#
$ADGroupNameInput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]360,[System.Int32]167))
$ADGroupNameInput.Name = [System.String]'ADGroupNameInput'
$ADGroupNameInput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]241,[System.Int32]20))
$ADGroupNameInput.TabIndex = [System.Int32]11
#
#ADGroupLocateInput
#
$ADGroupLocateInput.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]360,[System.Int32]222))
$ADGroupLocateInput.Name = [System.String]'ADGroupLocateInput'
$ADGroupLocateInput.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]241,[System.Int32]20))
$ADGroupLocateInput.TabIndex = [System.Int32]12
#
#ADGroupLabel6
#
$ADGroupLabel6.AutoSize = $true
$ADGroupLabel6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]357,[System.Int32]294))
$ADGroupLabel6.Name = [System.String]'ADGroupLabel6'
$ADGroupLabel6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]70,[System.Int32]13))
$ADGroupLabel6.TabIndex = [System.Int32]13
$ADGroupLabel6.Text = [System.String]'Insert Group Name:'
#
#ADGroupNameMove
#
$ADGroupNameMove.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]360,[System.Int32]310))
$ADGroupNameMove.Name = [System.String]'ADGroupNameMove'
$ADGroupNameMove.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]241,[System.Int32]20))
$ADGroupNameMove.TabIndex = [System.Int32]14
#
#ADGroupTargetOU
#
$ADGroupTargetOU.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]360,[System.Int32]365))
$ADGroupTargetOU.Name = [System.String]'ADGroupTargetOU'
$ADGroupTargetOU.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]241,[System.Int32]20))
$ADGroupTargetOU.TabIndex = [System.Int32]16
#
#ADGroupLabel8
#
$ADGroupLabel8.AutoSize = $true
$ADGroupLabel8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]357,[System.Int32]349))
$ADGroupLabel8.Name = [System.String]'ADGroupLabel8'
$ADGroupLabel8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]60,[System.Int32]13))
$ADGroupLabel8.TabIndex = [System.Int32]17
$ADGroupLabel8.Text = [System.String]'Target OU:'
#
#ADGroupMove
#
$ADGroupMove.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]526,[System.Int32]394))
$ADGroupMove.Name = [System.String]'ADGroupMove'
$ADGroupMove.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$ADGroupMove.TabIndex = [System.Int32]20
$ADGroupMove.Text = [System.String]'Move'
$ADGroupMove.UseVisualStyleBackColor = $true
$ADGroupMove.add_Click({GroupMovementOU})
#
#DeleteGroupButton
#
$DeleteGroupButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]526,[System.Int32]248))
$DeleteGroupButton.Name = [System.String]'DeleteGroupButton'
$DeleteGroupButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$DeleteGroupButton.TabIndex = [System.Int32]21
$DeleteGroupButton.Text = [System.String]'Delete'
$DeleteGroupButton.UseVisualStyleBackColor = $true
$DeleteGroupButton.add_Click({GroupDeletion})
#
#ADGroupMgmt
#
$ADGroupMgmt.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$ADGroupMgmt.Controls.Add($DeleteGroupButton)
$ADGroupMgmt.Controls.Add($ADGroupMove)
$ADGroupMgmt.Controls.Add($ADGroupLabel8)
$ADGroupMgmt.Controls.Add($ADGroupTargetOU)
$ADGroupMgmt.Controls.Add($ADGroupNameMove)
$ADGroupMgmt.Controls.Add($ADGroupLabel6)
$ADGroupMgmt.Controls.Add($ADGroupLocateInput)
$ADGroupMgmt.Controls.Add($ADGroupNameInput)
$ADGroupMgmt.Controls.Add($ADGroupLabel5)
$ADGroupMgmt.Controls.Add($ADGroupLabel4)
$ADGroupMgmt.Controls.Add($ADGroupOUQuery)
$ADGroupMgmt.Controls.Add($ADGroupQueryTextBox)
$ADGroupMgmt.Controls.Add($ADGroupLabel3)
$ADGroupMgmt.Controls.Add($ADGroupListOU)
$ADGroupMgmt.Controls.Add($ADGroupLabel2)
$ADGroupMgmt.Controls.Add($ADGroupMgmtOutput)
$ADGroupMgmt.Controls.Add($ADGroupLabel1)
$ADGroupMgmt.Controls.Add($ADGroupSubmit)
$ADGroupMgmt.Controls.Add($ADGroupBack)
$ADGroupMgmt.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$ADGroupMgmt.Name = [System.String]'ADGroupMgmt'
$ADGroupMgmt.Text = [System.String]'Active Directory Group Management - Aurora Automations'
$ADGroupMgmt.ResumeLayout($false)
$ADGroupMgmt.PerformLayout()
Add-Member -InputObject $ADGroupMgmt -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $ADGroupMgmt -Name ADGroupBack -Value $ADGroupBack -MemberType NoteProperty
Add-Member -InputObject $ADGroupMgmt -Name ADGroupSubmit -Value $ADGroupSubmit -MemberType NoteProperty
Add-Member -InputObject $ADGroupMgmt -Name ADGroupLabel1 -Value $ADGroupLabel1 -MemberType NoteProperty
Add-Member -InputObject $ADGroupMgmt -Name ADGroupLabel2 -Value $ADGroupLabel2 -MemberType NoteProperty
Add-Member -InputObject $ADGroupMgmt -Name ADGroupListOU -Value $ADGroupListOU -MemberType NoteProperty
Add-Member -InputObject $ADGroupMgmt -Name ADGroupLabel3 -Value $ADGroupLabel3 -MemberType NoteProperty
Add-Member -InputObject $ADGroupMgmt -Name ADGroupQueryTextBox -Value $ADGroupQueryTextBox -MemberType NoteProperty
Add-Member -InputObject $ADGroupMgmt -Name ADGroupOUQuery -Value $ADGroupOUQuery -MemberType NoteProperty
Add-Member -InputObject $ADGroupMgmt -Name ADGroupLabel4 -Value $ADGroupLabel4 -MemberType NoteProperty
Add-Member -InputObject $ADGroupMgmt -Name ADGroupNameInput -Value $ADGroupNameInput -MemberType NoteProperty
Add-Member -InputObject $ADGroupMgmt -Name ADGroupLocateInput -Value $ADGroupLocateInput -MemberType NoteProperty
Add-Member -InputObject $ADGroupMgmt -Name ADGroupLabel5 -Value $ADGroupLabel5 -MemberType NoteProperty
Add-Member -InputObject $ADGroupMgmt -Name ADGroupLabel6 -Value $ADGroupLabel6 -MemberType NoteProperty
Add-Member -InputObject $ADGroupMgmt -Name ADGroupNameMove -Value $ADGroupNameMove -MemberType NoteProperty
Add-Member -InputObject $ADGroupMgmt -Name ADGroupTargetOU -Value $ADGroupTargetOU -MemberType NoteProperty
Add-Member -InputObject $ADGroupMgmt -Name ADGroupLabel8 -Value $ADGroupLabel8 -MemberType NoteProperty
Add-Member -InputObject $ADGroupMgmt -Name ADGroupMove -Value $ADGroupMove -MemberType NoteProperty
Add-Member -InputObject $ADGroupMgmt -Name ADGroupMgmtOutput -Value $ADGroupMgmtOutput -MemberType NoteProperty
Add-Member -InputObject $ADGroupMgmt -Name DeleteGroupButton -Value $DeleteGroupButton -MemberType NoteProperty
Add-Member -InputObject $ADGroupMgmt -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
