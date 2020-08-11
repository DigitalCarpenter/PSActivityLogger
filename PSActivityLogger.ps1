$path = "C:\"
$date = get-date -format "yyyy-MM-dd"
$file = ("Log_" + $date + ".log")
$logfile = $path + "\" + $file

function Write-Log()
{
  $message = Read-Host "Enter Log-Message"
  $logdate = get-date -format "yyyy-MM-dd HH:mm:ss" 
  $text = "["+$logdate+"] - " + $message
  Write-Host $text
  $text >> $logfile
  if ($message -eq "EXIT") { break; }
}

while($true){
    #run this function
    Write-Log
} 
Write-Host "["+$logdate+"] - " + "Goodbye"