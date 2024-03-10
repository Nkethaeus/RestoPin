<?php
    session_start();
    if(session_destroy()) {
        header("Location: managerlogin.php"); // Redirecting To Home Page
    }
?>