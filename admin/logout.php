<?php
// セッションを開始
session_start();

// セッションデータをすべて削除
$_SESSION = [];

// セッションのクッキーが設定されている場合、削除
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}

// セッションを破棄
session_destroy();

// ログインページにリダイレクト
header('Location: ../index.php');
exit;
?>
