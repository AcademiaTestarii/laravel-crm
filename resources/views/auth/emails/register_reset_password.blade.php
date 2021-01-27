<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Academia Testarii</title>
</head>
<body>
<div>
    <p>
        Salut
        {{$user->name}},
    </p>
    <p>
        Suntem bucurosi ca ai ales Up-Grade ca si platforma pentru educatie. Misiunea noastra este sa imbunatatim
        calitatea educatiei online, prin cursuri de calitate, ajutate de tehnologie de ultima ora.

    </p>
    <p>
        Reseteaza parola ta
        <a href="{{$user->getResetPasswordHashUrl()}}">aici</a>
    </p>
    <p>
        Iti multumim,
    </p>
    <p>
        Echipa Up-Grade
    </p>
</div>
</body>
</html>
