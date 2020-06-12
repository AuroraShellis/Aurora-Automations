Add-Type -AssemblyName PresentationFramework, System.Windows.Forms, System.Drawing
. (Join-Path $PSScriptRoot 'AuroraAutomationsV1.designer.ps1')
. (Join-Path $PSScriptRoot 'ActiveDirectoryMenu.designer.ps1')
. (Join-Path $PSScriptRoot 'ActiveDirectoryMenu.ps1')

$AuroraAutomationsV1.ShowDialog()


$OpenAD_Click = {
	$AuroraAutomationsV1.Hide()
	$ActiveDirectoryMenu.ShowDialog()
}
