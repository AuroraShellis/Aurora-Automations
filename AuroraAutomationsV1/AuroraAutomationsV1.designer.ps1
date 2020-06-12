[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$AuroraAutomationsV1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.PictureBox]$pictureBox1 = $null
[System.Windows.Forms.PictureBox]$pictureBox2 = $null
[System.Windows.Forms.PictureBox]$pictureBox3 = $null
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.Label]$label5 = $null
[System.Windows.Forms.Label]$label6 = $null
[System.Windows.Forms.Button]$OpenAD = $null
[System.Windows.Forms.Button]$OpenMgmt = $null
[System.Windows.Forms.Button]$OpenDiag = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'AuroraAutomationsV1.resources.ps1')
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$label3 = (New-Object -TypeName System.Windows.Forms.Label)
$OpenAD = (New-Object -TypeName System.Windows.Forms.Button)
$OpenMgmt = (New-Object -TypeName System.Windows.Forms.Button)
$OpenDiag = (New-Object -TypeName System.Windows.Forms.Button)
$pictureBox1 = (New-Object -TypeName System.Windows.Forms.PictureBox)
$pictureBox2 = (New-Object -TypeName System.Windows.Forms.PictureBox)
$pictureBox3 = (New-Object -TypeName System.Windows.Forms.PictureBox)
$label4 = (New-Object -TypeName System.Windows.Forms.Label)
$label5 = (New-Object -TypeName System.Windows.Forms.Label)
$label6 = (New-Object -TypeName System.Windows.Forms.Label)
([System.ComponentModel.ISupportInitialize]$pictureBox1).BeginInit()
([System.ComponentModel.ISupportInitialize]$pictureBox2).BeginInit()
([System.ComponentModel.ISupportInitialize]$pictureBox3).BeginInit()
$AuroraAutomationsV1.SuspendLayout()
#
#label1
#
$label1.AutoSize = $true
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]29,[System.Int32]12))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]117,[System.Int32]13))
$label1.TabIndex = [System.Int32]0
$label1.Text = [System.String]'Active Directory Scripts'
#
#label2
#
$label2.AutoSize = $true
$label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]253,[System.Int32]12))
$label2.Name = [System.String]'label2'
$label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]13))
$label2.TabIndex = [System.Int32]1
$label2.Text = [System.String]'Management Scripts'
#
#label3
#
$label3.AutoSize = $true
$label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]464,[System.Int32]12))
$label3.Name = [System.String]'label3'
$label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]92,[System.Int32]13))
$label3.TabIndex = [System.Int32]2
$label3.Text = [System.String]'Diagnostic Scripts'
#
#OpenAD
#
$OpenAD.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]47,[System.Int32]385))
$OpenAD.Name = [System.String]'OpenAD'
$OpenAD.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$OpenAD.TabIndex = [System.Int32]3
$OpenAD.Text = [System.String]'Open'
$OpenAD.UseVisualStyleBackColor = $true
$OpenAD.add_Click($OpenAD_Click)
#
#OpenMgmt
#
$OpenMgmt.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]256,[System.Int32]385))
$OpenMgmt.Name = [System.String]'OpenMgmt'
$OpenMgmt.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$OpenMgmt.TabIndex = [System.Int32]4
$OpenMgmt.Text = [System.String]'Open'
$OpenMgmt.UseVisualStyleBackColor = $true
#
#OpenDiag
#
$OpenDiag.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]481,[System.Int32]385))
$OpenDiag.Name = [System.String]'OpenDiag'
$OpenDiag.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$OpenDiag.TabIndex = [System.Int32]5
$OpenDiag.Text = [System.String]'Open'
$OpenDiag.UseVisualStyleBackColor = $true
#
#pictureBox1
#
$pictureBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]52))
$pictureBox1.Name = [System.String]'pictureBox1'
$pictureBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]160,[System.Int32]300))
$pictureBox1.TabIndex = [System.Int32]6
$pictureBox1.TabStop = $false
#
#pictureBox2
#
$pictureBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]224,[System.Int32]52))
$pictureBox2.Name = [System.String]'pictureBox2'
$pictureBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]160,[System.Int32]300))
$pictureBox2.TabIndex = [System.Int32]7
$pictureBox2.TabStop = $false
#
#pictureBox3
#
$pictureBox3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]434,[System.Int32]52))
$pictureBox3.Name = [System.String]'pictureBox3'
$pictureBox3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]160,[System.Int32]300))
$pictureBox3.TabIndex = [System.Int32]8
$pictureBox3.TabStop = $false
#
#label4
#
$label4.AutoSize = $true
$label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]13,[System.Int32]359))
$label4.Name = [System.String]'label4'
$label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]28,[System.Int32]13))
$label4.TabIndex = [System.Int32]9
$label4.Text = [System.String]'APA'
#
#label5
#
$label5.AutoSize = $true
$label5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]221,[System.Int32]359))
$label5.Name = [System.String]'label5'
$label5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]28,[System.Int32]13))
$label5.TabIndex = [System.Int32]10
$label5.Text = [System.String]'APA'
#
#label6
#
$label6.AutoSize = $true
$label6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]431,[System.Int32]359))
$label6.Name = [System.String]'label6'
$label6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]28,[System.Int32]13))
$label6.TabIndex = [System.Int32]11
$label6.Text = [System.String]'APA'
#
#AuroraAutomationsV1
#
$AuroraAutomationsV1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]624,[System.Int32]441))
$AuroraAutomationsV1.Controls.Add($label6)
$AuroraAutomationsV1.Controls.Add($label5)
$AuroraAutomationsV1.Controls.Add($label4)
$AuroraAutomationsV1.Controls.Add($pictureBox3)
$AuroraAutomationsV1.Controls.Add($pictureBox2)
$AuroraAutomationsV1.Controls.Add($pictureBox1)
$AuroraAutomationsV1.Controls.Add($OpenDiag)
$AuroraAutomationsV1.Controls.Add($OpenMgmt)
$AuroraAutomationsV1.Controls.Add($OpenAD)
$AuroraAutomationsV1.Controls.Add($label3)
$AuroraAutomationsV1.Controls.Add($label2)
$AuroraAutomationsV1.Controls.Add($label1)
$AuroraAutomationsV1.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$AuroraAutomationsV1.Name = [System.String]'AuroraAutomationsV1'
$AuroraAutomationsV1.Text = [System.String]'Main Menu - Aurora Automations'
([System.ComponentModel.ISupportInitialize]$pictureBox1).EndInit()
([System.ComponentModel.ISupportInitialize]$pictureBox2).EndInit()
([System.ComponentModel.ISupportInitialize]$pictureBox3).EndInit()
$AuroraAutomationsV1.ResumeLayout($false)
$AuroraAutomationsV1.PerformLayout()
Add-Member -InputObject $AuroraAutomationsV1 -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $AuroraAutomationsV1 -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $AuroraAutomationsV1 -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $AuroraAutomationsV1 -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $AuroraAutomationsV1 -Name pictureBox1 -Value $pictureBox1 -MemberType NoteProperty
Add-Member -InputObject $AuroraAutomationsV1 -Name pictureBox2 -Value $pictureBox2 -MemberType NoteProperty
Add-Member -InputObject $AuroraAutomationsV1 -Name pictureBox3 -Value $pictureBox3 -MemberType NoteProperty
Add-Member -InputObject $AuroraAutomationsV1 -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $AuroraAutomationsV1 -Name label5 -Value $label5 -MemberType NoteProperty
Add-Member -InputObject $AuroraAutomationsV1 -Name label6 -Value $label6 -MemberType NoteProperty
Add-Member -InputObject $AuroraAutomationsV1 -Name OpenAD -Value $OpenAD -MemberType NoteProperty
Add-Member -InputObject $AuroraAutomationsV1 -Name OpenMgmt -Value $OpenMgmt -MemberType NoteProperty
Add-Member -InputObject $AuroraAutomationsV1 -Name OpenDiag -Value $OpenDiag -MemberType NoteProperty
Add-Member -InputObject $AuroraAutomationsV1 -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
