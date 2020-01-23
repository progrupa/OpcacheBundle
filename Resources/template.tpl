<?php

if (!function_exists('opcache_reset')) {
    $success = false;
    $message = 'Opcode cache extension not loaded';
} else if (opcache_reset()) {
    $success = true;
    $message = 'Opcode cache clear: success';
} else {
    $success = false;
    $message = 'Opcode cache clear: failure';
}

die(json_encode(array('success' => $success, 'message' => $message)));
