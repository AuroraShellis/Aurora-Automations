@{
        Root = 'c:\Users\Mike.Micheal\source\repos\AuroraAutomationsV1\AuroraAutomationsV1\AuroraAutomationsV1.ps1'
        OutputPath = 'C:\Users\Mike.Micheal\source\repos\AuroraAutomationsV1\AuroraAutomationsV1\bin\out'
        Package = @{
            Enabled = $true
            Obfuscate = $false
            HideConsoleWindow = $false
            DotNetVersion = 'v4.6.2'
            FileVersion = '1.1.0'
            FileDescription = 'Aurora Automations'
            ProductName = 'Aurora Automations'
            ProductVersion = '1.1.0'
            Copyright = 'Team Aurora Shellis'
            RequireElevation = $true
            ApplicationIconPath = 'E:\Dropbox\Assets\LogoV3.ico'
            PackageType = 'Console'
        }
        Bundle = @{
            Enabled = $true
            Modules = $true
            # IgnoredModules = @()
        }
    }