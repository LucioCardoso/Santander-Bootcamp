#Pegar o diretorio atual
$scriptDirectory = Split-Path $MyInvocation.MyCommand.Definition -Parent

#Arquivo de saída com todos os SQLs
$outputFile = Join-Path -Path $scriptDirectory -ChildPath "migration.sql"

#Verificar se o arquivo de saída já existe e deletar se existir
if (Test-Path $outputFile) {
    Remove-Item $outputFile
}

#Obter o conteúdo de todos os arquivos .sql no diretório atual
$sqlFiles = Get-ChildItem -Path $scriptDirectory -Filter *.sql -File | Sort-Object Name

#Concatenar o conteúdo de cada arquivo no arquivo de saída
foreach ($file in $sqlFiles) {
    Get-Content -Path $file.FullName | Out-File -Append -FilePath $outputFile
    "GO" | Out-File -Append -FilePath $outputFile
}

Write-Host "Todos os arquivos foram concatenados no arquivo: $outputFile"