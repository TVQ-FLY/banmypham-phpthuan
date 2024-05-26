<?php
    include('../../config/config.php');
    $data = $_GET['data'];
    $category_ids = json_decode($data);
    $category_id = $_GET['category_id'];
    $category_name = $_POST['category_name'];
    $category_description = $_POST['category_description'];


    if (isset($_POST['category_add'])) {
        $sql_add = "INSERT INTO category(category_name, category_description) VALUE('".$category_name."', '".$category_description."')";
        mysqli_query($mysqli, $sql_add);
        header('Location: ../../index.php?action=category&query=category_list');
    }
    elseif (isset($_POST['category_edit'])) {
        if ($_FILES['name'] != '') {
            $sql = "SELECT * FROM category WHERE category_id = '$category_id' LIMIT 1";
            $query = mysqli_query($mysqli, $sql);
            $sql_update = "UPDATE category SET category_name='".$category_name."', category_description = '".$category_description."'  WHERE category_id = '$_GET[category_id]'";
        }
        else {
            $sql_update = "UPDATE category SET category_name='".$category_name."', category_description = '".$category_description."'  WHERE category_id = '$_GET[category_id]'";
        }
        
        mysqli_query($mysqli, $sql_update);
        header('Location: ../../index.php?action=category&query=category_list');
    }
    else {
        foreach ($category_ids as $id) {
        $sql = "SELECT * FROM category WHERE category_id = '$id' LIMIT 1";
        $query = mysqli_query($mysqli, $sql);
        $sql_delete = "DELETE FROM category WHERE category_id = '".$id."'"; 
        mysqli_query($mysqli, $sql_delete);
        header('Location: ../../index.php?action=category&query=category_list');
        }
    }
