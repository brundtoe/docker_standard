<?php
/**
 * Created by PhpStorm.
 * User: bent
 * Date: 17.10.18
 * Time: 16:33
 */
require_once "../bootstrap.php";
echo "<h1>Dette er en side med environment variable</h1>";
echo "<h3>Variable er indlæst under anvendelse af symfon/dotenv</h3>";
echo "<pre>";
print_r($_ENV);
echo "</pre>";