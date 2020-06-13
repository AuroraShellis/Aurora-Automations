Add-Type -AssemblyName PresentationFramework, System.Windows.Forms, System.Drawing

# BUTTONS CONFIGURATION
## MAIN MENU
Function ADMenu {
$MainMenu.Hide()
$ActiveDirectorymenu.ShowDialog()
}
## ACTIVE DIRECTORY MAIN MENU
Function ADMenuBack {
$ActiveDirectoryMenu.Hide()
$MainMenu.Show()
}
Function Individual.User {
$ActiveDirectoryMenu.Hide()
$UserCreationForm.ShowDialog()
}

## USER CREATION FORM
Function Indivual.User.Back {
$UserCreationForm.Hide()
$ActiveDirectoryMenu.Show()
}

Function UserCreation {
	New-ADUser -Name $FullName -GivenName $FirstName -Surname $LastName -SamAccountName $SamAccountName -UserPrincipalName $UserPrincipal -Path $UserContainer -AccountPassword (ConvertTo-SecureString -AsPlainText $DefaultPassword -Force) -Enabled $true -ChangePasswordAtLogon $true
	$UserCreationForm.OutputTxtBox.AppendText("Your account has been created: `n")
	$UserCreationForm.OutputTxtBox.AppendText("Login Name: " + (Get-ADUser $SamAccountName).UserPrincipalName)
	$UserCreationForm.OutputTxtBox.AppendText("`nPassword is = " + $DefaultPassword)
	$UserCreationForm.OutputTxtBox.AppendText("`nPassword will be reset on next login.")
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

	if($SamAccountName -eq $SamAccountChecker){
		$UserCreationForm.OutputTxtBox.AppendText("User Already Exists in the Active Directory")
	}else {
		UserCreation
	}
}

. (Join-Path $PSScriptRoot 'MainMenu.designer.ps1')
. (Join-Path $PSScriptRoot 'ActiveDirectoryMenu.designer.ps1')
. (Join-Path $PSScriptRoot 'UserCreationForm.designer.ps1')
. (Join-Path $PSScriptRoot 'MainMenu.ps1')
. (Join-Path $PSScriptRoot 'ActiveDirectoryMenu.ps1')
. (Join-Path $PSScriptRoot 'UserCreationForm.ps1')
