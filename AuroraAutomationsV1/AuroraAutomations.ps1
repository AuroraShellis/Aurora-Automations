Add-Type -AssemblyName PresentationFramework, System.Windows.Forms, System.Drawing
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force

# BUTTONS CONFIGURATION
## MAIN MENU
Function ADMenu {
	$MainMenu.Hide()
	$ActiveDirectorymenu.ShowDialog()
}
Function ManagementMenu {
	$MainMenu.Hide()
	$ManagementMenu.ShowDialog()
}
Function DiagnosticsMenu {
	$MainMenu.Hide()
	$DiagnosticsMenu.ShowDialog()
}

## ACTIVE DIRECTORY MAIN MENU
Function ADUserDeleteShowMenu {
	$ADUserDeletion.UserDeleteOutput.AppendText("WARNING: When the Delete button is pressed. There will be NO Confirmation.")
	$ActiveDirectoryMenu.Hide()
	$ADUserDeletion.ShowDialog()
}
Function OUMShowMenu {
	$ActiveDirectoryMenu.Hide()
	$OUM.ShowDialog()
}
Function ManagmentShowMenu {
	$ADGroupMgmt.ADGroupMgmtOutput.AppendText("WARNING: When the Delete or Move button is pressed. There will be NO Confirmation.")
	$ActiveDirectoryMenu.Hide()
	$ADGroupMgmt.ShowDialog()
}
Function Individual.User {
	$ActiveDirectoryMenu.Hide()
	$UserCreationForm.ShowDialog()
}
Function PasswordShowMenu {
	$ActiveDirectoryMenu.Hide()
	$ADPasswordReset.ADPasswordOutput.AppendText("WARNING: Password will be changed without Confirmation.")
	$ADPasswordReset.ShowDialog()
}
Function BulkImportsShowMenu {
	$ActiveDirectoryMenu.Hide()
	$ADBulkUserCreation.ADBulkOutput.AppendText("Browse to a CSV using the Text Box above. The CSV should follow this structure from Left to Right:")
	$ADBulkUserCreation.ADBulkOutput.AppendText("`nFirst Name | Last Name | OU `n")
	$ADBulkUserCreation.ADBulkOutput.AppendText("`nThe SAM Account Name will be generated based on our User Naming Convention.`nThis may shortern long names. Check the Results after running the Command.")
	$ADBulkUserCreation.ADBulkOutput.AppendText("`nAll Users will have our default preassigned password.`nThe user will be prompted to change their password on the first login.")
	$ADBulkUserCreation.ADBulkOutput.AppendText("`nOUs will not be created. Please ensure the OUs are existing before trying to Import users.")
	$ADBulkUserCreation.ShowDialog()
}
Function ADMenuBack {
	$ActiveDirectoryMenu.Hide()
	$MainMenu.Show()
}

## MANAGEMENT MAIN MENU BUTTONS
Function CreationFileShare {
	$ManagementMenu.Hide()
	$MgmtFileShareForm.ShowDialog()
}
Function FileSharePermission {
	$ManagementMenu.Hide()
	$MgmtFilePermissionForm.ShowDialog()
}
Function ChangingLocalIP {
	$ManagementMenu.Hide()
	$MgmtChangeIPForm.ShowDialog()
}
Function LocalComputerDomain {
	$ManagementMenu.Hide()
	$MgmtChangePCForm.ShowDialog()
}
Function MACAddressGenerator {
	$ManagementMenu.Hide()
	$MgmtMACAddressForm.ShowDialog()
}
Function RemoteDisk {
	$ManagementMenu.Hide()
	$MgmtDiskMgmtForm.ShowDialog()
}
Function ManagementBack {
	$ManagementMenu.Hide()
	$MainMenu.ShowDialog()
}

## DIAGNOSTICS MAIN MENU BUTTONS
Function DiagnosticsADDetails {
	$DiagnosticsDetailsLoadingOutput = Get-ADDomain | Format-List | Out-String
	$DiagADDetails.DiagADDetailsOutput.AppendText($DiagnosticsDetailsLoadingOutput)
	$DiagnosticsMenu.Hide()
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
	$DiagListADPCs.ShowDialog()

}
Function DiagnosticsListUsers {
	$DiagListADUsers.DiagListUsersOutput.Clear()
	$DiagListADUsersOutputEnter = Get-ADUser -Filter * | Select-Object SamAccountName, Name, Enabled, ObjectClass | Format-List SamAccountName, Name, Enabled, ObjectClass | Out-String
	$DiagListADUsers.DiagListUsersOutput.AppendText("Users Are:")
	$DiagListADUsers.DiagListUsersOutput.AppendText($DiagListADUsersOutputEnter)
	$DiagnosticsMenu.Hide()
	$DiagListADUsers.ShowDialog()
}
Function DiagnosticsOSCheck {
	$DiagCheckOS.DiagRemoteOSOutput.AppendText("These are the list of computers connected to your " + (Get-ADDomain).DNSRoot )
	$OutputCheckRemoteOUT = Get-ADComputer -Filter * -Properties operatingSystem | Select-Object Name, OperatingSystem | Format-List Name, OperatingSystem | Out-String
	$DiagCheckOS.DiagRemoteOSOutput.AppendText($OutputCheckRemoteOUT)
	$DiagnosticsMenu.Hide()
	$DiagCheckOS.ShowDialog()
}
Function DiagnosticsPortStatus {
	$DiagPortStatus.DiagPortStatusOutput.Clear()
	$PortStatusOutputOut = Get-NetTCPConnection | Sort-Object LocalPort | Select-Object LocalPort, State | Out-String
	$DiagPortStatus.DiagPortStatusOutput.AppendText($PortStatusOutputOut)
	$DiagnosticsMenu.Hide()
	$DiagPortStatus.ShowDialog()
}
Function DiagnosticsConnectionTest {
	$DiagnosticsMenu.Hide()
	$DiagTraceroute.ShowDialog()
}
Function DiagnosticsBack{
	$DiagnosticsMenu.Hide()
	$MainMenu.Show()
}
### ACTIVE DIRECTORY BUTTONS - 3RD LAYER
### USER CREATION FORM
Function Individual.User.Submit {
	$UserCreationForm.OutputTxtBox.Clear()
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
	$UserContainer = (Get-ADDomain).UsersContainer
	$DefaultPassword = "P@ssword01"
	UserCreation
}

Function UserCreation {
	try {
		New-ADUser -Name $FullName -GivenName $FirstName -Surname $LastName -SamAccountName $SamAccountName -UserPrincipalName $UserPrincipal -Path $UserContainer -AccountPassword (ConvertTo-SecureString -AsPlainText $DefaultPassword -Force) -Enabled $true -ChangePasswordAtLogon $true
		$UserCreationForm.OutputTxtBox.AppendText("Your account has been created: `n")
		$UserCreationForm.OutputTxtBox.AppendText("Account Full Name: " + (Get-ADUser $SamAccountName).Name)
		$UserCreationForm.OutputTxtBox.AppendText("`nUser Principal Name: " + (Get-ADUser $SamAccountName).UserPrincipalName)
		$UserCreationForm.OutputTxtBox.AppendText("`nSAM Account Name: " + (Get-ADDomain).NetBIOSName + "\" + (Get-ADUser $SamAccountName).SamAccountName)
		$UserCreationForm.OutputTxtBox.AppendText("`nPassword is = " + $DefaultPassword)
		$UserCreationForm.OutputTxtBox.AppendText("`nPassword will be reset on next login.")
	}catch [Microsoft.ActiveDirectory.Management.ADIdentityAlreadyExistsException] {
		$UserCreationForm.OutputTxtBox.AppendText("NOTE: Account Name Already Exists in the Active Directory Domain. `nTherefore you will get a different Account Name.`n")
		$UserRandomVar = Get-Random -Minimum 1 -Maximum 999
		$NewSamAccountName = $FirstNameSub + "." + $LastNameSub + "." + $UserRandomVar
		$NewLastName = $LastName + "." + $UserRandomVar
		$NewFullName = $FirstName + " " + $NewLastName
		$NewUserPrincipal = $NewSamAccountName + "@" + $Domain
		try{
			New-ADUser -Name $NewFullName -GivenName $FirstName -Surname $NewLastName -SamAccountName $NewSamAccountName -UserPrincipalName $NewUserPrincipal -Path $UserContainer -AccountPassword (ConvertTo-SecureString -AsPlainText $DefaultPassword -Force) -Enabled $true -ChangePasswordAtLogon $true
			$UserCreationForm.OutputTxtBox.AppendText("Your account has been created: `n")
			$UserCreationForm.OutputTxtBox.AppendText("Account Full Name: " + (Get-ADUser $NewSamAccountName).Name)
			$UserCreationForm.OutputTxtBox.AppendText("`nUser Principal Name: " + (Get-ADUser $NewSamAccountName).UserPrincipalName)
			$UserCreationForm.OutputTxtBox.AppendText("`nSAM Account Name: " + (Get-ADDomain).NetBIOSName + "\" + (Get-ADUser $NewSamAccountName).SamAccountName)
			$UserCreationForm.OutputTxtBox.AppendText("`nPassword is = " + $DefaultPassword)
			$UserCreationForm.OutputTxtBox.AppendText("`nPassword will be reset on next login.")
		}catch{
			$UserCreationForm.OutputTxtBox.AppendText("Unexpected Error, Something went wrong. Please try again.")
		}
	}catch {
		$UserCreationForm.OutputTxtBox.AppendText("Something went wrong. Please try again.")
	}	
}

Function Individual.User.Back{
	$UserCreationForm.OutputTxtBox.Clear()
	$UserCreationForm.Hide()
	$ActiveDirectoryMenu.Show()
}

### ACTIVE DIRECTORY OUM FORM
Function OUMCreation{
	$OUM.OUOutput.Clear()
	$OUNameCreation = $OUCreateBox.Text
	try {
		New-ADOrganizationalUnit $OUNameCreation -ErrorAction Stop
		Get-ADObject -Filter  {$OUNameCreation -eq 'organizationalunit' }
		$OUM.OUOutput.AppendText("Creation of $OUNameCreation OU Sucessful.")
	}
	catch {
		$OUM.OUOutput.AppendText("Error: The " + $OUNameCreation + " OU Already Exists in Active Directory Domain. Try Another Name.")
	}
}

Function OUMDeletion{
	$OUM.OUOutput.Clear()
	$OUnaming = "OU=" + $DeleteOUBox.Text + "," + (Get-ADDomain).DistinguishedName
	try{
		Get-ADOrganizationalUnit -Identity $OUnaming | Set-ADObject -ProtectedFromAccidentalDeletion:$false -PassThru | Remove-ADOrganizationalUnit -Confirm:$false -Recursive
		$OUM.OUOutput.AppendText("The " + $DeleteOUBox.Text + " OU has been removed from the Domain Successfully.")
	}catch{
		$OUM.OUOutput.AppendText("The " + $DeleteOUBox.Text + " OU does not exist in the Domain anymore or never existed in the first place.")
	}
}

Function OUMoveUser{
	$OUM.OUOutput.Clear()
	$MoveUserInput = $MoveOUUserTextBox.Text
	$MoveOUInput = $MoveOUOUTextBox.Text
	$UserDN  = (Get-ADUser $MoveUserInput).distinguishedName
	$TargetOU = "OU=" + $MoveOUInput + "," + (Get-ADDomain).DistinguishedName
	
	try{
		Move-ADObject -Identity $UserDN -TargetPath $TargetOU
		$OUM.OUOutput.AppendText("The " + $MoveUserInput + " user was succesfully moved to the " + $MoveOUInput + " OU.")
	}catch{
		$OUM.OUOutput.AppendText("The " + $MoveUserInput + " user could not be moved to the " + $MoveOUInput + " OU. Check if the User or OU Exists.")
	}
}

Function OUUserQuery{
	$OUM.OUOutput.Clear()
	$QueryOUInput = $QueryOUTextBox.Text
	$TargetOUQuery = "OU=" + $QueryOUInput + "," + (Get-ADDomain).DistinguishedName

	try{
    $OUSearchList =	Get-ADUser -Filter * -SearchBase $TargetOUQuery | Select-Object SamAccountName, Name, Enabled, ObjectClass | Format-List SamAccountName, Name, Enabled, ObjectClass | Out-String
    $OUM.OUOutput.AppendText($OUSearchList)
	}
	catch{
    $OUM.OUOutput.AppendText("Could not find any Users in the " + $QueryOUInput + " OU. Check if the OU exists beforehand.")
	}
}

Function OUGetList{
	$OUM.OUOutput.Clear()
	$OUObjectList = Get-ADObject -Filter { ObjectClass -eq 'organizationalunit' }
	$OUM.OUOutput.AppendText($OUObjectList)
}

Function OUM.Back{
	$OUM.Hide()
	$ActiveDirectoryMenu.Show()
}

### ACTIVE DIRECTORY DELETION FORM
Function ADDeleteFormOUQuery{
	$ADUserDeletion.UserDeleteOutput.Clear()
	$UserDeleteQueryOUInput = $UserDeleteQueryTextBox.Text
	$TargetUserDeleteOUQuery = "OU=" + $UserDeleteQueryOUInput + "," + (Get-ADDomain).DistinguishedName

	try{
		$UserDeleteOUSearchList = Get-ADUser -Filter * -SearchBase $TargetUserDeleteOUQuery | Select-Object SamAccountName, Name, Enabled, ObjectClass | Format-List SamAccountName, Name, Enabled, ObjectClass | Out-String
		$ADUserDeletion.UserDeleteOutput.AppendText($UserDeleteOUSearchList)
	}
	catch{
	 $ADUserDeletion.UserDeleteOutput.AppendText("Could not find any Users in the " + $UserDeleteQueryOUInput + " OU. Check if the OU exists beforehand.")
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

	try{
		Remove-ADUser -Identity $UserDeleteSamNameInput -Confirm:$False
		$ADUserDeletion.UserDeleteOutput.AppendText("The " + $UserDeleteSamNameInput + " User has been removed from the Domain Successfully.")
	}catch{
		$ADUserDeletion.UserDeleteOutput.AppendText("The " + $UserDeleteSamNameInput + " User does not exist in the Domain anymore or never existed in the first place. Check your spelling.")
	}
}

Function UDGetList{
	$ADUserDeletion.UserDeleteOutput.Clear()
	$UDOUObjectList = Get-ADObject -Filter { ObjectClass -eq 'organizationalunit' }
	$ADUserDeletion.UserDeleteOutput.AppendText($UDOUObjectList)
}

Function ADUD.Back{
	$ADUserDeletion.Hide()
	$ActiveDirectoryMenu.Show()
}
### GROUP MANAGEMENT FORM 
Function GroupQuery {
	$ADGroupMgmt.ADGroupMgmtOutput.Clear()
	$QueryGMInput = $ADGroupQueryTextBox.Text
	$TargetGMQuery = "OU=" + $QueryGMInput + "," + (Get-ADDomain).DistinguishedName

	try{
    $GroupSearchList =	Get-ADGroup -Filter * -SearchBase $TargetGMQuery | Select-Object Name , GroupCategory, GroupScope | Format-List  Name , GroupCategory, GroupScope | Out-string
    $ADGroupMgmt.ADGroupMgmtOutput.AppendText($GroupSearchList)
	}
	catch{
    $ADGroupMgmt.ADGroupMgmtOutput.AppendText("Could not find any Users in the " + $QueryGMInput + " OU. Check if the OU exists beforehand.")
	}
}

Function GroupCreation {
	$ADGroupMgmt.ADGroupMgmtOutput.Clear()
	$GroupNameCreation = $ADGroupNameInput.Text
	$TargetCreationGroup = "OU=" + $ADGroupLocateInput.Text + "," + (Get-ADDomain).DistinguishedName

	try {
		New-ADGroup –name $GroupNameCreation –groupscope Global –path $TargetCreationGroup
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
		Remove-ADGroup –Identity $GroupNameDeletion -Confirm:$False
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
Function ListOUGroupManagement {
	$ADGroupMgmt.ADGroupMgmtOutput.Clear()
	$GroupManagmentListOU = Get-ADObject -Filter { ObjectClass -eq 'organizationalunit' }
	$ADGroupMgmt.ADGroupMgmtOutput.AppendText($GroupManagmentListOU)
}

Function GroupBack {
	$ADGroupMgmt.ADGroupMgmtOutput.Clear()
	$ADGroupMgmt.Hide()
	$ActiveDirectoryMenu.Show()
}

### PASSWORD RESET FORM 
Function PasswordOUQuery{
	$ADPasswordReset.ADPasswordOutput.Clear()
	$QueryPWInput = $PassResetQueryTextBox.Text
	$TargetPWQuery = "OU=" + $QueryPWInput + "," + (Get-ADDomain).DistinguishedName
	try{
		$PasswordSearchList = Get-ADUser -Filter * -SearchBase $TargetPWQuery | Select-Object SamAccountName, Name, Enabled, ObjectClass | Format-List SamAccountName, Name, Enabled, ObjectClass | Out-String
		$ADPasswordReset.ADPasswordOutput.AppendText($PasswordSearchList)
	}
	catch{
		$ADPasswordReset.ADPasswordOutput.AppendText("Could not find any Users in the " + $QueryPWInput + " OU. Check if the OU exists beforehand.")
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
	$PWOLObjectList = Get-ADObject -Filter { ObjectClass -eq 'organizationalunit' }
	$ADPasswordReset.ADPasswordOutput.AppendText($PWOLObjectList)
}
Function PasswordResetBack{
	$ADPasswordReset.ADPasswordOutput.Clear()
	$ADPasswordReset.Hide()
	$ActiveDirectoryMenu.Show()
}
### CSV USER CREATION FORM 
Function ADBulkCSVBrowse{
	$ADBulkUserCreation.ADBulkCSVInput.Clear()
	$BulkBrowsePopup = $ADBulkUserCreation.ADOpenFileBrowse.ShowDialog()
	if($BulkBrowsePopup -eq "OK"){    
		$FilePathCSVPopup = $ADOpenFileBrowse.filename
	}else{
		$FilePathCSVPopup = $ADOpenFileBrowse.AppendText("Invalid File (?)")
	}
	$ADBulkUserCreation.ADBulkCSVInput.AppendText($FilePathCSVPopup)
}

Function ADBulkCSVAddUsers{
	$ADBulkUserCreation.ADBulkOutput.Clear()
	#$ADBulkUserCreation.ADBulkOutput.AppendText($FilePathCSVPopup)
	$ADFilePathName = $ADBulkCSVInput.Text

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
			$ADBulkUserCreation.ADBulkOutput.AppendText("`nYour account has been created: `n")
			$ADBulkUserCreation.ADBulkOutput.AppendText("Account Full Name: " + (Get-ADUser $BulkSamAccountName).Name)
			$ADBulkUserCreation.ADBulkOutput.AppendText("`nUser Principal Name: " + (Get-ADUser $BulkSamAccountName).UserPrincipalName)
			$ADBulkUserCreation.ADBulkOutput.AppendText("`nSAM Account Name: " + (Get-ADDomain).NetBIOSName + "\" + (Get-ADUser $BulkSamAccountName).SamAccountName)
			$ADBulkUserCreation.ADBulkOutput.AppendText("`nCreated in: " + $BulkUserOUPath)
			$ADBulkUserCreation.ADBulkOutput.AppendText("`nPassword is = " + $DefaultPassword)
			$ADBulkUserCreation.ADBulkOutput.AppendText("`nPassword will be reset on next login.`n")
		}catch [Microsoft.ActiveDirectory.Management.ADIdentityAlreadyExistsException] {
			$ADBulkUserCreation.ADBulkOutput.AppendText("`nNOTE: Account Name Already Exists in the Active Directory Domain. `nTherefore you will get a different Account Name.`n")
			$UserRandomVar = Get-Random -Minimum 1 -Maximum 999
			$NewBulkSamAccountName = $BulkFirstNameSub + "." + $BulkUserLastName + "." + $UserRandomVar
			$NewBulkLastName = $BulkUserLastName + "." + $UserRandomVar
			$NewBulkFullName = $BulkUserFirstName + " " + $NewBulkLastName
			$NewBulkUserPrincipal = $NewBulkSamAccountName + "@" + $BulkDomain
			try{
				New-ADUser -Name $NewBulkFullName -GivenName $BulkUserFirstName -Surname $NewBulkLastName -SamAccountName $NewBulkSamAccountName -UserPrincipalName $NewBulkUserPrincipal -Path $BulkUserOUPath -AccountPassword (ConvertTo-SecureString -AsPlainText $DefaultPassword -Force) -Enabled $true -ChangePasswordAtLogon $true
				$ADBulkUserCreation.ADBulkOutput.AppendText("`nYour account has been created: `n")
				$ADBulkUserCreation.ADBulkOutput.AppendText("Account Full Name: " + (Get-ADUser $NewBulkSamAccountName).Name)
				$ADBulkUserCreation.ADBulkOutput.AppendText("`nUser Principal Name: " + (Get-ADUser $NewBulkSamAccountName).UserPrincipalName)
				$ADBulkUserCreation.ADBulkOutput.AppendText("`nSAM Account Name: " + (Get-ADDomain).NetBIOSName + "\" + (Get-ADUser $NewBulkSamAccountName).SamAccountName)
				$ADBulkUserCreation.ADBulkOutput.AppendText("`nCreated in: " + $BulkUserOUPath)
				$ADBulkUserCreation.ADBulkOutput.AppendText("`nPassword is = " + $DefaultPassword)
				$ADBulkUserCreation.ADBulkOutput.AppendText("`nPassword will be reset on next login.`n")
			}catch{
				$ADBulkUserCreation.ADBulkOutput.AppendText("`nUnexpected Error, Something went wrong. Please try again.`n")
			}
		}catch {
			$ADBulkUserCreation.ADBulkOutput.AppendText("`nSomething went wrong. Please try again. Check if OU Exists?`n")
		}	
	}
}
Function CSVBulkBack{
	$ADBulkUserCreation.Hide()
	$ActiveDirectoryMenu.Show()
}

## MANAGEMENT SCRIPTS MAIN MENU
Function ManagementBack{
	$ManagementMenu.Hide()
	$MainMenu.Show()
}

## DIAGNOSTIC MENU BUTTONS - 3RD LAYER
### CHECK ACTIVE DIRECTORY INFORMATION
Function RefreshActiveDirectoryDetails{
	$DiagADDetails.DiagADDetailsOutput.Clear()
	$DetailsRefreshActiveDirectory = Get-ADDomain | Format-List | Out-String
	$DiagADDetails.DiagADDetailsOutput.AppendText($DetailsRefreshActiveDirectory)
}
Function ActiveDirectortDetailsBack {
	$DiagADDetails.DiagADDetailsOutputt.Clear()
	$DiagADDetailss.Hide()
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
	$DiagnosticsMenu.Show()
}
### CHECK ALL USERS IN ACTIVE DIRECTORY
Function RefreshUserListAD {
	$DiagListADUsers.DiagListUsersOutput.Clear()
	$DiagListADUsersOutput = Get-ADUser -Filter * | Select-Object SamAccountName, Name, Enabled, ObjectClass | Format-List SamAccountName, Name, Enabled, ObjectClass | Out-String
	$DiagListADUsers.DiagListUsersOutput.AppendText("Users Are:")
	$DiagListADUsers.DiagListUsersOutput.AppendText($DiagListADUsersOutput)
}
 Function BackCheckALLUsersAD {
	$DiagListADUsers.DiagListUsersOutput.Clear()
	$DiagListADUsers.Hide()
	$DiagnosticsMenu.Show()
}
### CHECK OS ARCHITECTURE FORM
Function RemoteQueryOSArchitecture {
	$DiagCheckOS.DiagRemoteOSOutput.Clear()
	$DiagRemoteComputer = $DiagRemoteOSInput.Text
	$DiagRemoteInfo1 = (Get-WmiObject -ComputerName $DiagRemoteComputer win32_operatingsystem).name
	$DiagRemoteInfo2 = (Get-WmiObject -ComputerName $DiagRemoteComputer Win32_OperatingSystem).OSArchitecture
	$DiagRemoteJoin = $DiagRemoteInfo1.Split("|")[0]
	$DiagCheckOS.DiagRemoteOSOutput.AppendText("This remote computer is running: " + $DiagRemoteJoin)
	$DiagCheckOS.DiagRemoteOSOutput.AppendText("`nThis remote computer's architecture is " + $DiagRemoteInfo2)
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
	$DiagnosticsMenu.Show()
}
### PORT STATUS FORM
Function RefreshPortStatus {
	$DiagPortStatus.DiagPortStatusOutput.Clear()
	$PortStatusOutputIn = Get-NetTCPConnection | Sort-Object LocalPort | Select-Object LocalPort, State | Out-String
	$DiagPortStatus.DiagPortStatusOutput.AppendText($PortStatusOutputIn)

}
Funtion BackPortStatus{
	$DiagPortStatus.DiagPortStatusOutput.Clear()
	$DiagPortStatus.Hide()
	$DiagnosticsMenu.Show()
}

### CONNECTION STATUS FORM
Function CheckingIPStatus {
	$DiagTraceroute.DiagTraceInput.Clear()
	$IPaddressStatus = $DiagTraceInput.Text
	$IPAddressStatusResult = Test-NetConnection $IPaddressStatus | Out-String
	$DiagTraceroute.DiagTraceInput.AppendText($IPAddressStatusResult)
}
Function BackConnectionStatusForm {
	$DiagTraceroute.DiagTraceInput.Clear()
	$DiagTraceroute.Hide()
	$DiagnosticsMenu.Show()
}
# JOIN PATH FOR ALL DESIGNERS
## MAINMENU
. (Join-Path $PSScriptRoot 'MainMenu.designer.ps1')
. (Join-Path $PSScriptRoot 'ActiveDirectoryMenu.designer.ps1')
. (Join-Path $PSScriptRoot 'ManagementMenu.designer.ps1')
. (Join-Path $PSScriptRoot 'DiagnosticsMenu.designer.ps1')
## JOIN PATH AD MENU DESIGNERS
. (Join-Path $PSScriptRoot 'UserCreationForm.designer.ps1')
. (Join-Path $PSScriptRoot 'OUM.designer.ps1')
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
## JOIN PATH AD MENU
. (Join-Path $PSScriptRoot 'UserCreationForm.ps1')
. (Join-Path $PSScriptRoot 'OUM.ps1')
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
