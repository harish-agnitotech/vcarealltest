<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Vcare All Test</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Styles -->
    <style>
        html,
        body {
            background-color: #fff;
            color: #636b6f;
            font-family: 'Nunito', sans-serif;
            font-weight: 200;
            height: 100vh;
            margin: 0;
        }

        .full-height {
            height: 100vh;
        }

        .flex-center {
            align-items: center;
            display: flex;
            justify-content: center;
        }

        .position-ref {
            position: relative;
        }

        .top-right {
            position: absolute;
            right: 10px;
            top: 18px;
        }

        .content {
            text-align: center;
        }

        .title {
            font-size: 84px;
        }

        .links>a {
            color: #636b6f;
            padding: 0 25px;
            font-size: 13px;
            font-weight: 600;
            letter-spacing: .1rem;
            text-decoration: none;
            text-transform: uppercase;
        }

        .m-b-md {
            margin-bottom: 30px;
        }
        .message{
            color: red;
            background: #e69595;
            font-weight: 600;
            padding: 5px;
        }
        .errors{
            color:red;
        }
    </style>
</head>

<body>
    <div class="flex-center position-ref full-height">
        <div class="top-right links">
            <a href="{{ url('login') }}">Login</a>

            <a href="{{ url('register') }}">Register</a>
        </div>

        <div class="content">
            <form id="register">
                <div>
                    <span class="message"></span>
                    <ul class="errors"></ul>
                </div>
                Email :<input type="email" id="email" value="" /><br />
                Password :<input type="password" id="password" value="123" /><br />
                <button id="submit">Login</button>
            </form>

        </div>
    </div>
</body>

<script>
    function collectFormData(form) {
        const formData = new FormData(form);
        const urlParams = new URLSearchParams(window.location.search);

    }

    window.onload = function () {
        $('.message').hide();
        if (localStorage.getItem('users.auth.token')) {
            window.location.href = window.location.origin + "/vcarealltest/profile";
        }
        document.getElementById("submit").addEventListener("click", function (event) {
            event.preventDefault();

            $.ajax({
                url: "api/login",
                type: "post",
                dataType: "json",
                data: {
                    email: $('#email').val(),
                    password: $('#password').val()
                },
                success: function (data) {

                    // console.log( JSON.stringify(data));
                    console.log(status);
                    console.log(data.errors);
                    data1 = data.data;
                    if (data.status == 'success') {
                        localStorage.setItem('users.id', data1.user.id);
                        localStorage.setItem('users.name', data1.user.name);
                        localStorage.setItem('users.email', data1.user.email);
                        localStorage.setItem('users.auth.token', data1.auth.token_type + ' ' + data1.auth.access_token);
                        window.location.href = window.location.origin + "/vcarealltest/profile";
                    } else {
                        $('.message').show();
                        $('.message').text(data.message);
                        $('.errors').html('');
                        for (const key in data.errors) {
                            console.log(key)
                            // errorsList += `<li>${res[key]}</li>`
                        }
                    }
                    // alert("Data: " + data + "\nStatus: " + status);
                },
                error: function (data) {
                    $('.errors').html('');
                    
                    var data = $.parseJSON(data.responseText);
                    $('.message').text(data.message);
                    $('.message').show();
                    // console.log(errors);
                    $.each(data.errors, function (key, value) {
                        $('.errors').append( "<li>"+value[0]+"</li>" )
                    });
                }
            });
        });
    }
</script>

</html>