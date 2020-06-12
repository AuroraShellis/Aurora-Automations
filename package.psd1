@{
        Root = 'c:\Users\Mike.Micheal\source\repos\AuroraAutomationsV1\AuroraAutomationsV1\AuroraAutomationsV1.ps1'
        OutputPath = 'c:\Users\Mike.Micheal\source\repos\AuroraAutomationsV1\out'
        Package = @{
            Enabled = $true
            Obfuscate = $false
            HideConsoleWindow = $false
            DotNetVersion = 'v4.6.2'
            FileVersion = '1.0.0'
            FileDescription = ''
            ProductName = ''
            ProductVersion = ''
            Copyright = ''
            RequireElevation = $false
            ApplicationIconPath = ''
            PackageType = 'Console'
        }
        Bundle = @{
            Enabled = $true
            Modules = $true
            # IgnoredModules = @()
        }
    }
    