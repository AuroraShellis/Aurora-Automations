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
Function AD.Installation {
$ActiveDirectoryMenu.Hide()
$ADPrereqInstall.ShowDialog()
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
	New-ADUser -Name $FullName -GivenName $FirstName -Surname $LastName -SamAccountName $SamAccountName -UserPrincipalName $UserPrincipal -Path $UserContainer -AccountPassword (ConvertTo-SecureString -AsPlainText $DefaultPassword -Force) -Enabled $true -ChangePasswordAtLogon $true
	$UserCreationForm.OutputTxtBox.AppendText("Your account has been created: `n")
	$UserCreationForm.OutputTxtBox.AppendText("Login Name: " + (Get-ADUser $SamAccountName).UserPrincipalName)
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
	$SamAccountChecker = (Get-ADUser $SamAccountName).SamAccountName

	UserCreation
}

### ACTIVE DIRECTORY OU MANAGEMENT FORM
Function OUMCreation{
	$OUNameCreation = $OUCreateBox.Text
try {
	New-ADOrganizationalUnit $OUNameCreation
}
catch {
	$UserCreationForm.OutputTxtBox.AppendText("Error in Creation of OU")
}
}

Function OUM.Back{
$ADPrereqInstall.Hide()
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