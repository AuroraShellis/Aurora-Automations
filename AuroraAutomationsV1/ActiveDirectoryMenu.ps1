$ADUserCreate_Click = {
	$ActiveDirectoryMenu.Hide()
	$UserCreationForm.ShowDialog()
	}

$Back_Click = {
	$ActiveDirectoryMenu.Hide()
	$MainMenu.Show()
}
. (Join-Path $PSScriptRoot 'ActiveDirectoryMenu.designer.ps1')