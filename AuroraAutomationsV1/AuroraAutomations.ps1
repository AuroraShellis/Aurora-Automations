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
	$UserCreationForm.OutputTxtBox.AppendText("Make Sure that the Last Name Contains Only 20 Characters")
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
	$ADBulkUserCreation.ShowDialog()
}
Function ADMenuBack {
	$ActiveDirectoryMenu.Hide()
	$MainMenu.Show()
}

### ACTIVE DIRECTORY MENU BUTTONS - 3RD LAYER
### USER CREATION FORM
Function Individual.User.Back{
	$UserCreationForm.OutputTxtBox.Clear()
	$UserCreationForm.Hide()
	$ActiveDirectoryMenu.Show()
}

Function UserCreation {
try {
	New-ADUser -Name $FullName -GivenName $FirstName -Surname $LastName -SamAccountName $SamAccountChecker -UserPrincipalName $UserPrincipal -Path $UserContainer -AccountPassword (ConvertTo-SecureString -AsPlainText $DefaultPassword -Force) -Enabled $true -ChangePasswordAtLogon $true
	$UserCreationForm.OutputTxtBox.AppendText("Your account has been created: `n")
	$UserCreationForm.OutputTxtBox.AppendText("User Principal Name: " + (Get-ADUser $SamAccountChecker).UserPrincipalName)
	$UserCreationForm.OutputTxtBox.AppendText("`nSAM Account Name: " + (Get-ADDomain).NetBIOSName + "\" + (Get-ADUser $SamAccountChecker).SamAccountName)
	$UserCreationForm.OutputTxtBox.AppendText("`nPassword is = " + $DefaultPassword)
	$UserCreationForm.OutputTxtBox.AppendText("`nPassword will be reset on next login.")
}catch {
	$UserCreationForm.OutputTxtBox.AppendText("User Already Exists in the Active Directory Domain")
	}	
}

Function Individual.User.Submit {
	$UserCreationForm.OutputTxtBox.Clear()
	$FirstName = $FirstNameTxtBox.Text
	$LastName = $LastNameTxtBox.Text
	$FullName = $FirstName + " " + $LastName
	$SamAccountName = $FirstName + "." + $LastName
	$Domain = (Get-ADDomain).DNSRoot
	$UserPrincipal = $SamAccountName + "@" + $Domain
	$UserContainer = (Get-ADDomain).UsersContainer
	$DefaultPassword = "P@ssword01"
	$SamAccountChecker = $LastName
	UserCreation
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
		$UserDeleteOUSearchList =	Get-ADUser -Filter * -SearchBase $TargetUserDeleteOUQuery | Select-Object SamAccountName, Name, Enabled, ObjectClass | Format-List SamAccountName, Name, Enabled, ObjectClass | Out-String
		$ADUserDeletion.UserDeleteOutput.AppendText($UserDeleteOUSearchList)
	}
	catch{
	 $ADUserDeletion.UserDeleteOutput.AppendText("Could not find any Users in the " + $UserDeleteQueryOUInput + " OU. Check if the OU exists beforehand.")
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
# $ADPasswordReset.ADPasswordOutput.Clear()
# $ADPasswordReset
	# PassResetQueryTextBox
	# ADPasswordOutput
	# -AccountPassword (ConvertTo-SecureString -AsPlainText $DefaultPassword -Force) -Enabled $true -ChangePasswordAtLogon $true

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
Function PasswordResetBack{
	$ADPasswordReset.ADPasswordOutput.Clear()
	$ADPasswordReset.Hide()
	$ActiveDirectoryMenu.Show()
}

Function PasswordListOU{
	$ADPasswordReset.ADPasswordOutput.Clear()
	$PWOLObjectList = Get-ADObject -Filter { ObjectClass -eq 'organizationalunit' }
	$ADPasswordReset.ADPasswordOutput.AppendText($PWOLObjectList)
}

## MANAGEMENT SCRIPTS MAIN MENU
Function ManagementBack{
	$ManagementMenu.Hide()
	$MainMenu.Show()
}

## DIAGNOSTICS SCRIPTS MAIN MENU
Function DiagnosticsBack{
	$DiagnosticsMenu.Hide()
	$MainMenu.Show()
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
