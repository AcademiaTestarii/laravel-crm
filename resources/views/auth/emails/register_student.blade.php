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
        Inainte de toate, activeaza contul tau
        <a href="/account/activate/{{$user->getHashUrl()}}">aici</a>
    </p>
    <p>
        Acceseaza contul tau <a href="/account">aici</a>
    </p>
    <p>
        Odata finalizat, rasfoieste catalogul de cursuri <a href="/student/catalog">aici</a>
        si alege cursul sau cursurile care ti se potrivesc. Verifica in contul tau cursurile la care esti inscris si
        datele in care se desfasoara <a href="/student/classes">"aici</a>
        . Participa la lectiile planificate, atat cele in regim individual cat si live, din sectiunea <a href="/student/my_classes">Cursurile mele</a>

    </p>
    <p>
        Parerea ta este foarte importanta pentru noi si ne-ar placea sa primim feedback-ul tau la
        office@academiatestarii.ro atat despre cum putem sa iti imbunatatim experienta de invatare dar si despre ce alte
        cursuri ai dori sa mai gasesti in platforma.
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
