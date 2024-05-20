<?php
// Load the database configuration file
date_default_timezone_set('Africa/Dakar');
include_once 'dbConfig.php';

if(isset($_POST['importSubmit'])){
    
    // Allowed mime types
    $csvMimes = array('text/x-comma-separated-values', 'text/comma-separated-values', 'application/octet-stream', 'application/vnd.ms-excel', 'application/x-csv', 'text/x-csv', 'text/csv', 'application/csv', 'application/excel', 'application/vnd.msexcel', 'text/plain');
    
    // Validate whether selected file is a CSV file
    if(!empty($_FILES['file']['name']) && in_array($_FILES['file']['type'], $csvMimes)){
        
        // If the file is uploaded
        if(is_uploaded_file($_FILES['file']['tmp_name'])){
            
            // Open uploaded CSV file with read-only mode
            $csvFile = fopen($_FILES['file']['tmp_name'], 'r');
            
            // Skip the first line
            fgetcsv($csvFile);
            
            // Parse data from CSV file line by line
            while(($row = fgetcsv($csvFile)) !== FALSE){
                // Get row data
                $line = explode(';',$row[0]);
                // var_dump($line);
                $idetu        = $line[1];
                $poo          = $line[2];
                $gl           = $line[3];
                $rip          = $line[4];
                $sr           = $line[5];
                $arch         = $line[6];
                
                // Check whether member already exists in the database with the same email
                $prevQuery = $db->prepare("SELECT id FROM notes WHERE idetudiant = ?");
                $prevQuery->execute([$idetu]); 
                $result = $prevQuery->fetch();

                // die();
                if($result){
                    // Update member data in the database
                    // var_dump('if');
                    $db->query("UPDATE notes SET POO = ".$poo.", GL = ".$gl.", RIP = ".$rip.", SR = ".$sr.", ARCH = ".$arch.", modified = NOW() WHERE idetudiant = ".$idetu);
                }else{
                    // Insert member data  inthe database
                    // var_dump('else');
                    $sql = $db->prepare("INSERT INTO notes (idetudiant, POO, GL, RIP, SR, ARCH, created, modified) VALUES 
                    (?, ?, ?, ?, ?, ?, ?, ?)");
                    $sql->execute([$idetu, $poo, $gl, $rip, $sr, $arch, date("Y-m-d"), date("Y-m-d")]);
                }
            }
            
            // Close opened CSV file
            fclose($csvFile);
            
            $qstring = '?status=succ';
        }else{
            $qstring = '?status=err';
        }
    }else{
        $qstring = '?status=invalid_file';
    }
}

// Redirect to the listing page
header("Location: index.php".$qstring);