Add-Type -AssemblyName PresentationFramework, System.Windows.Forms, System.Drawing
#$UserCreationForm.ShowDialog()
. (Join-Path $PSScriptRoot 'UserCreationForm.designer.ps1')

function UserCreation {
	New-ADUser -Name $FullName -GivenName $FirstName -Surname $LastName -SamAccountName $SamAccountName -UserPrincipalName $UserPrincipal -Path $UserContainer -AccountPassword (ConvertTo-SecureString -AsPlainText $DefaultPassword -Force) -Enabled $true -ChangePasswordAtLogon $true
	$UserCreationForm.OutputTxtBox.AppendText("Your account has been created: `n")
	$UserCreationForm.OutputTxtBox.AppendText("Login Name: " + (Get-ADUser $SamAccountName).UserPrincipalName)
	$UserCreationForm.OutputTxtBox.AppendText("`nPassword is = " + $DefaultPassword)
	$UserCreationForm.OutputTxtBox.AppendText("`nPassword will be reset on next login.")
}

$SubmitButton_Click = {
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

$BackButton_Click = { 
	$UserCreationForm.Hide()
	$ActiveDirectoryMenu.Show()
}