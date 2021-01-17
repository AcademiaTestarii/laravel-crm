<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Up-grade.tech</title>
        <link href="{{asset('css/design.css')}}" rel="stylesheet">
    </head>

    <body>
        @include('include/header-new')
        <main>
            <div class="upt-section__catalog">
                <div class="container">
                    <div class="upt-section__catalog__title">The best courses for you
                    </div>
                    <div class="upt-section__catalog__text">Make the most of your online learning experience
                    </div>
                    <div class="upt-section__catalog__grid">
                        <?php
                        $mainClasses = [];
                        ?>
                        @foreach($classes as $class)
                            <?php
                            if ($class->getRegistrationStartDate() >= new \Carbon\Carbon()) {
                            if (!in_array($class->getMainClassId(), $mainClasses)) {
                            $mainClasses[] = $class->getMainClassId();
                            ?>
                            <div class="upt-catalogbox">
                                <span class="upt-catalogbox__image"><img src="{{$class->getImage()}}" /></span>
                                <div class="upt-catalogbox__title">{{ $class->mainClass->getTitle() }}</div>
                                <p class="upt-catalogbox__autor">{{$class->classTrainer->trainer->getName()}}</p>
                                <p class="upt-catalogbox__text">{{ $class->getShortDescription() }}</p>
                                <div class="upt-catalogbox__subtitle">NEXT COURSE</div>
                                <div class="upt-catalogbox__description">
                                    @if ($class->isPlanned())
                                        <span class="mb-10 text-gray-darkgray mr-10 font-13"><i
                                                    class="fa fa-calendar mr-5 text-theme-colored"></i>Data va fi anunţata ulterior</span>
                                    @elseif ($class->getRegistrationStartDate() > \Carbon\Carbon::yesterday())
                                        <span class="mb-0 text-gray-darkgray mr-10 font-13">
                                            <i class="fa fa-calendar mr-5 text-theme-colored"></i>
                                            {{ $class->getRegistrationStartDate()->formatLocalized("%e %B, %Y") }} - {{ $class->getRegistrationEndDate()->formatLocalized("%e %B, %Y") }}
                                            @endif
                                        </span> <br>
                                        {{$class->getStudents() - $class->classStudents()->count()}} Spots Available<br>
                                        Price
                                        <strike>{{$class->getPrice()}} RON</strike> {{ $class->getDiscountPrice() }} RON
                                </div>
                                <a href="{{ route('class_signup', $class->getMainClassId()) }}"
                                   class="upt-catalogbox__button">Enroll</a>
                            </div>
                            <?php
                            }
                            }
                            ?>
                        @endforeach
                    </div>
                </div>
            </div>
        </main>
        @include('include/footer-new')
    </body>

</html>

<?php /*

<!-- Main content -->
<section class="wrapper wrapper-content">

  <div class="ibox float-e-margins">
    <div class="row">
      <?php
      $mainClasses = [];
      ?>
      @foreach($classes as $class)
      <?php
      if ($class->getRegistrationStartDate() >= new \Carbon\Carbon()) {
        if (!in_array($class->getMainClassId(), $mainClasses)) {
          $mainClasses[] = $class->getMainClassId();
      ?>
          <div class="col-md-4 col-sm-6 col-xs-12" style="margin-top: 40px;">
            <article class="post clearfix mb-30">
              <div class="entry-header">
                <div class="post-thumb thumb">
                  <img src="{{$class->getImage()}}" alt="" class="img-responsive img-fullwidth">
                </div>
                <div class="entry-date media-left text-center flip bg-theme-colored border-top-theme-colored2-3px pt-5 pr-15 pb-5 pl-15" style="top: -25px;position: absolute;right: 30px; z-index: 2;font-size: 13px;border-top: 3px solid #1e9edd !important;
background-color: #4c3391 !important;padding-left: 15px !important;padding-bottom: 5px !important;padding-right: 15px !important;padding-top: 5px !important;">
                  <ul style="list-style: none;margin: 0;padding: 0;">
                    <li class="font-16 text-white font-weight-600" style="font-size: 16px !important;">
                      {{ $class->getRegistrationStartDate()->formatLocalized("%e")}}
                    <li>
                    <li class="font-16 text-white font-weight-600" style="font-size: 12px !important;text-transform: uppercase;">
                      {{ $class->getRegistrationStartDate()->formatLocalized("%B")}}
                    <li>
                  </ul>
                </div>
              </div>
              <div class="entry-content p-20 bg-white" style="background: white;">
                <div class="entry-meta media mt-0 mb-10" style="min-height: 220px;">
                  <div class="media-body pl-0" style="padding:10px; background:white;">
                    <div class="event-content pull-left flip">
                      <h4 class="entry-title text-white text-uppercase font-weight-600 m-0 mt-5">
                        <a href="{{ route('class_description', $class->getMainClassId()) }}"> {{ $class->getTitle() }} </a>
                      </h4>

                      <p>{{ $class->getShortDescription() }}</p>

                      <div class="price">Taxa de înscriere:
                        <del>
                          <span class="amount">{{$class->getPrice()}} Lei</span>
                        </del>
                        <strong><span class="amount">{{ $class->getDiscountPrice() }} Lei</span></strong>
                      </div>

                      @if ($class->isPlanned())
                      <span class="mb-10 text-gray-darkgray mr-10 font-13"><i class="fa fa-calendar mr-5 text-theme-colored"></i>Data va fi anunţata ulterior</span>
                      @elseif ($class->getRegistrationStartDate() > \Carbon\Carbon::yesterday())
                      <span class="mb-0 text-gray-darkgray mr-10 font-13">Următorul curs:
                        <br />
                        <i class="fa fa-calendar mr-5 text-theme-colored"></i>
                        {{ $class->getRegistrationStartDate()->formatLocalized("%e %B, %Y") }} - {{ $class->getRegistrationEndDate()->formatLocalized("%e %B, %Y") }}
                        @endif
                      </span>
                      <br />


                      <span class="mb-10 text-gray-darkgray mr-10 font-13">Locuri disponibile: {{$class->getStudents() - $class->classStudents()->count()}} </span>

                      <hr class="mb-0" />
                      <span class="mb-10 text-gray-darkgray mr-10 font-13">Cursuri viitoare:
                        <br />
                        @if($class->nextClass())
                        <i class="fa fa-calendar mr-5 text-theme-colored"></i>
                        {{ $class->nextClass()->getRegistrationStartDate()->formatLocalized("%e %B, %Y") }}
                        - {{ $class->nextClass()->getRegistrationEndDate()->formatLocalized("%e %B, %Y") }}
                        @endif
                      </span>
                    </div>
                  </div>
                </div>
                <a class="btn btn-dark btn-theme-colored2" href="{{ route('class_description', $class->getMainClassId()) }}"> Detalii
                  curs</a>
                <a href="{{ route('class_signup', $class->getMainClassId()) }}" class="btn btn-dark btn-theme-colored pull-right">Înscrie-te</a>
              </div>
            </article>
          </div>
      <?php
        }
      }
      ?>
      @endforeach
    </div>
  </div>
</section>
*/ ?>
