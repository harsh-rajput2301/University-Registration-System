<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
    <style>
        body {
            background-image: url('assets/img/dl3.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }
        .homepage{
            width: 180px;
            height: 200px;
            background-color: white;
            position: absolute;
            left: 50%;
            top: 50%;
            -webkit-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }
        .downbutton{
            position: absolute;
            bottom: 0;
        }
    </style>
</head>
<body>
    <div class="homepage">
        <div class="upbutton">
            <form>
                <input style="background: #AC33FF; color: white; width: 150px; height: 30px; margin: 15px; margin-top: 20px; cursor: pointer;" type="button" value="Login as Admin" onclick="window.location.href='admin/index.php'" />
            </form>
        </div>
        
        <div class="downbutton">
            <form>
                <input style="background: #AC33FF; color: white; width: 150px; height: 30px; margin: 15px; margin-bottom: 20px; cursor: pointer;" type="button" value="Login as Student" onclick="window.location.href='index.php'" />
            </form>
        </div>
        
    </div>
</body>
</html>