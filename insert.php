<?php
// データを受け取る
$theme = $_POST['theme'];
$url = $_POST['url'];
$content = $_POST['content'];
$date = date('Y-m-d H:i:s');

// /2. DB接続
try {
    //Password注意。MAMP='root'　XAMPP=''
    $pdo = new PDO('mysql:dbname=php2; charset=utf8; host=localhost', 'root', '');
} catch (PDOException $e) {
    exit('DBConnectError:' . $e->getMessage());
}

//３．データ登録SQL作成
$stmt = $pdo->prepare('INSERT INTO php2kadai(id, theme, url, content, date)
                        VALUES(NULL, :theme, :url, :content, now())');

//Integer（数値の場合 PDO::PARAM_INT)
//String（文字列の場合 PDO::PARAM_STR)
$stmt->bindValue(':theme', $theme, PDO::PARAM_STR);
$stmt->bindValue(':url', $url, PDO::PARAM_STR);
$stmt->bindValue(':content', $content, PDO::PARAM_STR);
$status = $stmt->execute();

//４．データ登録処理後
if ($status === false) {
    //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
    $error = $stmt->errorInfo();
    exit('ErrorMessage:' . print_r($error, true));
} else {
    header('Location: index.php');
}