<?php
    // Database configuration
    $dbHost     = "localhost";
    $dbUsername = "root";
    $dbPassword = "root";
    $dbName     = "bdservicepedagogique";

    try {
        $db = new PDO("mysql:host=$dbHost;dbname=$dbName", $dbUsername, $dbPassword);
        // set the PDO error mode to exception
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        // echo "Connected successfully";
    } catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
    }

    // // Create database connection
    // $db = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);

    // // Check connection
    // if ($db->connect_error) {
    //     die("Connection failed: " . $db->connect_error);
    // }

?>