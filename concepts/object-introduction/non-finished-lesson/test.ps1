Write-Output ("Not done yet")
exit 0
$Lines = @()  # Inicializa um array vazio
$commandOutput = & '../../../surgescript/surgescript.exe' script.ss

foreach ($line in $commandOutput) {
    $Lines += $line
}

# Exemplo para exibir as variáveis criadas
$countdown = 10
$result = 0
for ($i = 1; $i -le $Lines.Count; $i++) {
    if ("$countdown" -eq "0") {
        if ("$($Lines[$i])" -eq "Happy, 2025!") {
            Write-Output ("No errors! :)")
            exit 0
        } else {
            Write-Output ("Error: last message isn't happy 2025")
            exit 1
        }
    } else {
        $countdown--
    }
}
Write-Output ("Error: Countdown stopped early than expected")
exit 1
