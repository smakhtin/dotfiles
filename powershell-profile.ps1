# Dev Shell
Invoke-Expression (&starship init powershell)

Import-Module posh-git
Import-Module posh-docker

# Completion
Set-PSReadLineOption -predictionsource history
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key "Ctrl+f" -Function ForwardWord
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# Important Settings
$PSDefaultParameterValues['Out-File:Encoding'] = 'utf8'

# Aliases
Set-Alias k kubectl

Function su {scoop update * && scoop cleanup * && scoop cache rm *}
Set-Alias -Name s-update -Value su

# fzf
Remove-PSReadlineKeyHandler 'Ctrl+r'
Remove-PSReadlineKeyHandler 'Ctrl+t'

Set-PSReadlineOption -BellStyle None

Import-Module PSFzf

#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
#If (Test-Path "C:\Users\algar\scoop\apps\miniconda3\current\Scripts\conda.exe") {
#    (& "C:\Users\algar\scoop\apps\miniconda3\current\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | ?{$_} | Invoke-Expression
#}
#endregion
