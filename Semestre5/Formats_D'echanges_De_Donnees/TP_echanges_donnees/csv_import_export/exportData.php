<?php 
// Load the database configuration file 
date_default_timezone_set('Africa/Dakar');

include_once 'dbConfig.php'; 
 
$filename = "notes_" . time() . ".csv"; 
$delimiter = ";"; 
 
// Create a file pointer 
$f = fopen('php://memory', 'w'); 
 
// Set column headers 
$fields = array('Ordre', 'NumeroCarte', 'POO', 'GL', 'RIP', 'SR', 'ARCH', 'Creation'); 
fputcsv($f, $fields, $delimiter); 
 
// Get records from the database 
$req = $db->query("SELECT * FROM notes ORDER BY id DESC"); 
$result = $req->fetchAll();
if($result){ 
    // Output each row of the data, format line as csv and write to file pointer 
    foreach ($result as $row) {
        $lineData = array($row['id'], $row['idetudiant'], $row['POO'], $row['GL'], $row['RIP'], $row['SR'], $row['ARCH'],$row['created']); 
        fputcsv($f, $lineData, $delimiter); 
    } 
} 
 
// Move back to beginning of file 
fseek($f, 0); 
 
// Set headers to download file rather than displayed 
header('Content-Type: text/csv'); 
header('Content-Disposition: attachment; filename="' . $filename . '";'); 
 
// Output all remaining data on a file pointer 
fpassthru($f); 
 
// Exit from file 
exit();