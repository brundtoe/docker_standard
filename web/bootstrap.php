<?php
/**
 * Created by PhpStorm.
 * User: bent
 * Date: 11/24/18
 * Time: 10:50 AM
 */
namespace App;
use Symfony\Component\Dotenv\Dotenv;
require_once 'vendor/autoload.php';
$dotenv = new Dotenv();
$dotenv->load(__DIR__.'/.env');
