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
        Ne bucuram ca ai ales sa predai prin platforma Up-Grade. Suntem dedicati dezvoltarii invatamantului online si
        vom fi alaturi de tine, pentru a te ajuta sa iti construiesti si dezvolti business-ul de predare.

    </p>
    <p>
        Inainte de toate, activeaza contul tau <a href="{{$user->getHashUrl()}}">aici</a>
    </p>
    <p>
        Incepe aceasta calatorie acum si acceseaza contul tau <a href="{{request()->getSchemeAndHttpHost()}}/account">aici</a>
    </p>
   {{-- <p>

        Porneste la drum, finalizand profilul de Training provider <a href="{{request()->getSchemeAndHttpHost()}}/trainer/settings/">aici</a>
        . Vom folosi aceste date pentru a-ti promova mai bine cursul si pentru a putea facilita plata viitoarelor
        cursuri, direct in contul tau.

    </p>--}}
    <p>
        {{--Odata completate, c--}}Creaza primul tau curs <a href="{{request()->getSchemeAndHttpHost()}}/classes_list">aici</a>
       {{-- sau verifica cursurile pe care esti alocat <a href="{{request()->getSchemeAndHttpHost()}}/trainer/calendar/">aici</a>
        . Tot din calendar vei putea si livra cursurile pe care esti alocat, in datele planificate. Incercam sa
        dezvoltam un flux cat mai facil pentru crearea si publicarea de cursuri, in cazul in care ai nevoie de ajutor,
        nu ezita sa accesezi zona de <a href="{{request()->getSchemeAndHttpHost()}}/resources">resurse</a>
        sau sa ne scrii la office@academiatestarii.ro.--}}
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
