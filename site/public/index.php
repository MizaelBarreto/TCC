<?php
    //require 'vendor/autoload.php';

    use Pecee\SimpleRouter\SimpleRouter;

    /* Load external routes file */
    require_once __DIR__ . '/app/helpers/Helper.php';
    require_once __DIR__ . '/app/config/Routes.php';

    // Start the routing
    SimpleRouter::start();
?>