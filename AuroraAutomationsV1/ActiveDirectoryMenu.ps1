Add-Type -AssemblyName PresentationFramework, System.Windows.Forms, System.Drawing
. (Join-Path $PSScriptRoot 'ActiveDirectoryMenu.designer.ps1')
. (Join-Path $PSScriptRoot 'UserCreationForm.designer.ps1')
. (Join-Path $PSScriptRoot 'UserCreationForm.ps1')
#$ActiveDirectoryMenu.ShowDialog()

$ADUserCreate_Click = {
	$ActiveDirectoryMenu.Hide()
	$UserCreationForm.ShowDialog()
	}

$Back_Click = {
	$ActiveDirectoryMenu.Hide()
	$AuroraAutomationsV1.Show()
}
