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

        .message {
            color: red;
            background: #e69595;
            font-weight: 600;
            padding: 5px;
        }

        .errors {
            color: red;
        }

        #logout {
            cursor: pointer;
        }

    </style>
</head>

<body>
    <div class="flex-center position-ref full-height">
        <div class="top-right links">
            <a id="logout">logout</a>

        </div>

        <div class="content">
            <form id="register">
                <div>
                    <span class="message"></span>
                    <ul class="errors"></ul>
                </div>
                Father :<input type="text" id="father" value="" /><br />
                Mother :<input type="text" id="mother" value="" /><br />
                Wife :<input type="text" id="wife" value="" /><br />
                Child :<input type="text" id="child" value="" /><br />
                Address :<input type="text" id="address" value="" /><br />

                <button id="submit">User Details</button>
            </form>

        </div>
    </div>
</body>

<script>
    window.onload = function() {
        $('.message').hide();
        if (!localStorage.getItem('users.auth.token')) {
            window.location.href = window.location.origin + "/vcarealltest";
        }
        document.getElementById("submit").addEventListener("click", function(e) {
            e.preventDefault();
            var formData = new FormData();
            formData.append('father', $('#father').val());
            formData.append('mother', $('#mother').val());
            formData.append('wife', $('#wife').val());
            formData.append('child', $('#child').val());
            formData.append('address', $('#address').val());

            $.ajax({
                url: "api/carete_update/family_address_details"
                , type: "post"
                , beforeSend: function(xhr) {
                        xhr.setRequestHeader('Authorization', localStorage.getItem('users.auth.token'));
                    }
                    //, dataType: "json"
                , data: formData
                , processData: false
                , contentType: false
                , success: function(data) {

                    alert(data.message);

                }
                , error: function(data) {
                    $('.errors').html('');

                    var data = $.parseJSON(data.responseText);
                    $('.message').text(data.message);
                    $('.message').show();
                    // console.log(errors);
                    $.each(data.errors, function(key, value) {
                        $('.errors').append("<li>" + value[0] + "</li>")
                    });
                }
            });
        });

        $('#logout').click(function() {
            $.ajax({
                url: "api/logout"
                , type: "get"
                , beforeSend: function(xhr) {
                    xhr.setRequestHeader('Authorization', localStorage.getItem('users.auth.token'));
                }
                , success: function(data) {
                    localStorage.removeItem('users');
                    localStorage.removeItem('users.id');
                    localStorage.removeItem('users.name');
                    localStorage.removeItem('users.email');
                    localStorage.removeItem('users.auth.token');
                    alert(data.message);
                    window.location.href = window.location.origin + "/vcarealltest";

                }
                , error: function(data) {
                    alert(data.message);
                }
            });
        });
    }

</script>

</html>
