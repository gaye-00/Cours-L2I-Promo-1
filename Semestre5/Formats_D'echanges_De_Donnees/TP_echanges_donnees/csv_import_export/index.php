<?php
// Load the database configuration file
include_once 'dbConfig.php';

// Get status message
if(!empty($_GET['status'])){
    switch($_GET['status']){
        case 'succ':
        $statusType = 'alert-success';
            $statusMsg = 'Members data has been imported successfully.';
            break;
        case 'err':
            $statusType = 'alert-danger';
            $statusMsg = 'Some problem occurred, please try again.';
            break;
        case 'invalid_file':
            $statusType = 'alert-danger';
            $statusMsg = 'Please upload a valid CSV file.';
            break;
        default:
            $statusType = '';
            $statusMsg = '';
    }
}
?>

<head>
    <meta charset="utf-8">
    <title>Import and export file CSV</title>
        <!-- Bootstrap library -->
    <link rel="stylesheet" href="assets/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <!-- Stylesheet file -->
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <div class="container">

        <!-- Display status message -->
        <?php if(!empty($statusMsg)){ ?>
        <div class="col-xs-12">
            <div class="alert <?php echo $statusType; ?>"><?php echo $statusMsg; ?></div>
        </div>
        <?php } ?>

        <div class="row">
            <!-- Import & Export link -->
            <div class="col-md-12 head">
                <div class="float-right">
                    <a href="javascript:void(0);" class="btn btn-success" onclick="formToggle('importFrm');"><i class="plus"></i> Import</a>
                    <a href="exportData.php" class="btn btn-primary"><i class="exp"></i> Export</a>
                </div>
            </div>
            <!-- CSV file upload form -->
            <div class="col-md-12" id="importFrm" style="display: none;">
                <form action="importData.php" method="post" enctype="multipart/form-data">
                    <input type="file" name="file" />
                    <input type="submit" class="btn btn-primary" name="importSubmit" value="IMPORT">
                </form>
            </div>

            <!-- Data list table --> 
            <table class="table table-striped table-bordered">
                <thead class="thead-dark">
                    <tr>
                        <th>#ID</th>
                        <th>NUMERO CARTE</th>
                        <th>POO</th>
                        <th>GL</th>
                        <th>RIP</th>
                        <th>SR</th>
                        <th>ARCH</th>
                    </tr>
                </thead>
                <tbody>
                <?php
                // Get member rows
                $req = $db->query("SELECT * FROM notes ORDER BY id DESC");
                $result = $req->fetchAll();
                // var_dump($result);
                if($result){
                    // while($row = $result->fetch_assoc()){
                    foreach ($result as $row) {
                ?>
                    <tr>
                        <td><?php echo $row['id']; ?></td>
                        <td><?php echo $row['idetudiant']; ?></td>
                        <td><?php echo $row['POO']; ?></td>
                        <td><?php echo $row['GL']; ?></td>
                        <td><?php echo $row['RIP']; ?></td>
                        <td><?php echo $row['SR']; ?></td>
                        <td><?php echo $row['ARCH']; ?></td>
                    </tr>
                <?php } }else{ ?>
                    <tr><td colspan="7">No member(s) found...</td></tr>
                <?php } ?>
                </tbody>
            </table>
        </div>


        <!-- Show/hide CSV upload form -->
    </div>
<script>
function formToggle(ID){
    var element = document.getElementById(ID);
    if(element.style.display === "none"){
        element.style.display = "block";
    }else{
        element.style.display = "none";
    }
}
</script>

</body>