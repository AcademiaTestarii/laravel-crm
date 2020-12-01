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
        {{$name}},
    </p>
    <p>
        Ai fost adaugat ca si trainer de catre {{$trainerProvider}} pentru curicula pe care o livreaza prin intermediul
        platformei Up-Grade.
    </p>
    <p>
        Inregistreaza-te <a href="{{request()->getSchemeAndHttpHost()}}/register?email={{$email}}">aici</a>, pentru a-ti
        finaliza contul.
    </p>
    <p>
        Odata finalizat, creaza cursuri noi pentru {{$trainerProvider}} <a
                href="{{request()->getSchemeAndHttpHost()}}/classes_list">aici</a>,
        sau verifica cursurile pe care esti alocat <a href="{{request()->getSchemeAndHttpHost()}}/dashboard">aici</a>.
        Tot din calendar vei putea si livra cursurile pe care esti alocat, in datele planificate.
    </p>
    <p>

        Suntem dedicati dezvoltarii experientei de invatare online si ne dorim sa te ajutam pentru a maximiza aceasta
        experienta,
        cu studentii tai. Am pregatit pentru asta o zona de resurse pe care te invitam sa o
        rasfoiesti <a href="{{request()->getSchemeAndHttpHost()}}/resources">aici</a> dar si o adresa de email unde ne
        dorim sa primim feedback
        despre cum putem adapta platforma Up-Grade mai bine nevoilor tale: office@academiatestarii.ro

    </p>
    <p>
        La cat mai multi studenti si cursuri livrate!
    </p>
    <p>
        Echipa Up-Grade
    </p>
</div>
</body>
</html>
