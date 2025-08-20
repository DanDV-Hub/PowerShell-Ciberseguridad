@{
    # Información básica del módulo
    RootModule        = 'AuditoriaBasica.psm1'
    ModuleVersion     = '1.0.0'
    Author            = 'Equipo de Ciberseguridad'
    Description       = 'Módulo para auditoría básica de usuarios y servicios'
    PowerShellVersion = '5.1'

    # Elementos exportados
    FunctionsToExport = @('Obtener-UsuariosInactivos', 'Obtener-ServiciosExternos')
    CmdletsToExport   = @()
    VariablesToExport = @()
    AliasesToExport   = @()

    # Información adicional opcional
    PrivateData = @{
        PSData = @{
            Tags         = @('auditoría', 'usuarios', 'servicios')
            LicenseUri   = ''
            ProjectUri   = ''
            ReleaseNotes = 'Versión inicial del módulo AuditoriaBasica.'
        }
    }
}
