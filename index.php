<!DOCTYPE html>
<html lang="ja">
<link rel="stylesheet" href="css/phpindex.css">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ブックマークアプリ</title>
   
</head>

<header>
   <div class="header-list">
       <ul>
           <li><a href="index.html">Home</a></li>
           <li><a href="bio.html">Bio</a></li>
           <li><a href="psycho.html">Psycho</a></li>
           <li><a href="social.html">Social</a></li>
           <li><a href="index.php">お問い合わせ</a></li>
       </ul>
   </div>
 </header>

<body>
<form method="POST" action="insert.php" >
<div class="container">
        <h1>ブックマーク</h1>


            <label for="theme">テーマ</label>
            <input type="text" id="theme" name="theme" required>

            <label for="url">URL</label>
            <input type="text" id="url" name="url" required>

            <label for="content">内容</label>
            <textarea id="content" name="content" rows="5" required></textarea>

            <button type="submit">送信</button>
        </form>
    </div>
    </div>
</form>
   
</body>
</html>
