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
Function OUMShowMenu {
$ActiveDirectoryMenu.Hide()
$OUM.ShowDialog()
}
Function Individual.User {
$ActiveDirectoryMenu.Hide()
$UserCreationForm.ShowDialog()
}

Function ADMenuBack {
$ActiveDirectoryMenu.Hide()
$MainMenu.Show()
}

### ACTIVE DIRECTORY MENU BUTTONS - 3RD LAYER
### USER CREATION FORM
Function Indivual.User.Back{
$UserCreationForm.Hide()
$ActiveDirectoryMenu.Show()
}

Function UserCreation {
try {
	New-ADUser -Name $FullName -GivenName $FirstName -Surname $LastName -SamAccountName $SamAccountChecker -UserPrincipalName $UserPrincipal -Path $UserContainer -AccountPassword (ConvertTo-SecureString -AsPlainText $DefaultPassword -Force) -Enabled $true -ChangePasswordAtLogon $true
	$UserCreationForm.OutputTxtBox.AppendText("Your account has been created: `n")
	$UserCreationForm.OutputTxtBox.AppendText("User Principal Name: " + (Get-ADUser $SamAccountChecker).UserPrincipalName)
	$UserCreationForm.OutputTxtBox.AppendText("`nSam Account Name: " + (Get-ADUser $SamAccountChecker).SamAccountName)
	$UserCreationForm.OutputTxtBox.AppendText("`nPassword is = " + $DefaultPassword)
	$UserCreationForm.OutputTxtBox.AppendText("`nPassword will be reset on next login.")
}

catch {
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
	$SamAccountChecker = $SamAccountName.substring(0,20)
	UserCreation
}

### ACTIVE DIRECTORY OU MANAGEMENT FORM
Function OUMCreation{
	$OUNameCreation = $OUCreateBox.Text
	try {
		New-ADOrganizationalUnit $OUNameCreation -ErrorAction Stop
		Get-ADObject -Filter  {$OUNameCreation -eq 'organizationalunit' }
		$OUM.OUOutput.AppendText("Creation of OU: $OUNameCreation Sucessful")
	}
	catch {
		$OUM.OUOutput.AppendText("Error: The " + $OUNameCreation + "OU Exists in Active Directory")
	}
}

Function OUMDeletion{
	$OUnaming = "OU=" + $DeleteOUBox.Text + "," + (Get-ADDomain).DistinguishedName
	Remove-ADOrganizationalUnit -Identity $naming

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
. (Join-Path $PSScriptRoot 'MainMenu.designer.ps1')
. (Join-Path $PSScriptRoot 'ActiveDirectoryMenu.designer.ps1')
. (Join-Path $PSScriptRoot 'UserCreationForm.designer.ps1')
. (Join-Path $PSScriptRoot 'ManagementMenu.designer.ps1')
. (Join-Path $PSScriptRoot 'DiagnosticsMenu.designer.ps1')
. (Join-Path $PSScriptRoot 'OUM.designer.ps1')
# JOIN PATH FOR BASE POWERSHELL
. (Join-Path $PSScriptRoot 'MainMenu.ps1')
. (Join-Path $PSScriptRoot 'ActiveDirectoryMenu.ps1')
. (Join-Path $PSScriptRoot 'UserCreationForm.ps1')
. (Join-Path $PSScriptRoot 'ManagementMenu.ps1')
. (Join-Path $PSScriptRoot 'DiagnosticsMenu.ps1')
. (Join-Path $PSScriptRoot 'OUM.ps1')