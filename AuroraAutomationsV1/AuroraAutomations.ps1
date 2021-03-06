Add-Type -AssemblyName PresentationFramework, System.Windows.Forms, System.Drawing
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force

# FIRST LAYER BUTTONS CONFIGURATION
# MAIN MENU
Function ADMenu {
	$MainMenu.Hide()
	$MainMenuXYLoc = $MainMenu.Location
	$ActiveDirectoryMenu.Location = $MainMenuXYLoc
	$ActiveDirectoryMenu.ShowDialog()
}
Function ManagementMenu {
	$MainMenu.Hide()
	$MainMenuXYLoc = $MainMenu.Location
	$ManagementMenu.Location = $MainMenuXYLoc
	$ManagementMenu.ShowDialog()
}
Function DiagnosticsMenu {
	$MainMenu.Hide()
	$MainMenuXYLoc = $MainMenu.Location
	$DiagnosticsMenu.Location = $MainMenuXYLoc
	$DiagnosticsMenu.ShowDialog()
}
Function CreditsMenu {
	#$CreditsForm.CreditsOutput.Clear()
	$CreditsForm.CreditsOutput.AppendText("Hot Topic in Networking Q2 2020`n")
	$CreditsForm.CreditsOutput.AppendText("This was made by Team Aurora Shellis and is composed of;`n`n")
	$CreditsForm.CreditsOutput.AppendText("`nMatthew Westlake - west356@manukaumail.com`nMicheal Chen - Email: aurora@chencorp.co.nz`nPogai (David) Tuiala - Email: tuia131@manukaumail.com`nRyan Alpay - Email: ryanmatthew.alpay@mail.com`n")
	$CreditsForm.CreditsOutput.AppendText("`nAurora Automations Version 1.1.0 - 13th July 2020`n")
	$CreditsForm.CreditsOutput.AppendText("`n`nSpecial Thanks to Google and Trevor Sullivan for one of his scripts for enabling Tracerouting in a Windows form setting. (Sullivan, 2012)`n")
	$CreditsForm.CreditsOutput.AppendText("`nFigure 1: (Netwrix, n.d.). What is Active Directory? Retrieved from Netwrix:"+" https://www.netwrix.com/what_is_active_directory_e-book.html `n")
	$CreditsForm.CreditsOutput.AppendText("`nFigure 2: `n"+"Interpol. (2016, August 02). Twitter. Retrieved from ARRESTED: Head of global criminal network behind 60m in online scams.:" + " https://twitter.com/interpol_hq/status/760 `n")
	$CreditsForm.CreditsOutput.AppendText("`nFigure 3:"+ " XCentrex Computer Systems. (2012, July 07). Laptop Diagnostics. Retrieved from XCentrex Computer Systems:" +" https://xcentrex.com/wp-content/uploads/Duplicator/laptop-diagnostics-xcentrex-computer-systems-llc/ `n")
	$CreditsForm.CreditsOutput.AppendText("`nSullivan, T. (2012, July 23). PowerShell: Tracert or Trace-Route? Retrieved from Trevor Sullivan's Tech Room:" +" https://trevorsullivan.net/2012/07/23/powershell-tracert-or-trace-route/ `n")
	
	$MainMenu.Hide()
	$MainMenuXYLoc = $MainMenu.Location
	$CreditsForm.Location = $MainMenuXYLoc
	$CreditsForm.ShowDialog()
}
# END OF FIRST LAYER BUTTONS CONFIGURATION

## SECOND LAYER BUTTONS CONFIGURATION
## CREDITS MAIN MENU
Function CreditsBack {
	$CreditsForm.CreditsOutput.Clear()
	$CreditsForm.Hide()
	$CreditsFormMenuXYLoc = $CreditsForm.Location
	$MainMenu.Location = $CreditsFormMenuXYLoc
	$MainMenu.Show()
}

## ACTIVE DIRECTORY MAIN MENU
Function ADUserDeleteShowMenu {
	$ActiveDirectoryMenu.Hide()
	$ActiveDirectoryXYLoc = $ActiveDirectoryMenu.Location
	$ADUserDeletion.Location = $ActiveDirectoryXYLoc
	$ADUserDeletion.UserDeleteOutput.AppendText("WARNING: When the Delete button is pressed. There will be NO Confirmation.")
	$ADUserDeletion.ShowDialog()
}
Function ADOUMShowMenu {
	$ActiveDirectoryMenu.Hide()
	$ActiveDirectoryXYLoc = $ActiveDirectoryMenu.Location
	$ADOUM.Location = $ActiveDirectoryXYLoc
	$ADOUM.ShowDialog()
}
Function ManagmentShowMenu {
	$ActiveDirectoryMenu.Hide()
	$ActiveDirectoryXYLoc = $ActiveDirectoryMenu.Location
	$ADGroupMgmt.Location = $ActiveDirectoryXYLoc
	$ADGroupMgmt.ADGroupMgmtOutput.AppendText("WARNING: When the Delete or Move button is pressed. There will be NO Confirmation.")
	$ADGroupMgmt.ShowDialog()
}
Function Individual.User {
	$ActiveDirectoryMenu.Hide()
	$ActiveDirectoryXYLoc = $ActiveDirectoryMenu.Location
	$ADUserCreationForm.Location = $ActiveDirectoryXYLoc
	$ADUserCreationForm.OutputTxtBox.AppendText("All Users will have our default preassigned password.`nThe user will be prompted to change their password on the first login.")
	$ADUserCreationForm.OutputTxtBox.AppendText("`nOUs will not be created. Please ensure the OUs are existing before trying to add a user.")
	$ADUserCreationForm.ShowDialog()
}
Function PasswordShowMenu {
	$ActiveDirectoryMenu.Hide()
	$ActiveDirectoryXYLoc = $ActiveDirectoryMenu.Location
	$ADPasswordReset.Location = $ActiveDirectoryXYLoc
	$ADPasswordReset.ADPasswordOutput.AppendText("WARNING: Password will be changed without Confirmation.")
	$ADPasswordReset.ShowDialog()
}
Function BulkImportsShowMenu {
	$ActiveDirectoryMenu.Hide()
	$ActiveDirectoryXYLoc = $ActiveDirectoryMenu.Location
	$ADBulkUserCreation.Location = $ActiveDirectoryXYLoc
	$ADBulkUserCreation.ADBulkOutput.AppendText("Browse to a CSV using the Text Box above. The CSV should follow this structure from Left to Right:")
	$ADBulkUserCreation.ADBulkOutput.AppendText("`nFirst Name,Last Name,OU `n")
	$ADBulkUserCreation.ADBulkOutput.AppendText("`nThe CSV should also include these headings in the first row of data.")
	$ADBulkUserCreation.ADBulkOutput.AppendText("`nThe SAM Account Name will be generated based on our User Naming Convention.`nThis may shortern long names. Check the Results after running the Command.")
	$ADBulkUserCreation.ADBulkOutput.AppendText("`nAll Users will have our default preassigned password.`nThe user will be prompted to change their password on the first login.")
	$ADBulkUserCreation.ADBulkOutput.AppendText("`nOUs will not be created. Please ensure the OUs are existing before trying to Import users.")
	$ADBulkUserCreation.ShowDialog()
}
Function ADMenuBack {
	$ActiveDirectoryMenu.Hide()
	$ActiveDirectoryMenuXYLoc = $ActiveDirectoryMenu.Location
	$MainMenu.Location = $ActiveDirectoryMenuXYLoc
	$MainMenu.Show()
}

## MANAGEMENT MAIN MENU BUTTONS
Function CreationFileShare {
	$ManagementMenu.Hide()
	$ManagementMenuXYLoc = $ManagementMenu.Location
	$MgmtFileShareForm.Location = $ManagementMenuXYLoc
	$MgmtFileShareForm.ShowDialog()
}
Function FileSharePermission {
	$ManagementMenu.Hide()
	$ManagementMenuXYLoc = $ManagementMenu.Location
	$MgmtFilePermissionForm.Location = $ManagementMenuXYLoc
	$MgmtFilePermissionForm.ShowDialog()
}
Function ChangingLocalIP {
	$ManagementMenu.Hide()
	$ManagementMenuXYLoc = $ManagementMenu.Location
	$MgmtChangeIPForm.Location = $ManagementMenuXYLoc
	$MgmtChangeIPForm.MgmtChangeIPOutput.Clear()
	$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("Query the Current IP Addresses, Find the Right Adaptor and Set your new IP Address or Reset the IP Configuration.`n")
	$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nNOTE: We Support the following Configurations:")
	$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nInterface Index, IP Address, Subnet Mask and One DNS Server.")
	$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nInterface Index, IP Address, Subnet Mask and Two DNS Servers.")
	$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nInterface Index, IP Address, Subnet Mask, One DNS Server and Gateway.")
	$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nInterface Index, IP Address, Subnet Mask, Two DNS Servers and Gateway.")
	$MgmtChangeIPForm.ShowDialog()
}
Function LocalComputerDomain {
	$ManagementMenu.Hide()
	$ManagementMenuXYLoc = $ManagementMenu.Location
	$MgmtChangePCForm.Location = $ManagementMenuXYLoc
	$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Please remember to enter credentials that have Administrator rights.`nWe Reqiure Local Administrator credentials if your PC isn't connected to a Domain.`nOtherwise ensure Domain Administrator credentials are included instead.")
	$MgmtChangePCForm.ShowDialog()
}
Function MACAddressGenerator {
	$ManagementMenu.Hide()
	$ManagementMenuXYLoc = $ManagementMenu.Location
	$MgmtMACAddressForm.Location = $ManagementMenuXYLoc
	$MgmtMACAddressForm.ShowDialog()
}
Function RemoteDisk {
	$ManagementMenu.Hide()
	$ManagementMenuXYLoc = $ManagementMenu.Location
	$MgmtDiskMgmtForm.Location = $ManagementMenuXYLoc
	$MgmtDiskMgmtForm.MgmtDiskMgmtOutput.Clear()
	$MgmtDiskMgmtForm.ShowDialog()
}
Function ManagementBack {
	$ManagementMenu.Hide()
	$ManagementMenuXYLoc = $ManagementMenu.Location
	$MainMenu.Location = $ManagementMenuXYLoc
	$MainMenu.Show()
}

## DIAGNOSTICS MAIN MENU BUTTONS
Function DiagnosticsADDetails {
	$DiagnosticsDetailsLoadingOutput = Get-ADDomain | Format-List | Out-String
	$DiagADDetails.DiagADDetailsOutput.AppendText($DiagnosticsDetailsLoadingOutput)
	$DiagnosticsMenu.Hide()
	$DiagnosticsMenuXYLoc = $DiagnosticsMenu.Location
	$DiagADDetails.Location = $DiagnosticsMenuXYLoc
	$DiagADDetails.ShowDialog()
}
Function DiagnosticsCheckMachines {
	$DiagListADPCs.DiagListPCOutput.AppendText("OS Type Count: `n")
	$DiagnosticsMachineLoading = Get-ADComputer -Filter * -Properties operatingSystem | group -Property operatingSystem | Select Name,Count | Format-List  Name,Count | Out-String
	$DiagnosticsMachineLoading2 = Get-ADComputer -Filter * | Select-Object Name,DNSHostName,Enabled | Format-List Name,DNSHostName,Enabled | Out-String
	$DiagListADPCs.DiagListPCOutput.AppendText($DiagnosticsMachineLoading)
	$DiagListADPCs.DiagListPCOutput.AppendText(" Names of the Machines Connected to the Active Directory")
	$DiagListADPCs.DiagListPCOutput.AppendText($DiagnosticsMachineLoading2)
	$DiagnosticsMenu.Hide()
	$DiagnosticsMenuXYLoc = $DiagnosticsMenu.Location
	$DiagListADPCs.Location = $DiagnosticsMenuXYLoc
	$DiagListADPCs.ShowDialog()

}
Function DiagnosticsListUsers {
	$DiagListADUsers.DiagListUsersOutput.Clear()
	$DiagListADUsersOutputEnter = Get-ADUser -Filter * | Select-Object DistinguishedName, SamAccountName, Name, Enabled, ObjectClass | Format-List DistinguishedName, SamAccountName, Name, Enabled, ObjectClass | Out-String
	$DiagListADUsers.DiagListUsersOutput.AppendText("Users Are:")
	$DiagListADUsers.DiagListUsersOutput.AppendText($DiagListADUsersOutputEnter)
	$DiagnosticsMenu.Hide()
	$DiagnosticsMenuXYLoc = $DiagnosticsMenu.Location
	$DiagListADUsers.Location = $DiagnosticsMenuXYLoc
	$DiagListADUsers.ShowDialog()
}
Function DiagnosticsOSCheck {
	$DiagCheckOS.DiagRemoteOSOutput.AppendText("These are the list of computers connected to your " + (Get-ADDomain).DNSRoot )
	$OutputCheckRemoteOUT = Get-ADComputer -Filter * -Properties operatingSystem | Select-Object Name, OperatingSystem | Format-List Name, OperatingSystem | Out-String
	$DiagCheckOS.DiagRemoteOSOutput.AppendText($OutputCheckRemoteOUT)
	$DiagnosticsMenu.Hide()
	$DiagnosticsMenuXYLoc = $DiagnosticsMenu.Location
	$DiagCheckOS.Location = $DiagnosticsMenuXYLoc
	$DiagCheckOS.ShowDialog()
}
Function DiagnosticsPortStatus {
	$DiagPortStatus.DiagPortStatusOutput.Clear()
	$PortStatusOutputOut = Get-NetTCPConnection | Sort-Object LocalPort | Select-Object LocalPort, State | Out-String
	$DiagPortStatus.DiagPortStatusOutput.AppendText($PortStatusOutputOut)
	$DiagnosticsMenu.Hide()
	$DiagnosticsMenuXYLoc = $DiagnosticsMenu.Location
	$DiagPortStatus.Location = $DiagnosticsMenuXYLoc
	$DiagPortStatus.ShowDialog()
}
Function DiagnosticsConnectionTest {
	$DiagnosticsMenu.Hide()
	$DiagnosticsMenuXYLoc = $DiagnosticsMenu.Location
	$DiagTraceroute.Location = $DiagnosticsMenuXYLoc
	$DiagTraceroute.DiagTraceOutput.AppendText("Please note: The traceroute may take awhile to process. Be patience.`n")
	$DiagTraceroute.DiagTraceOutput.AppendText("Due to limitations the program will stop responding during a traceroute.`n This is expected behavior.")
	$DiagTraceroute.ShowDialog()
}
Function DiagnosticsBack{
	$DiagnosticsMenu.Hide()
	$DiagnosticsMenuXYLoc = $DiagnosticsMenu.Location
	$MainMenu.Location = $DiagnosticsMenuXYLoc
	$MainMenu.Show()
}
## END OF SECOND LAYER BUTTONS CONFIGURATION


### ACTIVE DIRECTORY BUTTONS - 3RD LAYER
### USER CREATION FORM
Function ADUserCreationLockInputBoxes {
	if($ADUseCreationOUCheckBox.Checked -eq $true){
		$ADUserCreationOUInput.ReadOnly = $false
	}else{
		$ADUserCreationOUInput.Clear()
		$ADUserCreationOUInput.ReadOnly = $true
	}
}

Function ADOUGetList{
	$ADUserCreationForm.OutputTxtBox.Clear()
	$ADOUObjectList = Get-ADObject -Filter {ObjectClass -eq 'organizationalunit'} | Select-Object DistinguishedName, Name | Format-List DistinguishedName, Name | Out-String
	$ADUserCreationForm.OutputTxtBox.AppendText($ADOUObjectList)
}

Function Individual.User.Submit {
	$ADUserCreationForm.OutputTxtBox.Clear()
	$FirstName = $FirstNameTxtBox.Text
	$LastName = $LastNameTxtBox.Text
	$FirstNameSub = $FirstName.Substring(0,1)

	If($LastName.Length -lt 14){
		$numberx = $LastName.Length
	}Else{
		$numberx = 14
	}
	$LastNameSub = $LastName.Substring(0, $numberx)
	
	$FullName = $FirstName + " " + $LastName
	$SamAccountName = $FirstNameSub + "." + $LastNameSub
	$Domain = (Get-ADDomain).DNSRoot
	$UserPrincipal = $SamAccountName + "@" + $Domain
	$OUTargetPathUser = $ADUserCreationOUInput.Text
	if(-not [string]::IsNullOrEmpty($OUTargetPathUser)){
		$TargetOUQuery = "OU=" + $OUTargetPathUser + "," + (Get-ADDomain).DistinguishedName
		$UserContainer = $TargetOUQuery
	}else{
		$UserContainer = (Get-ADDomain).UsersContainer
	}
	$DefaultPassword = "P@ssword01"
	UserCreation
}

Function UserCreation {
	try {
		New-ADUser -Name $FullName -GivenName $FirstName -Surname $LastName -SamAccountName $SamAccountName -UserPrincipalName $UserPrincipal -Path $UserContainer -AccountPassword (ConvertTo-SecureString -AsPlainText $DefaultPassword -Force) -Enabled $true -ChangePasswordAtLogon $true
		$ADUserCreationForm.OutputTxtBox.AppendText("Your account has been created: `n")
		$ADUserCreationForm.OutputTxtBox.AppendText("Account Full Name: " + (Get-ADUser $SamAccountName).Name)
		$ADUserCreationForm.OutputTxtBox.AppendText("`nUser Principal Name: " + (Get-ADUser $SamAccountName).UserPrincipalName)
		$ADUserCreationForm.OutputTxtBox.AppendText("`nSAM Account Name: " + (Get-ADDomain).NetBIOSName + "\" + (Get-ADUser $SamAccountName).SamAccountName)
		$ADUserCreationForm.OutputTxtBox.AppendText("`nAccount Location is = " + $UserContainer)
		$ADUserCreationForm.OutputTxtBox.AppendText("`nPassword is = " + $DefaultPassword)
		$ADUserCreationForm.OutputTxtBox.AppendText("`nPassword will be reset on next login.")
	}catch [Microsoft.ActiveDirectory.Management.ADIdentityAlreadyExistsException] {
		$ADUserCreationForm.OutputTxtBox.AppendText("NOTE: Account Name Already Exists in the Active Directory Domain. `nTherefore you will get a different Account Name.`n")
		$UserRandomVar = Get-Random -Minimum 1 -Maximum 999
		$NewSamAccountName = $FirstNameSub + "." + $LastNameSub + "." + $UserRandomVar
		$NewLastName = $LastName + "." + $UserRandomVar
		$NewFullName = $FirstName + " " + $NewLastName
		$NewUserPrincipal = $NewSamAccountName + "@" + $Domain
		try{
			New-ADUser -Name $NewFullName -GivenName $FirstName -Surname $NewLastName -SamAccountName $NewSamAccountName -UserPrincipalName $NewUserPrincipal -Path $UserContainer -AccountPassword (ConvertTo-SecureString -AsPlainText $DefaultPassword -Force) -Enabled $true -ChangePasswordAtLogon $true
			$ADUserCreationForm.OutputTxtBox.AppendText("Your account has been created: `n")
			$ADUserCreationForm.OutputTxtBox.AppendText("Account Full Name: " + (Get-ADUser $NewSamAccountName).Name)
			$ADUserCreationForm.OutputTxtBox.AppendText("`nUser Principal Name: " + (Get-ADUser $NewSamAccountName).UserPrincipalName)
			$ADUserCreationForm.OutputTxtBox.AppendText("`nSAM Account Name: " + (Get-ADDomain).NetBIOSName + "\" + (Get-ADUser $NewSamAccountName).SamAccountName)
			$ADUserCreationForm.OutputTxtBox.AppendText("`nAccount Location is = " + $UserContainer)
			$ADUserCreationForm.OutputTxtBox.AppendText("`nPassword is = " + $DefaultPassword)
			$ADUserCreationForm.OutputTxtBox.AppendText("`nPassword will be reset on next login.")
		}catch{
			$ADUserCreationForm.OutputTxtBox.AppendText("Unexpected Error, Something went wrong. Please try again.")
		}
	}catch {
		$ADUserCreationForm.OutputTxtBox.AppendText("Something went wrong. Please try again.")
	}	
}

Function Individual.User.Back{
	$ADUserCreationForm.OutputTxtBox.Clear()
	$ADUserCreationForm.Hide()
	$ADUserCreationFormXYLoc = $ADUserCreationForm.Location
	$ActiveDirectoryMenu.Location = $ADUserCreationFormXYLoc
	$ActiveDirectoryMenu.Show()
}

### ACTIVE DIRECTORY OUM FORM
Function ADOUMCreation{
	$ADOUM.OUOutput.Clear()
	$OUNameCreation = $OUCreateBox.Text
	if([string]::IsNullOrEmpty($OUNameCreation)){
		$ADOUM.OUOutput.AppendText("Input can not be empty.")
	}else{
		try {
			New-ADOrganizationalUnit $OUNameCreation -ErrorAction Stop
			Get-ADObject -Filter  {$OUNameCreation -eq 'organizationalunit' }
			$ADOUM.OUOutput.AppendText("Creation of $OUNameCreation OU Sucessful.")
		}
		catch {
			$ADOUM.OUOutput.AppendText("Error: The " + $OUNameCreation + " OU Already Exists in Active Directory Domain. Try Another Name.")
		}
	}
}

Function ADOUMDeletion{
	$ADOUM.OUOutput.Clear()
	$ADOUMDeleteBoxInput = $DeleteOUBox.Text
	if([string]::IsNullOrEmpty($ADOUMDeleteBoxInput)){
		$ADOUM.OUOutput.AppendText("Input can not be empty.")
	}else{
		$OUnaming = "OU=" + $DeleteOUBox.Text + "," + (Get-ADDomain).DistinguishedName
		try{
			Get-ADOrganizationalUnit -Identity $OUnaming | Set-ADObject -ProtectedFromAccidentalDeletion:$false -PassThru | Remove-ADOrganizationalUnit -Confirm:$false -Recursive
			$ADOUM.OUOutput.AppendText("The " + $DeleteOUBox.Text + " OU has been removed from the Domain Successfully.")
		}catch{
			$ADOUM.OUOutput.AppendText("The " + $DeleteOUBox.Text + " OU does not exist in the Domain anymore or never existed in the first place.")
		}
	}
}

Function ADOUMoveUser{
	$ADOUM.OUOutput.Clear()
	$MoveUserInput = $MoveOUUserTextBox.Text
	$MoveOUInput = $MoveOUOUTextBox.Text
	if(([string]::IsNullOrEmpty($MoveUserInput)) -or ([string]::IsNullOrEmpty($MoveOUInput))){
		$ADOUM.OUOutput.AppendText("Input can not be empty.")
	}else{
		$UserDN  = (Get-ADUser $MoveUserInput).distinguishedName
		$TargetOU = "OU=" + $MoveOUInput + "," + (Get-ADDomain).DistinguishedName
		try{
			Move-ADObject -Identity $UserDN -TargetPath $TargetOU
			$ADOUM.OUOutput.AppendText("The " + $MoveUserInput + " user was succesfully moved to the " + $MoveOUInput + " OU.")
		}catch{
			$ADOUM.OUOutput.AppendText("The " + $MoveUserInput + " user could not be moved to the " + $MoveOUInput + " OU. Check if the User or OU Exists.")
		}
	}
}

Function OUUserQuery{
	$ADOUM.OUOutput.Clear()
	$QueryOUInput = $QueryOUTextBox.Text
	$TargetOUQuery = "OU=" + $QueryOUInput + "," + (Get-ADDomain).DistinguishedName
	if([string]::IsNullOrEmpty($QueryOUInput)){
		$ADOUM.OUOutput.AppendText("Input can not be empty.")
	}else{
		try{
		$OUSearchList =	Get-ADUser -Filter * -SearchBase $TargetOUQuery | Select-Object SamAccountName, Name, Enabled, ObjectClass | Format-List SamAccountName, Name, Enabled, ObjectClass | Out-String
			if(-not [string]::IsNullOrEmpty($OUSearchList)){
				$ADOUM.OUOutput.AppendText($OUSearchList)
			}else{
				$ADOUM.OUOutput.AppendText("Could not find any Users in the " + $QueryOUInput + " OU.")
			}
		}
		catch{
		$ADOUM.OUOutput.AppendText("Could not find any Users in the " + $QueryOUInput + " OU. Check if the OU exists beforehand.")
		}
	}
}

Function OUGetList{
	$ADOUM.OUOutput.Clear()
	$OUObjectList = Get-ADObject -Filter {ObjectClass -eq 'organizationalunit'} | Select-Object DistinguishedName, Name | Format-List DistinguishedName, Name | Out-String
	$ADOUM.OUOutput.AppendText($OUObjectList)
}

Function ADOUMFormUsersCNQuery{
	$ADOUM.OUOutput.Clear()
	$TargetOUMUsersCNQuery = "CN=Users," + (Get-ADDomain).DistinguishedName
	try{
		$OUMCNUserSearchList = Get-ADUser -Filter * -SearchBase $TargetOUMUsersCNQuery | Select-Object SamAccountName, Name, Enabled, ObjectClass | Format-List SamAccountName, Name, Enabled, ObjectClass | Out-String
		$ADOUM.OUOutput.AppendText($OUMCNUserSearchList)
	}
	catch{
	 $ADOUM.OUOutput.AppendText("Could not find any Users in the Default Users Container. Check if their are Users in there.")
	}
}

Function ADOUM.Back{
	$ADOUM.Hide()
	$ADOUM.OUOutput.Clear()
	$ADOUMXYLoc = $ADOUM.Location
	$ActiveDirectoryMenu.Location = $ADOUMXYLoc
	$ActiveDirectoryMenu.Show()
}

### ACTIVE DIRECTORY DELETION FORM
Function ADDeleteFormOUQuery{
	$ADUserDeletion.UserDeleteOutput.Clear()
	$UserDeleteQueryOUInput = $UserDeleteQueryTextBox.Text
	$TargetUserDeleteOUQuery = "OU=" + $UserDeleteQueryOUInput + "," + (Get-ADDomain).DistinguishedName
	if([string]::IsNullOrEmpty($UserDeleteQueryOUInput)){
		$ADUserDeletion.UserDeleteOutput.AppendText("Input can not be empty.")
	}else{
		try{
			$UserDeleteOUSearchList = Get-ADUser -Filter * -SearchBase $TargetUserDeleteOUQuery | Select-Object SamAccountName, Name, Enabled, ObjectClass | Format-List SamAccountName, Name, Enabled, ObjectClass | Out-String
			if(-not [string]::IsNullOrEmpty($UserDeleteOUSearchList)){
				$ADUserDeletion.UserDeleteOutput.AppendText($UserDeleteOUSearchList)
			}else{
				$ADUserDeletion.UserDeleteOutput.AppendText("Could not find any Users in the " + $UserDeleteQueryOUInput + " OU.")
			}
		}
		catch{
			$ADUserDeletion.UserDeleteOutput.AppendText("Could not find any Users in the " + $UserDeleteQueryOUInput + " OU. Check if the OU exists beforehand.")
		}
	}
}

Function ADDeleteFormUsersCNQuery{
	$ADUserDeletion.UserDeleteOutput.Clear()
	$TargetUserDeleteUsersCNQuery = "CN=Users," + (Get-ADDomain).DistinguishedName
	try{
		$UserDeleteCNUserSearchList = Get-ADUser -Filter * -SearchBase $TargetUserDeleteUsersCNQuery | Select-Object SamAccountName, Name, Enabled, ObjectClass | Format-List SamAccountName, Name, Enabled, ObjectClass | Out-String
		$ADUserDeletion.UserDeleteOutput.AppendText($UserDeleteCNUserSearchList)
	}
	catch{
	 $ADUserDeletion.UserDeleteOutput.AppendText("Could not find any Users in the Default Users Container. Check if their are Users in there.")
	}
}

Function ADDeleteFormUserDeletion{
	$ADUserDeletion.UserDeleteOutput.Clear()
	$UserDeleteSamNameInput = $UserDeleteUserTextBox.Text
	if([string]::IsNullOrEmpty($UserDeleteSamNameInput)){
		$ADUserDeletion.UserDeleteOutput.AppendText("Input can not be empty.")
	}else{
		try{
			Remove-ADUser -Identity $UserDeleteSamNameInput -Confirm:$False
			$ADUserDeletion.UserDeleteOutput.AppendText("The " + $UserDeleteSamNameInput + " User has been removed from the Domain Successfully.")
		}catch{
			$ADUserDeletion.UserDeleteOutput.AppendText("The " + $UserDeleteSamNameInput + " User does not exist in the Domain anymore or never existed in the first place. Check your spelling.")
		}
	}
}

Function UDGetList{
	$ADUserDeletion.UserDeleteOutput.Clear()
	$UDOUObjectList = Get-ADObject -Filter {ObjectClass -eq 'organizationalunit'} | Select-Object DistinguishedName, Name | Format-List DistinguishedName, Name | Out-String
	$ADUserDeletion.UserDeleteOutput.AppendText($UDOUObjectList)
}

Function ADUD.Back{
	$ADUserDeletion.Hide()
	$ADUserDeletion.UserDeleteOutput.Clear()
	$ADUserDeletionXYLoc = $ADUserDeletion.Location
	$ActiveDirectoryMenu.Location = $ADUserDeletionXYLoc
	$ActiveDirectoryMenu.Show()
}

### GROUP MANAGEMENT FORM 
Function GroupQuery {
	$ADGroupMgmt.ADGroupMgmtOutput.Clear()
	$QueryGMInput = $ADGroupQueryTextBox.Text
	$TargetGMQuery = "OU=" + $QueryGMInput + "," + (Get-ADDomain).DistinguishedName
	if([string]::IsNullOrEmpty($QueryGMInput)){
		$ADGroupMgmt.ADGroupMgmtOutput.AppendText("Input can not be empty.")
	}else{
		try{
			$GroupSearchList =	Get-ADGroup -Filter * -SearchBase $TargetGMQuery | Select-Object DistinguishedName, Name , GroupCategory, GroupScope | Format-List  DistinguishedName, Name , GroupCategory, GroupScope | Out-string
			if(-not [string]::IsNullOrEmpty($GroupSearchList)){
				$ADGroupMgmt.ADGroupMgmtOutput.AppendText($GroupSearchList)
			}else{
				$ADGroupMgmt.ADGroupMgmtOutput.AppendText("Could not find any Groups in the " + $QueryGMInput + " OU.")
			}
		}
		catch{
			$ADGroupMgmt.ADGroupMgmtOutput.AppendText("Could not find any Users in the " + $QueryGMInput + " OU. Check if the OU exists beforehand.")
		}
	}
}

Function GroupCreation {
	$ADGroupMgmt.ADGroupMgmtOutput.Clear()
	$GroupNameCreation = $ADGroupNameInput.Text
	$TargetCreationGroup = "OU=" + $ADGroupLocateInput.Text + "," + (Get-ADDomain).DistinguishedName

	try {
		New-ADGroup �name $GroupNameCreation �groupscope Global �path $TargetCreationGroup
		 $ADGroupMgmt.ADGroupMgmtOutput.AppendText($GroupNameCreation +" was sucessfully created in " + $ADGroupLocateInput.Text + " OU")
	}
	catch{
		 $ADGroupMgmt.ADGroupMgmtOutput.AppendText("Unspecified Organizational Unit or Group Name Already Exists.")
	}
}

Function GroupDeletion {
	$ADGroupMgmt.ADGroupMgmtOutput.Clear()
	$GroupNameDeletion = $ADGroupNameInput.Text

	try{
		Remove-ADGroup �Identity $GroupNameDeletion -Confirm:$False
		$ADGroupMgmt.ADGroupMgmtOutput.AppendText("Group was successfully deleted: "+ $GroupNameDeletion)
	}
	catch{
		$ADGroupMgmt.ADGroupMgmtOutput.AppendText("Group was not found in the OU")
	}
}

Function GroupMovementOU {
	$ADGroupMgmt.ADGroupMgmtOutput.Clear()
	$GroupNameMove = Get-ADgroup -Identity $ADGroupNameMove.Text
	$VariableGroupName = $ADGroupNameMove.Text
	$TargeGroupNameMove = "OU=" + $ADGroupTargetOU.text + "," + (Get-ADDomain).DistinguishedName
	$OUTargetGroupName =  $ADGroupTargetOU.text

	try {
		Move-ADObject -Identity $GroupNameMove -TargetPath $TargeGroupNameMove
		$ADGroupMgmt.ADGroupMgmtOutput.AppendText($VariableGroupName + " Sucessfully Moved to " + $OUTargetGroupName)
	}
	catch{
		$ADGroupMgmt.ADGroupMgmtOutput.AppendText("OU or Group does not exist")
	}
}

Function ADGroupUsersCNQuery{
	$ADGroupMgmt.ADGroupMgmtOutput.Clear()
	$TargetGroupUsersCNQuery = "CN=Users," + (Get-ADDomain).DistinguishedName
	try{
		$GroupCNUserSearchList = Get-ADGroup -Filter * -SearchBase $TargetGroupUsersCNQuery | Select-Object DistinguishedName, Name , GroupCategory, GroupScope | Format-List DistinguishedName, Name , GroupCategory, GroupScope | Out-String
		$ADGroupMgmt.ADGroupMgmtOutput.AppendText($GroupCNUserSearchList)
	}
	catch{
	 $ADGroupMgmt.ADGroupMgmtOutput.AppendText("Something broke. Could not find any Groups in the Default Users Container. Check if their are Groups in there.")
	}
}

Function ListOUGroupManagement {
	$ADGroupMgmt.ADGroupMgmtOutput.Clear()
	$GroupManagmentListOU = Get-ADObject -Filter {ObjectClass -eq 'organizationalunit'} | Select-Object DistinguishedName, Name | Format-List DistinguishedName, Name | Out-String
	$ADGroupMgmt.ADGroupMgmtOutput.AppendText($GroupManagmentListOU)
}

Function GroupBack {
	$ADGroupMgmt.ADGroupMgmtOutput.Clear()
	$ADGroupMgmt.Hide()
	$ADGroupMgmtXYLoc = $ADGroupMgmt.Location
	$ActiveDirectoryMenu.Location = $ADGroupMgmtXYLoc
	$ActiveDirectoryMenu.Show()
}

### PASSWORD RESET FORM 
Function PasswordOUQuery{
	$ADPasswordReset.ADPasswordOutput.Clear()
	$QueryPWInput = $PassResetQueryTextBox.Text
	$TargetPWQuery = "OU=" + $QueryPWInput + "," + (Get-ADDomain).DistinguishedName
	if([string]::IsNullOrEmpty($QueryPWInput)){
		$ADPasswordReset.ADPasswordOutput.AppendText("Input can not be empty.")
	}else{
		try{
			$PasswordSearchList = Get-ADUser -Filter * -SearchBase $TargetPWQuery | Select-Object SamAccountName, Name, Enabled, ObjectClass | Format-List SamAccountName, Name, Enabled, ObjectClass | Out-String
			if(-not [string]::IsNullOrEmpty($PasswordSearchList)){
				$ADPasswordReset.ADPasswordOutput.AppendText($PasswordSearchList)
			}else{
				$ADPasswordReset.ADPasswordOutput.AppendText("Could not find any Users in the " + $QueryPWInput + " OU.")
			}	
		}
		catch{
			$ADPasswordReset.ADPasswordOutput.AppendText("Could not find any Users in the " + $QueryPWInput + " OU. Check if the OU exists beforehand.")
		}
	}
}

Function PasswordResetInputs{
	$ADPasswordReset.ADPasswordOutput.Clear()
	$PWUsernameInput = $PassResetUserInput.Text
	$PPasswordInputOne = $PassResetPassInput.Text
	$PasswordInputTwo = $PassResetPassConfirm.Text

	if($PPasswordInputOne -eq $PasswordInputTwo){
		try{
			Set-ADAccountPassword -Identity $PWUsernameInput -Reset -NewPassword (ConvertTo-SecureString -AsPlainText $PPasswordInputOne -Force ) -Confirm:$false
			$ADPasswordReset.ADPasswordOutput.AppendText("Password Successfully changed for " + $PWUsernameInput)
		}catch{
			$ADPasswordReset.ADPasswordOutput.AppendText("User does not exist. Check Username.")
		}
	}else{
		$ADPasswordReset.ADPasswordOutput.AppendText("Password does not match.")
	}
}

Function PasswordListOU{
	$ADPasswordReset.ADPasswordOutput.Clear()
	$PWOLObjectList = Get-ADObject -Filter {ObjectClass -eq 'organizationalunit'} | Select-Object DistinguishedName, Name | Format-List DistinguishedName, Name | Out-String
	$ADPasswordReset.ADPasswordOutput.AppendText($PWOLObjectList)
}

Function PasswordUsersCNQuery{
	$ADPasswordReset.ADPasswordOutput.Clear()
	$TargetPasswordUsersCNQuery = "CN=Users," + (Get-ADDomain).DistinguishedName
	try{
		$PasswordCNUserSearchList = Get-ADUser -Filter * -SearchBase $TargetPasswordUsersCNQuery | Select-Object SamAccountName, Name, Enabled, ObjectClass | Format-List SamAccountName, Name, Enabled, ObjectClass | Out-String
		$ADPasswordReset.ADPasswordOutput.AppendText($PasswordCNUserSearchList)
	}
	catch{
	 $ADPasswordReset.ADPasswordOutput.AppendText("Could not find any Users in the Default Users Container. Check if their are Users in there.")
	}
}

Function PasswordResetBack{
	$ADPasswordReset.ADPasswordOutput.Clear()
	$ADPasswordReset.Hide()
	$ADPasswordResetXYLoc = $ADPasswordReset.Location
	$ActiveDirectoryMenu.Location = $ADPasswordResetXYLoc
	$ActiveDirectoryMenu.Show()
}

### CSV BULK USER CREATION FORM 
Function ADBulkCSVBrowse{
	$ADBulkUserCreation.ADBulkCSVInput.Clear()
	$BulkBrowsePopup = $ADBulkUserCreation.ADOpenFileBrowse.ShowDialog()
	if($BulkBrowsePopup -eq "OK"){    
		$FilePathCSVPopup = $ADOpenFileBrowse.filename
	}else{
		$ADBulkUserCreation.ADBulkCSVInput.Clear()
		$ADBulkUserCreation.ADBulkOutput.Clear()
		$ADBulkUserCreation.ADBulkOutput.AppendText("File not selected. Invalid File.")
	}
	$ADBulkUserCreation.ADBulkCSVInput.AppendText($FilePathCSVPopup)
}

Function ADBulkCSVAddUsers{
	$ADBulkUserCreation.ADBulkOutput.Clear()
	$ADFilePathName = $ADBulkCSVInput.Text
	if([string]::IsNullOrEmpty($ADFilePathName)){
		$ADBulkUserCreation.ADBulkOutput.AppendText("Input field must not be empty.")
	}elseif(-not ($ADFilePathName -Like "*.csv")){
		$ADBulkUserCreation.ADBulkOutput.AppendText("File must be a CSV only.")
	}
	else{
		$ImportedCSVADUsers = Import-CSV -Path $ADFilePathName
		foreach ($BulkUser in $ImportedCSVADUsers){       
			$BulkUserFirstName = $BulkUser.FirstName 
			$BulkUserLastName = $BulkUser.LastName
			$BulkUserOUTarget = $BulkUser.OU
		
			$BulkFirstNameSub = $BulkUserFirstName.Substring(0,1)
		
			If($BulkUserLastName.Length -lt 14){
				$BulkNumberX = $BulkUserLastName.Length
			}Else{
				$BulkNumberX = 14
			}
			$BulkLastNameSub = $BulkUserLastName.Substring(0,$BulkNumberX)
		
			$BulkFullName =  $BulkUserFirstName + " " + $BulkUserLastName
			$BulkSamAccountName = $BulkFirstNameSub + "." + $BulkLastNameSub
			$BulkDomain = (Get-ADDomain).DNSRoot
			$BulkUserPrincipal = $BulkSamAccountName + "@" + $BulkDomain
			$DefaultPassword = "P@ssword01"
			$BulkUserOUPath = "OU=" + $BulkUserOUTarget + "," + (Get-ADDomain).DistinguishedName

			try {
				New-ADUser -Name $BulkFullName -GivenName $BulkUserFirstName -Surname $BulkUserLastName -SamAccountName $BulkSamAccountName -UserPrincipalName $BulkUserPrincipal -Path $BulkUserOUPath -AccountPassword (ConvertTo-SecureString -AsPlainText $DefaultPassword -Force) -Enabled $true -ChangePasswordAtLogon $true
				$ADBulkUserCreation.ADBulkOutput.AppendText("`n______________________________`n")
				$ADBulkUserCreation.ADBulkOutput.AppendText("`nYour account has been created: `n")
				$ADBulkUserCreation.ADBulkOutput.AppendText("Account Full Name: " + (Get-ADUser $BulkSamAccountName).Name)
				$ADBulkUserCreation.ADBulkOutput.AppendText("`nUser Principal Name: " + (Get-ADUser $BulkSamAccountName).UserPrincipalName)
				$ADBulkUserCreation.ADBulkOutput.AppendText("`nSAM Account Name: " + (Get-ADDomain).NetBIOSName + "\" + (Get-ADUser $BulkSamAccountName).SamAccountName)
				$ADBulkUserCreation.ADBulkOutput.AppendText("`nCreated in: " + $BulkUserOUPath)
				$ADBulkUserCreation.ADBulkOutput.AppendText("`nPassword is = " + $DefaultPassword)
				$ADBulkUserCreation.ADBulkOutput.AppendText("`nPassword will be reset on next login.`n")
			}catch [Microsoft.ActiveDirectory.Management.ADIdentityAlreadyExistsException] {
				$ADBulkUserCreation.ADBulkOutput.AppendText("`n______________________________`n")
				$ADBulkUserCreation.ADBulkOutput.AppendText("`nNOTE: " + $BulkFullName + " Already Exists in the Active Directory Domain. `nTherefore you will get a different Account Name.`n")
				$UserRandomVar = Get-Random -Minimum 1 -Maximum 999
				$NewBulkLastName = $BulkLastNameSub + "." + $UserRandomVar
				$NewBulkFullName = $BulkUserFirstName + " " + $NewBulkLastName
				$NewBulkSamAccountName = $BulkFirstNameSub + "." + $NewBulkLastName
				$NewBulkUserPrincipal = $NewBulkSamAccountName + "@" + $BulkDomain
				try{
					New-ADUser -Name $NewBulkFullName -GivenName $BulkUserFirstName -Surname $NewBulkLastName -SamAccountName $NewBulkSamAccountName -UserPrincipalName $NewBulkUserPrincipal -Path $BulkUserOUPath -AccountPassword (ConvertTo-SecureString -AsPlainText $DefaultPassword -Force) -Enabled $true -ChangePasswordAtLogon $true
					$ADBulkUserCreation.ADBulkOutput.AppendText("`n______________________________`n")
					$ADBulkUserCreation.ADBulkOutput.AppendText("`nYour account has been created: `n")
					$ADBulkUserCreation.ADBulkOutput.AppendText("Account Full Name: " + (Get-ADUser $NewBulkSamAccountName).Name)
					$ADBulkUserCreation.ADBulkOutput.AppendText("`nUser Principal Name: " + (Get-ADUser $NewBulkSamAccountName).UserPrincipalName)
					$ADBulkUserCreation.ADBulkOutput.AppendText("`nSAM Account Name: " + (Get-ADDomain).NetBIOSName + "\" + (Get-ADUser $NewBulkSamAccountName).SamAccountName)
					$ADBulkUserCreation.ADBulkOutput.AppendText("`nCreated in: " + $BulkUserOUPath)
					$ADBulkUserCreation.ADBulkOutput.AppendText("`nPassword is = " + $DefaultPassword)
					$ADBulkUserCreation.ADBulkOutput.AppendText("`nPassword will be reset on next login.`n")
				}catch{
					$ADBulkUserCreation.ADBulkOutput.AppendText("`n______________________________`n")
					$ADBulkUserCreation.ADBulkOutput.AppendText("`nUnexpected Error, Something went wrong. Please try again.`n")
				}
			}catch {
				$ADBulkUserCreation.ADBulkOutput.AppendText("`n______________________________`n")
				$ADBulkUserCreation.ADBulkOutput.AppendText("`nSomething went wrong. Please try again. Check if OU Exists?`n")
			}	
		}
	}
}

Function CSVBulkBack{
	$ADBulkUserCreation.Hide()
	$ADBulkUserCreation.ADBulkOutput.Clear()
	$ADBulkUserCreationXYLoc = $ADBulkUserCreation.Location
	$ActiveDirectoryMenu.Location = $ADBulkUserCreationXYLoc
	$ActiveDirectoryMenu.Show()
}


## MANAGEMENT MENU BUTTONS 3RD LAYER
### FILE SHARE PERMISSION CHECK 
Function FilesShareCreationButton{
	$MgmtFileShareForm.MgmtFileShareOutput.Clear()
	$FileShareNameCreation = $MgmtFileShareName.Text
	$FileSharePathCreation = $MgmtFileShareDir.Text
	$UserorGroupShareName = $MgmtFileShareUser.Text

	try{
		if ($MgmtFileShareFull.Checked -eq $true){
			New-SmbShare -Name $FileShareNameCreation -Path $FileSharePathCreation -FullAccess $UserorGroupShareName -ReadAccess Everyone -ErrorAction Stop
			$MgmtFileShareForm.MgmtFileShareOutput.AppendText("File Share Successfully Created in " + $FileSharePathCreation + " With Full Access")		
		}
		elseif ($MgmtFileShareChange.Checked -eq $true){
			New-SmbShare -Name $FileShareNameCreation -Path $FileSharePathCreation -ChangeAccess $UserorGroupShareName -ReadAccess Everyone -ErrorAction Stop
			$MgmtFileShareForm.MgmtFileShareOutput.AppendText("File Share Successfully Created in " + $FileSharePathCreation + " With Change Access")
		}elseif ($MgmtFileShareRead.Checked -eq $true){
			New-SmbShare -Name $FileShareNameCreation -Path $FileSharePathCreation -ReadAccess $UserorGroupShareName , Everyone -ErrorAction Stop
			$MgmtFileShareForm.MgmtFileShareOutput.AppendText("File Share Successfully Created in " + $FileSharePathCreation + " With Read Access")
		}else{
			$MgmtFileShareForm.MgmtFileShareOutput.AppendText("Fields must not be Empty. Try Again with all fields populated")
		}
	}catch [Microsoft.Management.Infrastructure.CimException]{
		$MgmtFileShareForm.MgmtFileShareOutput.AppendText("`nFolder not found")
		$MgmtFileShareForm.MgmtFileShareOutput.AppendText("`nFolder was created at " + $FileSharePathCreation)
		$MgmtFileShareForm.MgmtFileShareOutput.AppendText("`nTry Again")
		mkdir $FileSharePathCreation
	}catch{
		$MgmtFileShareForm.MgmtFileShareOutput.AppendText("Something Happened. Try Again")
	}
}

Function MgmtFolderBrowseFuction{
	$MgmtFileShareForm.MgmtFileShareOutput.Clear()
	$MgmtFileShareForm.MgmtFileShareDir.Clear()
	$MgmtFilePopupTmp = $MgmtFileShareForm.MgmtFileShareBrowse.ShowDialog()
	if($MgmtFilePopupTmp -eq "OK"){    
		$FilePathFilePremPopupTmp = $MgmtFileShareBrowse.SelectedPath
	}else{
		$MgmtFileShareForm.MgmtFileShareOutput.AppendText("`nInvalid Folder`n")
		$MgmtFileShareForm.MgmtFileShareDir.Clear()
	}
	$MgmtFileShareForm.MgmtFileShareDir.AppendText($FilePathFilePremPopupTmp)
}

Function FileSharePermQuery {
	$MgmtFileShareForm.MgmtFileShareOutput.Clear()
	$MgmtFileShareFileShareTextQuery = $MgmtFileShareName.text
	try{
		$MgmtFileShareQueryList = Get-SmbShare -Name $MgmtFileShareFileShareTextQuery
		$MgmtFileShareQueryListPerm = Get-SmbShareAccess -Name $MgmtFileShareFileShareTextQuery | Select-Object AccountName, AccessRight, AccessControlType | Sort-Object AccountName, AccessRight,AccessControlType | Out-String
		$MgmtFileShareForm.MgmtFileShareOutput.AppendText($MgmtFileShareQueryList)
		$MgmtFileShareForm.MgmtFileShareOutput.AppendText($MgmtFileShareQueryListPerm)
	}catch {
		if ((-not ([string]::IsNullOrEmpty($MgmtFileShareFileShareTextQuery))) -or ((-not [string]::IsNullOrWhiteSpace($MgmtFileShareFileShareTextQuery)))){
			$MgmtFileShareForm.MgmtFileShareOutput.AppendText("`nFile Share Name: "+ $MgmtFileShareFileShareTextQuery + " Available.")
		}else{
			$MgmtFileShareForm.MgmtFileShareOutput.AppendText("`nFile Share Name Field must not be Empty. Try Again.")
		}
	}
}

Function FullControl {
	if ($MgmtFileShareFull.Checked -eq $true){
		$MgmtFileShareChange.Checked = $true
		$MgmtFileShareRead.Checked = $true
	}
}

Function ChangeAccessControl {
	if ($MgmtFileShareChange.Checked -eq $true ){
		$MgmtFileShareRead.Checked = $true
	}
	if ($MgmtFileShareChange.Checked -eq $false){
		$MgmtFileShareFull.Checked =$false
	}
}

Function ReadAccessControl{
	if ($MgmtFileShareRead.Checked -eq $false){
		$MgmtFileShareFull.Checked =$false
		$MgmtFileShareChange.Checked = $frue
	}
}

Function QueryAllFileShare {
	$MgmtFileShareForm.MgmtFileShareOutput.Clear()
	$SMBShareGetAll = Get-SmbShare -Name * | Select-Object Name, Path | Sort-Object Name, Path | Format-List | Out-String
	$MgmtFileShareForm.MgmtFileShareOutput.AppendText("These are the All the Shares Available in the Machine:")
	$MgmtFileShareForm.MgmtFileShareOutput.AppendText($SMBShareGetAll)
}

Function BackFileShareManagement{
	$MgmtFileShareForm.Hide()
	$MgmtFileShareFormXYLoc = $MgmtFileShareForm.Location
	$ManagementMenu.Location = $MgmtFileShareFormXYLoc
	$ManagementMenu.Show()
}

### CHECK FOLDER AND FILE(?) PREMISSIONS FORM
Function MgmtFilePermissionBrowse {
	$MgmtFilePermissionForm.MgmtFilePermInput.Clear()
	$MgmtFilePremPopup = $MgmtFilePermissionForm.MgmtFilePermBrowseBox.ShowDialog()
	if($MgmtFilePremPopup -eq "OK"){    
		$FilePathFilePremPopup = $MgmtFilePermBrowseBox.SelectedPath
	}else{
		$MgmtFilePermissionForm.MgmtFilePermOutput.AppendText("`nInvalid Folder`n")
		$MgmtFilePermissionForm.MgmtFilePermInput.Clear()
	}
	$MgmtFilePermissionForm.MgmtFilePermInput.AppendText($FilePathFilePremPopup)
}

Function MgmtFolderSubmitCheck {
	$MgmtFilePermissionForm.MgmtFilePermOutput.Clear()
	$MgmtFilePathTmp = $MgmtFilePermInput.text
	try{
		$PermFormFolderQueryString = (Get-Acl -Path $MgmtFilePathTmp).Access | Sort-Object IsInherited, Identity-Reference | Select-Object IdentityReference, FileSystemRights, IsInherited| Format-List IdentityReference, FileSystemRights, IsInherited | Out-String
		$MgmtFilePermissionForm.MgmtFilePermOutput.AppendText($PermFormFolderQueryString)
	}catch{
		$MgmtFilePermissionForm.MgmtFilePermOutput.AppendText("No Folder Selected. Select a folder.")
	}
}

Function MgmtFilePremBack{
	$MgmtFilePermissionForm.Hide()
	$MgmtFilePermissionForm.MgmtFilePermOutput.Clear()
	$MgmtFilePermissionForm.MgmtFilePermInput.Clear()
	$MgmtFilePermissionFormXYLoc = $MgmtFilePermissionForm.Location
	$ManagementMenu.Location = $MgmtFilePermissionFormXYLoc
	$ManagementMenu.Show()
}

### CHANGE IP LOCAL ADDRESS
Function QueryComputerIPAddress {
	$MgmtChangeIPForm.MgmtChangeIPOutput.Clear()
	$QueryComputerIP = Get-NetIPConfiguration -InterfaceAlias * | Out-String
	$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText($QueryComputerIP)

}

Function ResetAdaptorIP {
	$MgmtChangeIPForm.MgmtChangeIPOutput.Clear()
	$AdapterIndexInput2 = $MgmtChangeAdapterInput.Text
	if(-not [string]::IsNullOrEmpty($AdapterIndexInput2)){
		try{
			Remove-NetRoute -InterfaceIndex $AdapterIndexInput2 -AddressFamily IPv4 -Confirm:$False
			Set-NetIPInterface -InterfaceIndex $AdapterIndexInput2 -Dhcp Enabled -AddressFamily IPv4
			Set-DnsClientServerAddress -InterfaceIndex $AdapterIndexInput2 -ResetServerAddresses
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nSuccussfully Resetted Adapter Configuration. DHCP is Enabled.")
		}catch{
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("Error trying to reset IP configurations.")
		}
	}else{
		$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("Adaptor Index Input is Empty or Invaild. Try Again.")
	}
}

Function ChangeIPAddressSubmit {
	$MgmtChangeIPForm.MgmtChangeIPOutput.Clear()
	$AdapterIndexInput = $MgmtChangeAdapterInput.Text
	$IPAddressInput = $MgmtChangeIPInput.Text

	$SubnetMaskInput = [ipaddress] $MgmtChangeIPSubnet.Text
	$binaryString=[String]::Empty
		$SubnetMaskInput.GetAddressBytes() | foreach {
		$binaryString+=[Convert]::ToString($_,2)
		}
			$LengthSize = $binaryString.TrimEnd('0')
			$PrefixLength = $LengthSize.Length

	$DefaultGateawayInput = $MgmtChangeIPGateway.Text
	$PreferredDNSInput = $MgmtChangeIPPrefDNS.Text
	$AlternativeDNSInput = $MgmtChangeIPAltDNS.Text

	# Interface Index, IP Address, Subnet Mask and One DNS Server (4)
	if((-not [string]::IsNullOrEmpty($AdapterIndexInput)) -and (-not [string]::IsNullOrEmpty($IPAddressInput)) -and (-not [string]::IsNullOrEmpty($PrefixLength)) -and (-not [string]::IsNullOrEmpty($PreferredDNSInput)) -and ([string]::IsNullOrEmpty($AlternativeDNSInput)) -and ([string]::IsNullOrEmpty($DefaultGateawayInput))){
		try{
			Remove-NetRoute -InterfaceIndex $AdapterIndexInput -AddressFamily IPv4 -Confirm:$False
			Set-NetIPInterface -InterfaceIndex $AdapterIndexInput -Dhcp Enabled -AddressFamily IPv4
			Set-DnsClientServerAddress -InterfaceIndex $AdapterIndexInput -ResetServerAddresses
			
			New-NetIPAddress -InterfaceIndex $AdapterIndexInput -Ipaddress $IPAddressInput -PrefixLength $PrefixLength -AddressFamily IPv4 -ErrorAction Stop #-SkipAsSource $True
			Set-DnsClientServerAddress -InterfaceIndex $AdapterIndexInput -ServerAddresses $PreferredDNSInput
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nSuccussfully Changed Adapter Index: "+ $AdapterIndexInput + " to the following;")
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nIP:"+$IPAddressInput)
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nSubnet Mask: "+$SubnetMaskInput)
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nPreffered DNS: "+$PreferredDNSInput)
		}
		catch{
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("Error in IP Configurations. (Debug Code: 1)")
		}
	#Interface Index, IP Address, Subnet Mask and Two DNS Servers (5)
	}elseif((-not [string]::IsNullOrEmpty($AdapterIndexInput)) -and (-not [string]::IsNullOrEmpty($IPAddressInput)) -and (-not [string]::IsNullOrEmpty($PrefixLength)) -and (-not [string]::IsNullOrEmpty($PreferredDNSInput)) -and (-not [string]::IsNullOrEmpty($AlternativeDNSInput)) -and ([string]::IsNullOrEmpty($DefaultGateawayInput))){
		try{
			Remove-NetRoute -InterfaceIndex $AdapterIndexInput -AddressFamily IPv4 -Confirm:$False
			Set-NetIPInterface -InterfaceIndex $AdapterIndexInput -Dhcp Enabled -AddressFamily IPv4
			Set-DnsClientServerAddress -InterfaceIndex $AdapterIndexInput -ResetServerAddresses
			
			New-NetIPAddress -InterfaceIndex $AdapterIndexInput -Ipaddress $IPAddressInput -PrefixLength $PrefixLength -AddressFamily IPv4 -ErrorAction Stop #-SkipAsSource $True
			Set-DnsClientServerAddress -InterfaceIndex $AdapterIndexInput -ServerAddresses ($PreferredDNSInput,$AlternativeDNSInput)
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nSuccussfully Changed Adapter Index: "+ $AdapterIndexInput + " to the following;")
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nIP:"+$IPAddressInput)
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nSubnet Mask: "+$SubnetMaskInput)
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nPreffered DNS: "+$PreferredDNSInput)
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nAlternative DNS: "+ $AlternativeDNSInput)
		}catch{
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("Error in IP configurations. (Debug Code: 2)")
		}
	#Interface Index, IP Address, Subnet Mask and One DNS Server and Gateway (5)
	}elseif((-not [string]::IsNullOrEmpty($AdapterIndexInput)) -and (-not [string]::IsNullOrEmpty($IPAddressInput)) -and (-not [string]::IsNullOrEmpty($PrefixLength)) -and (-not [string]::IsNullOrEmpty($PreferredDNSInput)) -and (-not [string]::IsNullOrEmpty($DefaultGateawayInput)) -and ([string]::IsNullOrEmpty($AlternativeDNSInput))){
		try{
			Remove-NetRoute -InterfaceIndex $AdapterIndexInput -AddressFamily IPv4 -Confirm:$False
			Set-NetIPInterface -InterfaceIndex $AdapterIndexInput -Dhcp Enabled -AddressFamily IPv4
			Set-DnsClientServerAddress -InterfaceIndex $AdapterIndexInput -ResetServerAddresses
			
			New-NetIPAddress -InterfaceIndex $AdapterIndexInput -Ipaddress $IPAddressInput -PrefixLength $PrefixLength -DefaultGateway $DefaultGateawayInput -AddressFamily IPv4 -ErrorAction Stop #-SkipAsSource $True
			Set-DnsClientServerAddress -InterfaceIndex $AdapterIndexInput -ServerAddresses $PreferredDNSInput
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nSuccussfully Changed Adapter Index: "+ $AdapterIndexInput + " to the following;")
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nIP:"+$IPAddressInput)
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nSubnet Mask: "+$SubnetMaskInput)
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nDefault Gateway: "+$DefaultGateawayInput)
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nPreffered DNS: "+$PreferredDNSInput)
		}catch{
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("Error in IP configurations. (Debug Code: 3)")
		}
	#Interface Index, IP Address, Subnet Mask and Two DNS Servers and Gateway (All Fields/6)
	}elseif((-not [string]::IsNullOrEmpty($AdapterIndexInput)) -and (-not [string]::IsNullOrEmpty($IPAddressInput)) -and (-not [string]::IsNullOrEmpty($PrefixLength)) -and (-not [string]::IsNullOrEmpty($PreferredDNSInput)) -and (-not [string]::IsNullOrEmpty($AlternativeDNSInput)) -and (-not [string]::IsNullOrEmpty($DefaultGateawayInput))){
		try{
			Remove-NetRoute -InterfaceIndex $AdapterIndexInput -AddressFamily IPv4 -Confirm:$False
			Set-NetIPInterface -InterfaceIndex $AdapterIndexInput -Dhcp Enabled -AddressFamily IPv4
			Set-DnsClientServerAddress -InterfaceIndex $AdapterIndexInput -ResetServerAddresses
			
			New-NetIPAddress -InterfaceIndex $AdapterIndexInput -Ipaddress $IPAddressInput -PrefixLength $PrefixLength -DefaultGateway $DefaultGateawayInput -AddressFamily IPv4 -ErrorAction Stop #-SkipAsSource $True
			Set-DnsClientServerAddress -InterfaceIndex $AdapterIndexInput -ServerAddresses ($PreferredDNSInput,$AlternativeDNSInput)
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nSuccussfully Changed Adapter Index: "+ $AdapterIndexInput + " to the following;")
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nIP:"+$IPAddressInput)
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nSubnet Mask: "+$SubnetMaskInput)
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nDefault Gateway: "+$DefaultGateawayInput)
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nPreffered DNS: "+$PreferredDNSInput)
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("`nAlternative DNS: "+ $AlternativeDNSInput)
		}catch{
			$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("Error in IP configurations. (Debug Code: 4)")
		}
	}else{
		$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText("Fill in IP Address only via our supported IP configurations. Make sure fields aren't Empty.")
	}
}

Function QueryAdaptors {
		$MgmtChangeIPForm.MgmtChangeIPOutput.Clear()
		$AdapterNameInputIFFind =Get-NetAdapter | Select-Object Name , InterfaceDescription, ifIndex, MacAddress| Sort-Object Name| Format-List Name , InterfaceDescription, ifIndex, MacAddress | Out-String
		$MgmtChangeIPForm.MgmtChangeIPOutput.AppendText($AdapterNameInputIFFind)
}

Function ChangeIPAddressBack {
	$MgmtChangeIPForm.Hide()
	$MgmtChangeIPForm.MgmtChangeIPOutput.Clear()
	$MgmtChangeIPFormXYLoc = $MgmtChangeIPForm.Location
	$ManagementMenu.Location = $MgmtChangeIPFormXYLoc
	$ManagementMenu.Show()
}

### CHANGING LOCAL COMPUTER AND JOINING DOMAIN OR LEAVING DOMAIN INTO WORKGROUP
Function RenamePcOnlyLockBoxes {
	if($MgmtRenameCheckBox.Checked -eq $true){
		$MgmtChangeDomainNameInput.Clear()
		$MgmtChangeWorkGroupNameInput.Clear()
		$MgmtChangeDomainNameInput.ReadOnly = $true
		$MgmtChangeWorkGroupNameInput.ReadOnly = $true
	}else{
		$MgmtChangeDomainNameInput.ReadOnly = $false
		$MgmtChangeWorkGroupNameInput.ReadOnly = $false
	}
}

Function UserLockTextBoxes {
	$DomainNameUserInputChecker = $MgmtChangeDomainNameInput.Text
	$WorkGroupUserInputChecker = $MgmtChangeWorkGroupNameInput.Text

	if(-not [string]::IsNullOrEmpty($DomainNameUserInputChecker) -and ([string]::IsNullOrEmpty($WorkGroupUserInputChecker))){
		$MgmtChangeWorkGroupNameInput.Clear()
		$MgmtChangeWorkGroupNameInput.ReadOnly = $true
	}elseif(-not [string]::IsNullOrEmpty($WorkGroupUserInputChecker) -and ([string]::IsNullOrEmpty($DomainNameUserInputChecker))){
		$MgmtChangeDomainNameInput.Clear()
		$MgmtChangeDomainNameInput.ReadOnly = $true
	}else{
		$MgmtChangeDomainNameInput.Clear()
		$MgmtChangeWorkGroupNameInput.Clear()
		$MgmtChangeWorkGroupNameInput.ReadOnly = $false
		$MgmtChangeDomainNameInput.ReadOnly = $false
	}
}

Function DomainChangeSubmitFunction {
	$MgmtChangePCOutput.Clear()
	$TargetPCName = $MgmtChangePCNameInput.Text
	$DomainNameUserInput = $MgmtChangeDomainNameInput.Text
	$WorkGroupUserInput = $MgmtChangeWorkGroupNameInput.Text

	$DomainAdminUserName = $MgmtChangeDomainUsernameInput.Text
	$DomainAdminPassword = ConvertTo-SecureString -AsPlainText $MgmtChangeDomainPassInput.Text -Force
	$DomainAdminCreds = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $DomainAdminUserName, $DomainAdminPassword

	if($MgmtRenameCheckBox.Checked -eq $true){
		if($MgmtRestartCheckBox.Checked -eq $true){
			try{
				Rename-Computer -NewName $TargetPCName -DomainCredential $DomainAdminCreds -Force -Confirm:$false -Restart -ErrorAction Stop
				$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Renamed This PC to " + $TargetPCName + "Sucessfully.`nYour machine will restart automatically in a Second.")
			}catch{
				$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Could not Rename PC. Something went wrong. Debug Code BR")
			}
		}else{
			try{
				Rename-Computer -NewName $TargetPCName -DomainCredential $DomainAdminCreds -Force -Confirm:$false -ErrorAction Stop
				$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Renamed This PC to " + $TargetPCName + "Sucessfully.")
				$MgmtChangePCForm.MgmtChangePCOutput.AppendText("`nPlease Restart your PC to apply these changes.")
			}catch{
				$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Could not Rename PC. Something went wrong. Debug Code BNR")
			}
		}
	}elseif([string]::IsNullOrEmpty($DomainNameUserInput) -and ([string]::IsNullOrEmpty($WorkGroupUserInput))){
		$MgmtChangePCForm.MgmtChangePCOutput.AppendText("`nUsername and Password Field Can Not Be Empty.")
	}elseif((-not [string]::IsNullOrEmpty($DomainNameUserInput) -and ([string]::IsNullOrEmpty($WorkGroupUserInput)))){
		if($MgmtRestartCheckBox.Checked -eq $true){
			try{
				Add-Computer -DomainName $DomainNameUserInput -NewName $TargetPCName -Credential $DomainAdminCreds -Force -Confirm:$false -Restart -ErrorAction Stop
				$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Renamed This PC to " + $TargetPCName + ".`nAlso Joined the Domain: " + $DomainNameUserInput + " Sucessfully.`nYour machine will restart automatically in a Second.")
			}catch{
				$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Could not Join Domain. Something went wrong. Debug Code CR")
			}
		}else{
			try{
				Add-Computer -DomainName $DomainNameUserInput -NewName $TargetPCName -Credential $DomainAdminCreds -Force -Confirm:$false -ErrorAction Stop
				$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Renamed This PC to " + $TargetPCName + ".`nAlso Joined the Domain: " + $DomainNameUserInput + " Sucessfully.")
				$MgmtChangePCForm.MgmtChangePCOutput.AppendText("`nPlease Restart your PC to apply these changes.")
			}catch{
				$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Could not Join Domain. Something went wrong. Debug Code CNR")
			}
		}
	}elseif((-not [string]::IsNullOrEmpty($WorkGroupUserInput) -and ([string]::IsNullOrEmpty($DomainNameUserInput)))){
		if($MgmtRestartCheckBox.Checked -eq $true){
			$CurrentPCName = $env:computername
			if($CurrentPCName -ne $TargetPCName){
					try{
						Rename-Computer -NewName $TargetPCName -DomainCredential $DomainAdminCreds -Force -Confirm:$false -ErrorAction Stop
					}catch{
						$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Could not Rename PC to Leave Domain. Something went wrong. Debug Code DA")
					}
					$CheckIfInDomainVar = (Get-WmiObject -Class Win32_ComputerSystem).PartOfDomain
					if($CheckIfInDomainVar -eq $true){
						try{
							Remove-Computer -ComputerName $TargetPCName -UnjoinDomainCredential $DomainAdminCreds -WorkgroupName $WorkGroupUserInput -Force -Confirm:$false -Restart -ErrorAction Stop
							$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Renamed This PC to " + $TargetPCName + "Sucessfully.`n Also Left the Domain and Joined the " + $WorkGroupUserInput + "Workgroup.`nYour machine will restart automatically in a Second.")
						}catch{
							$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Could not Leave Domain to Join Workgroup. Something went wrong. Debug Code DR")
						}
					}else{
						try{
							Add-Computer -WorkGroupName $WorkGroupUserInput -Force -Confirm:$false -Restart -Credential $DomainAdminCreds
							$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Renamed This PC to " + $TargetPCName + "Sucessfully. Joined the " + $WorkGroupUserInput + " Workgroup.`nYour machine will restart automatically in a Second.")
						}catch{
							$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Could not Join Workgroup. Something went wrong. Debug Code DWR")
						}
					}
				}else{
					$CheckIfInDomainVar = (Get-WmiObject -Class Win32_ComputerSystem).PartOfDomain
					if($CheckIfInDomainVar -eq $true){
						try{
							Remove-Computer -ComputerName $TargetPCName -UnjoinDomainCredential $DomainAdminCreds -WorkgroupName $WorkGroupUserInput -Force -Confirm:$false -Restart -ErrorAction Stop
							$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Sucessfully Left the Domain and Joined the " + $WorkGroupUserInput + "Workgroup.`nYour machine will restart automatically in a Second.")
						}catch{
							$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Could not Leave Domain and Join Workgroup. Something went wrong. Debug Code DDWR")
						}
					}else{
						try{
							Add-Computer -WorkGroupName $WorkGroupUserInput -Force -Confirm:$false -Restart -Credential $DomainAdminCreds -ErrorAction Stop
							$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Sucessfully Joined the " + $WorkGroupUserInput + " Workgroup.`nYour machine will restart automatically in a Second.")
						}catch{
							$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Could not Join Workgroup. Something went wrong. Debug Code DNAWR")
						}
					}
				}
		}else{
				$CurrentPCName = $env:computername
				if($CurrentPCName -ne $TargetPCName){
					try{
						Rename-Computer -NewName $TargetPCName -DomainCredential $DomainAdminCreds -Force -Confirm:$false -ErrorAction Stop
					}catch{
						$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Could not Rename PC to Leave Domain. Something went wrong. Debug Code DDA")
					}
					$CheckIfInDomainVar = (Get-WmiObject -Class Win32_ComputerSystem).PartOfDomain
					if($CheckIfInDomainVar -eq $true){
						try{
							Remove-Computer -ComputerName $TargetPCName -UnjoinDomainCredential $DomainAdminCreds -WorkgroupName $WorkGroupUserInput -Force -Confirm:$false -ErrorAction Stop
							$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Renamed This PC to " + $TargetPCName + "Sucessfully.`nAlso Left the Domain and Joined the " + $WorkGroupUserInput + " Workgroup.")
							$MgmtChangePCForm.MgmtChangePCOutput.AppendText("`nPlease Restart your PC to apply these changes.")
						}catch{
							$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Could not Leave Domain to Join Workgroup. Something went wrong. Debug Code DDR")
						}
					}else{
						try{
							Add-Computer -WorkGroupName $WorkGroupUserInput -Force -Confirm:$false -Credential $DomainAdminCreds -ErrorAction Stop
							$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Renamed This PC to " + $TargetPCName + "Sucessfully. Also Joined the " + $WorkGroupUserInput + " Workgroup.")
							$MgmtChangePCForm.MgmtChangePCOutput.AppendText("`nPlease Restart your PC to apply these changes.")
						}catch{
							$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Could not Join Workgroup. Something went wrong. Debug Code DDDWR")
						}
					}
				}else{
					$CheckIfInDomainVar = (Get-WmiObject -Class Win32_ComputerSystem).PartOfDomain
					if($CheckIfInDomainVar -eq $true){
						try{
							Remove-Computer -ComputerName $TargetPCName -UnjoinDomainCredential $DomainAdminCreds -WorkgroupName $WorkGroupUserInput -Force -Confirm:$false -ErrorAction Stop
							$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Sucessfully Left the Domain and Joined the " + $WorkGroupUserInput + " Workgroup.")
							$MgmtChangePCForm.MgmtChangePCOutput.AppendText("`nPlease Restart your PC to apply these changes.")
						}catch{
							$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Could not Leave Domain and Join Workgroup. Something went wrong. Debug Code DDDDWR")
						}
					}else{
						try{
							Add-Computer -WorkGroupName $WorkGroupUserInput -Force -Confirm:$false -Credential $DomainAdminCreds -ErrorAction Stop
							$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Sucessfully Joined the " + $WorkGroupUserInput + " Workgroup.")
							$MgmtChangePCForm.MgmtChangePCOutput.AppendText("`nPlease Restart your PC to apply these changes.")
						}catch{
							$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Could not Join Workgroup. Something went wrong. Debug Code DNAWR")
					}
				}
			}
		}
	}elseif([string]::IsNullOrEmpty($WorkGroupUserInput) -and ([string]::IsNullOrEmpty($DomainNameUserInput))){
		$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Domain or Workgroup Fields Can Not Be Empty...")
	}else{
		$MgmtChangePCForm.MgmtChangePCOutput.AppendText("Debug Code XXI. Something went wrong.")
	}
}

Function QueryComouterListJoinDomainForm {
	$MgmtChangePCForm.MgmtChangePCOutput.Clear()
	$QueryComputerList = Get-ADComputer -Filter * | Select-Object  Name, DNSHostName | Format-List Name, DNSHostName | Out-String
	$MgmtChangePCForm.MgmtChangePCOutput.AppendText($QueryComputerList)
}

Function ChangeComputerDomainBack {
	$MgmtChangePCForm.Hide()
	$MgmtChangePCForm.MgmtChangePCOutput.Clear()
	$MgmtChangePCFormXYLoc = $MgmtChangePCForm.Location
	$ManagementMenu.Location = $MgmtChangePCFormXYLoc
	$ManagementMenu.Show()
}

### MAC ADDRESS GENERATION FORM
Function MACFormSubmit {
	$MgmtMACAddressForm.MgmtMACAddressOutput.Clear()
	$NumbersubmittedInput = $MgmtMACAddressInput.Text
	$Numbersubmitted = 1
	$InputStringTest = $NumbersubmittedInput -as [Double]
	$testvarok = $InputStringTest -ne $NULL
	if( -not $testvarok){
		$MgmtMACAddressForm.MgmtMACAddressOutput.AppendText("Please enter a vaild number.")
	}else{
		While ($Numbersubmitted -le $NumberSubmittedInput){
				$MacFormations = (1..12 | ForEach-Object {'{0:x}' -f (Get-Random -Minimum 0 -Maximum 15 )}) -join "" 
				$Capitalize = $MacFormations.ToUpper() | Out-String
				$SpaceAppend = $Capitalize -replace '(..)','$1 '
				$HyphenAppend = $Capitalize -replace '(..)','$1-'
				$ColAppend = $Capitalize -replace '(..)','$1:'
				$RemoveExtra1 = $SpaceAppend.Substring(0,17)
				$RemoveExtra2 = $HyphenAppend.Substring(0,17)
				$RemoveExtra3 = $ColAppend.Substring(0,17)
				if ($Numbersubmitted -eq 1){
					$MgmtMACAddressForm.MgmtMACAddressOutput.AppendText("Here is the Requested Mac Address With Different Formats")
					$MgmtMACAddressForm.MgmtMACAddressOutput.AppendText("`n____________________________")
				}
				$MgmtMACAddressForm.MgmtMACAddressOutput.AppendText("`n")
				$MgmtMACAddressForm.MgmtMACAddressOutput.AppendText("`n"+$Capitalize)
				$MgmtMACAddressForm.MgmtMACAddressOutput.AppendText($RemoveExtra1+"`n")
				$MgmtMACAddressForm.MgmtMACAddressOutput.AppendText($RemoveExtra2+"`n")
				$MgmtMACAddressForm.MgmtMACAddressOutput.AppendText($RemoveExtra3+"`n")
				$MgmtMACAddressForm.MgmtMACAddressOutput.AppendText("`n____________________________")
				$Numbersubmitted++
		}
	}
}

Function MACBack{
	$MgmtMACAddressForm.Hide()
	$MgmtMACAddressFormXYLoc = $MgmtMACAddressForm.Location
	$ManagementMenu.Location = $MgmtMACAddressFormXYLoc
	$ManagementMenu.Show()
}

### REMOTE DISK MANAGEMENT
Function QueryDiskLocal{
	$MgmtDiskMgmtForm.MgmtDiskMgmtOutput.Clear()
	$DiskQueryLocalPress = Get-PSDrive | Where {$_.Free -gt 1} | Out-String
	$MgmtDiskMgmtForm.MgmtDiskMgmtOutput.AppendText($DiskQueryLocalPress)
}

Function RemoteDiskCheck{
	$MgmtDiskMgmtForm.MgmtDiskMgmtOutput.Clear()
	$RemoteComputer = $MgmtDiskMgmtInput.Text
	$TestRemoteComputer = Test-Connection -BufferSize 32 -Count 1 -ComputerName $RemoteComputer -Quiet
	if($TestRemoteComputer -eq $true){
		try{
			$DiskTextOutputTmp = Get-WmiObject Win32_LogicalDisk -ComputerName $RemoteComputer | Select-Object DeviceID, VolumeName, @{'Name'='Size (GB)'; 'Expression'={[math]::truncate($_.size / 1GB)}}, @{'Name'='Freespace (GB)'; 'Expression'={[math]::truncate($_.freespace / 1GB)}} | Format-List | Out-String 
			$MgmtDiskMgmtForm.MgmtDiskMgmtOutput.AppendText($DiskTextOutputTmp)
		}catch{
			$MgmtDiskMgmtForm.MgmtDiskMgmtOutput.AppendText("Invalid Computer Name or No Connection was Established.")
		}
	}else{
		$MgmtDiskMgmtForm.MgmtDiskMgmtOutput.AppendText("Error: No Connection was Established to the Remote Computer.`n Note: Due to time constraints, the remoute computer needs to have a disabled firewall.")
	}
}

Function OpenDiskMangementLocal{
	try{
		diskmgmt.msc
	}catch{
		$MgmtDiskMgmtForm.MgmtDiskMgmtOutput.AppendText("Failed to open Disk Management.")
	}
}

Function RemoteDiskBack{
	$MgmtDiskMgmtForm.Hide()
	$MgmtDiskMgmtFormXYLoc = $MgmtDiskMgmtForm.Location
	$ManagementMenu.Location = $MgmtDiskMgmtFormXYLoc
	$ManagementMenu.Show()
}

## DIAGNOSTICS MENU BUTTONS - 3RD LAYER
### CHECK ACTIVE DIRECTORY INFORMATION
Function RefreshActiveDirectoryDetails{
	$DiagADDetails.DiagADDetailsOutput.Clear()
	$DetailsRefreshActiveDirectory = Get-ADDomain | Format-List | Out-String
	$DiagADDetails.DiagADDetailsOutput.AppendText($DetailsRefreshActiveDirectory)
}

Function ActiveDirectortDetailsBack {
	$DiagADDetails.DiagADDetailsOutput.Clear()
	$DiagADDetails.Hide()
	$DiagADDetailsXYLoc = $DiagADDetails.Location
	$DiagnosticsMenu.Location = $DiagADDetailsXYLoc
	$DiagnosticsMenu.Show()
}

### CHECK MACHINES FORMS
Function RefreshMachinesDiagnosticsList{
	$DiagListADPCs.DiagListPCOutput.Clear()
	$DiagnosticsRefreshList = Get-ADComputer -Filter * -Properties operatingSystem | group -Property operatingSystem | Select Name,Count | Format-List  Name,Count | Out-String
	$DiagnosticsRefreshList2 = Get-ADComputer -Filter * | Select-Object Name,DNSHostName,Enabled | Format-List Name,DNSHostName,Enabled | Out-String

	$DiagListADPCs.DiagListPCOutput.AppendText("OS Type Count: `n ")
	$DiagListADPCs.DiagListPCOutput.AppendText($DiagnosticsRefreshList)
	$DiagListADPCs.DiagListPCOutput.AppendText("Names of the Machines Connected to the Active Directory:")
	$DiagListADPCs.DiagListPCOutput.AppendText($DiagnosticsRefreshList2)
}

Function BackMachineListDiagnostics{
	$DiagListADPCs.DiagListPCOutput.Clear()
	$DiagListADPCs.Hide()
	$DiagListADPCsXYLoc = $DiagListADPCs.Location
	$DiagnosticsMenu.Location = $DiagListADPCsXYLoc
	$DiagnosticsMenu.Show()
}

### CHECK ALL USERS IN ACTIVE DIRECTORY
Function RefreshUserListAD {
	$DiagListADUsers.DiagListUsersOutput.Clear()
	$DiagListADUsersOutput = Get-ADUser -Filter * | Select-Object DistinguishedName, SamAccountName, Name, Enabled, ObjectClass | Format-List DistinguishedName, SamAccountName, Name, Enabled, ObjectClass | Out-String
	$DiagListADUsers.DiagListUsersOutput.AppendText("Users Are:")
	$DiagListADUsers.DiagListUsersOutput.AppendText($DiagListADUsersOutput)
}

 Function BackCheckALLUsersAD {
	$DiagListADUsers.DiagListUsersOutput.Clear()
	$DiagListADUsers.Hide()
	$DiagListADUsersXYLoc = $DiagListADUsers.Location
	$DiagnosticsMenu.Location = $DiagListADUsersXYLoc
	$DiagnosticsMenu.Show()
}

### CHECK OS ARCHITECTURE FORM
Function RemoteQueryOSArchitecture {
	$DiagCheckOS.DiagRemoteOSOutput.Clear()
	$DiagRemoteComputer = $DiagRemoteOSInput.Text
	$TestDiagRemoteComputer = Test-Connection -BufferSize 32 -Count 1 -ComputerName $DiagRemoteComputer -Quiet
	if([string]::IsNullOrEmpty($DiagRemoteComputer)){
		$DiagCheckOS.DiagRemoteOSOutput.AppendText("Input field must not be empty.")
	}elseif($TestDiagRemoteComputer -eq $true){
		$DiagRemoteInfo1 = (Get-WmiObject -ComputerName $DiagRemoteComputer win32_operatingsystem).name
		$DiagRemoteInfo2 = (Get-WmiObject -ComputerName $DiagRemoteComputer Win32_OperatingSystem).OSArchitecture
		$DiagRemoteJoin = $DiagRemoteInfo1.Split("|")[0]
		$DiagCheckOS.DiagRemoteOSOutput.AppendText("This remote computer is running: " + $DiagRemoteJoin)
		$DiagCheckOS.DiagRemoteOSOutput.AppendText("`nThis remote computer's architecture is " + $DiagRemoteInfo2)
	}else{
		$DiagCheckOS.DiagRemoteOSOutput.AppendText("Error: No Connection was Established to the Remote Computer. Check if the input is valid. `n Warning: This requires the remote firewall to be turned off due to limitations.")
	}
}

Function RefreshCheckLocalMachinesOS {
	$DiagCheckOS.DiagRemoteOSOutput.Clear()
	$DiagCheckOS.DiagRemoteOSOutput.AppendText("These are the list of computers connected to your " + (Get-ADDomain).DNSRoot )
	$OutputCheckRemoteIN = Get-ADComputer -Filter * -Properties operatingSystem | Select-Object Name, OperatingSystem | Format-List Name, OperatingSystem | Out-String
	$DiagCheckOS.DiagRemoteOSOutput.AppendText($OutputCheckRemoteIN)
}

Function CheckOSBack {
	$DiagCheckOS.DiagRemoteOSOutput.Clear()
	$DiagCheckOS.Hide()
	$DiagCheckOSXYLoc = $DiagCheckOS.Location
	$DiagnosticsMenu.Location = $DiagCheckOSXYLoc
	$DiagnosticsMenu.Show()
}

### PORT STATUS FORM
Function RefreshPortStatus {
	$DiagPortStatus.DiagPortStatusOutput.Clear()
	$PortStatusOutputIn = Get-NetTCPConnection | Sort-Object LocalPort | Select-Object LocalPort, State | Out-String
	$DiagPortStatus.DiagPortStatusOutput.AppendText($PortStatusOutputIn)

}

Function BackPortStatus{
	$DiagPortStatus.DiagPortStatusOutput.Clear()
	$DiagPortStatus.Hide()
	$DiagPortStatusXYLoc = $DiagPortStatus.Location
	$DiagnosticsMenu.Location = $DiagPortStatusXYLoc
	$DiagnosticsMenu.Show()
}

### CONNECTION STATUS FORM
#### NOT OUR CODE. THANKS TO TREVOR SULLIVAN. (Sullivan, 2012) ####
#### https://trevorsullivan.net/2012/07/23/powershell-tracert-or-trace-route/ ####
function Trace-Route {
    [CmdletBinding()]
    param (
          [int] $Timeout = 1000
        , [Parameter(Mandatory = $true)]
          [string] $TargetHost
        , [int] $StartingTtl = 1
        , [int] $EndingTtl = 128
        , [switch] $ResolveDns
    )
    # Create Ping and PingOptions objects
    $Ping = New-Object -TypeName System.Net.NetworkInformation.Ping;
    $PingOptions = New-Object -TypeName System.Net.NetworkInformation.PingOptions;
    #$DiagTraceroute.DiagTraceOutput.AppendText('Created Ping and PingOptions instances');
    # Assign initial Time-to-Live (TTL) to the PingOptions instance
    $PingOptions.Ttl = $StartingTtl;

    # Assign starting TTL to the 
    $Ttl = $StartingTtl;

    # Assign a random array of bytes as data to send in the datagram's buffer
    $DataBuffer = [byte[]][char[]]'aa';

    # Loop from StartingTtl to EndingTtl
    while ($Ttl -le $EndingTtl) {
        # Set the TTL to the current
        $PingOptions.Ttl = $Ttl;

        # Ping the target host using this Send() override: http://msdn.microsoft.com/en-us/library/ms144956.aspx
        $PingReply = $Ping.Send($TargetHost, $Timeout, $DataBuffer, $PingOptions);

        # Get results of trace
        $TraceHop = New-Object -TypeName PSObject -Property @{
                TTL           = $PingOptions.Ttl;
                Status        = $PingReply.Status;
                Address       = $PingReply.Address;
                RoundTripTime = $PingReply.RoundtripTime;
                HostName      = '';
            };

        # If DNS resolution is enabled, and $TraceHop.Address is not null, then resolve DNS
        # TraceHop.Address can be $null if 
        if ($ResolveDns -and $TraceHop.Address) {
            #$DiagTraceroute.DiagTraceOutput.AppendText('Resolving host entry for address: {0}' -f $TraceHop.Address); 
            try {
                # Resolve DNS and assign value to HostName property of $TraceHop instance
                $TraceHop.HostName = [System.Net.Dns]::GetHostEntry($TraceHop.Address).HostName;
            }
            catch {
                #$DiagTraceroute.DiagTraceOutput.AppendText('Failed to resolve host entry for address {0}' -f $TraceHop.Address);
                #$DiagTraceroute.DiagTraceOutput.AppendText('Exception: {0}' -f $_.Exception.InnerException.Message);
            }
        }
        # Once we get our first, succesful reply, we have hit the target host and 
        # can break out of the while loop.
        if ($PingReply.Status -eq [System.Net.NetworkInformation.IPStatus]::Success) {
            #$DiagTraceroute.DiagTraceOutput.AppendText('Successfully pinged target host: {0}' -f $TargetHost);
            $DiagTraceroute.DiagTraceOutput.AppendText($TraceHop);
            $DiagTraceroute.DiagTraceOutput.AppendText("`n");
			break;
        }
        # If we get a TtlExpired status, then ping the device directly and get response time
        elseif ($PingReply.Status -eq [System.Net.NetworkInformation.IPStatus]::TtlExpired) {
            $PingReply = $Ping.Send($TraceHop.Address, $Timeout, $DataBuffer, $PingOptions);
            $TraceHop.RoundTripTime = $PingReply.RoundtripTime;
            $DiagTraceroute.DiagTraceOutput.AppendText($TraceHop);
			$DiagTraceroute.DiagTraceOutput.AppendText("`n");
        }
        else {
            # $PingReply | select *;
        }
        # Increment the Time-to-Live (TTL) by one (1) 
        $Ttl++;
        #$DiagTraceroute.DiagTraceOutput.AppendText('Incremented TTL to {0}' -f $Ttl);
    }
}
#### END OF TREVOR SULLIVAN SCRIPT ####

Function CheckingIPStatus {
	$DiagTraceroute.DiagTraceOutput.Clear()
	$IPaddressStatus = $DiagTraceInput.Text
	$TestPingRequestRemoteIP = Test-Connection -BufferSize 32 -Count 1 -ComputerName $IPaddressStatus -Quiet
	if([string]::IsNullOrEmpty($IPaddressStatus)){
		$DiagTraceroute.DiagTraceOutput.AppendText("Input field must not be empty.")
	}
	elseif($TestPingRequestRemoteIP -eq $true){
		Trace-Route -TargetHost $IPaddressStatus -Timeout 500 -ResolveDns;
	}else{
		$DiagTraceroute.DiagTraceOutput.AppendText("Error: No Connection was Established to the Remote IP. Check if the input is valid.")
	}
}

Function BackConnectionStatusForm {
	$DiagTraceroute.DiagTraceInput.Clear()
	$DiagTraceroute.DiagTraceOutput.Clear()
	$DiagTraceroute.Hide()
	$DiagTracerouteXYLoc = $DiagTraceroute.Location
	$DiagnosticsMenu.Location = $DiagTracerouteXYLoc
	$DiagnosticsMenu.Show()
}


# JOIN PATH FOR ALL DESIGNERS
## MAINMENU
. (Join-Path $PSScriptRoot 'MainMenu.designer.ps1')
. (Join-Path $PSScriptRoot 'ActiveDirectoryMenu.designer.ps1')
. (Join-Path $PSScriptRoot 'ManagementMenu.designer.ps1')
. (Join-Path $PSScriptRoot 'DiagnosticsMenu.designer.ps1')
. (Join-Path $PSScriptRoot 'CreditsForm.designer.ps1')
## JOIN PATH AD MENU DESIGNERS
. (Join-Path $PSScriptRoot 'ADUserCreationForm.designer.ps1')
. (Join-Path $PSScriptRoot 'ADOUM.designer.ps1')
. (Join-Path $PSScriptRoot 'ADUserDeletion.designer.ps1')
. (Join-Path $PSScriptRoot 'ADBulkUserCreation.designer.ps1')
. (Join-Path $PSScriptRoot 'ADPasswordReset.designer.ps1')
. (Join-Path $PSScriptRoot 'ADGroupMgmt.designer.ps1')
## JOIN PATH MANAGEMENT DESIGNERS
. (Join-Path $PSScriptRoot 'MgmtChangeIPForm.designer.ps1')
. (Join-Path $PSScriptRoot 'MgmtChangePCForm.designer.ps1')
. (Join-Path $PSScriptRoot 'MgmtDiskMgmtForm.designer.ps1')
. (Join-Path $PSScriptRoot 'MgmtFilePermissionForm.designer.ps1')
. (Join-Path $PSScriptRoot 'MgmtFileShareForm.designer.ps1')
. (Join-Path $PSScriptRoot 'MgmtMACAddressForm.designer.ps1')
## JOIN PATH DIAGNOSTICS DESIGNERS
. (Join-Path $PSScriptRoot 'DiagADDetails.designer.ps1')
. (Join-Path $PSScriptRoot 'DiagCheckOS.designer.ps1')
. (Join-Path $PSScriptRoot 'DiagListADPCs.designer.ps1')
. (Join-Path $PSScriptRoot 'DiagListADUsers.designer.ps1')
. (Join-Path $PSScriptRoot 'DiagPortStatus.designer.ps1')
. (Join-Path $PSScriptRoot 'DiagTraceroute.designer.ps1')


# JOIN PATH FOR BASE POWERSHELL
## MAINMENU
. (Join-Path $PSScriptRoot 'MainMenu.ps1')
. (Join-Path $PSScriptRoot 'ActiveDirectoryMenu.ps1')
. (Join-Path $PSScriptRoot 'ManagementMenu.ps1')
. (Join-Path $PSScriptRoot 'DiagnosticsMenu.ps1')
. (Join-Path $PSScriptRoot 'CreditsForm.ps1')
## JOIN PATH AD MENU
. (Join-Path $PSScriptRoot 'ADUserCreationForm.ps1')
. (Join-Path $PSScriptRoot 'ADOUM.ps1')
. (Join-Path $PSScriptRoot 'ADUserDeletion.ps1')
. (Join-Path $PSScriptRoot 'ADBulkUserCreation.ps1')
. (Join-Path $PSScriptRoot 'ADPasswordReset.ps1')
. (Join-Path $PSScriptRoot 'ADGroupMgmt.ps1')
## JOIN PATH MANAGEMENT MENU
. (Join-Path $PSScriptRoot 'MgmtChangeIPForm.ps1')
. (Join-Path $PSScriptRoot 'MgmtChangePCForm.ps1')
. (Join-Path $PSScriptRoot 'MgmtDiskMgmtForm.ps1')
. (Join-Path $PSScriptRoot 'MgmtFilePermissionForm.ps1')
. (Join-Path $PSScriptRoot 'MgmtFileShareForm.ps1')
. (Join-Path $PSScriptRoot 'MgmtMACAddressForm.ps1')
## JOIN PATH DIAGNOSTICS MENU
. (Join-Path $PSScriptRoot 'DiagADDetails.ps1')
. (Join-Path $PSScriptRoot 'DiagCheckOS.ps1')
. (Join-Path $PSScriptRoot 'DiagListADPCs.ps1')
. (Join-Path $PSScriptRoot 'DiagListADUsers.ps1')
. (Join-Path $PSScriptRoot 'DiagPortStatus.ps1')
. (Join-Path $PSScriptRoot 'DiagTraceroute.ps1')
