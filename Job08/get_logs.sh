date_format=$(date +'%d-%m-%Y-%H:%M')
utilisateur="test"
number_connection=$(last "$utilisateur" | wc -l ) 
nom_fichier="number_connection-$date_format"
echo "$number_connection" >> "$nom_fichier"

tar -cvf "/home/test/Documents/shell.exe/Job08/Backup/$nom_fichier.tar" "$nom_fichier"

