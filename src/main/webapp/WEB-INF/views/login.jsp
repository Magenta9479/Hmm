<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>

<body>
    <div id="id01" class="modal">
        <div class="container">

            <div class="imgcontainer">
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span> <img src="img/user11.JPG" alt="Avatar" class="avatar">
            </div>
            <input type="text" placeholder="이메일" name="email" required>
            <input type="password" placeholder="비밀번호" name="pwd" required>
            <button name="login">로그인</button>
        </div>

        <div class="container" style="background-color: #f1f1f1">
            <span class="psw"> <a href="#">비밀번호</a>를 잊으셨나요?
            </span>
        </div>
    </div>

    <script>
        // Get the modal
        var modal = document.getElementById('id01');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }

    </script>
</body>

</html>
