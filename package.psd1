@{
        Root = 'c:\Users\Mike.Micheal\source\repos\AuroraAutomationsV1\AuroraAutomationsV1\AuroraAutomationsV1.ps1'
        OutputPath = 'C:\Users\Mike.Micheal\source\repos\AuroraAutomationsV1\AuroraAutomationsV1\bin\out'
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
            RequireElevation = $true
            ApplicationIconPath = ''
            PackageType = 'Console'
        }
        Bundle = @{
            Enabled = $true
            Modules = $true
            # IgnoredModules = @()
        }
    }