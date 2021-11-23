jQuery(document).ready(function () {
    "use strict";

    $('.main-slider').owlCarousel({
        loop: true,
        dots: false,
        autoplay: true,
        nav: true,
        margin: 10,
        items: 1,
        smartSpeed: 1000,
        autoplayTimeout: 4000,
        mouseDrag: true,
        navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
    });
    $('.allproduct-slider').owlCarousel({
        loop: false,
        dots: false,
        autoplay: false,
        nav: true,
        margin: 10,
        items: 5,
        smartSpeed: 1000,
        autoplayTimeout: 4000,
        mouseDrag: true,
        navText: ['<i class="la la-angle-left"></i>', '<i class="la la-angle-right"></i>'],
        responsiveClass: true,
        responsive: {
             0: {
                items: 2,
                nav: false
            },
            500: {
                items: 2,
                nav: false
            },
            768: {
                items: 2,
                nav: true
            },
            991: {
                items: 3,
                nav: true,
                loop: true,
            },
            1192: {
                items: 5,
                nav: true,
                loop: true,
            }
        }
    });

    $('.brand-slider').owlCarousel({
        loop: true,
        dots: false,
        autoplay: true,
        nav: false,
        margin: 10,
        items: 1,
        smartSpeed: 1000,
        autoplayTimeout: 4000,
        mouseDrag: true,
        navText: ['<i class="la la-angle-left"></i>', '<i class="la la-angle-right"></i>'],
        responsiveClass: true,
        responsive: {
            0: {
                items: 2,
                nav: false
            },
            500: {
                items: 3,
                nav: false
            },
            768: {
                items: 4,
                nav: false
            },
            991: {
                items: 5,
                nav: false,
                loop: true,
            },
            1192: {
                items: 6,
                nav: false,
                loop: true,
            }
        }
    });
    $('.related-slider').owlCarousel({
        loop: false,
        dots: false,
        autoplay: false,
        nav: true,
        margin: 10,
        items: 4,
        smartSpeed: 2500,
        autoplayTimeout: 4000,
        mouseDrag: true,
        navText: ['<i class="la la-angle-left"></i>', '<i class="la la-angle-right"></i>'],
        responsiveClass: true,
        responsive: {
            0: {
                items: 2,
                nav: false
            },
            500: {
                items: 2,
                nav: false
            },
            768: {
                items: 4,
                nav: false
            },
            991: {
                items: 4,
                nav: false,
                loop: true,
            },
            1192: {
                items: 5,
                nav: false,
                loop: true,
            }
        }
    });
    //    offer product slider end
    $('.brandslider').owlCarousel({
        loop: true,
        dots: false,
        autoplay: true,
        nav: false,
        margin: 10,
        items: 1,
        smartSpeed: 3000,
        autoplayTimeout: 5000,
        mouseDrag: true,
        navText: ['<i class="la la-angle-left"></i>', '<i class="la la-angle-right"></i>'],
        responsiveClass: true,
        responsive: {
            0: {
                items: 2,
                nav: false
            },
            500: {
                items: 3,
                nav: false
            },
            768: {
                items: 4,
                nav: false
            },
            991: {
                items: 4,
                nav: false,
                loop: true,
            },
            1192: {
                items: 6,
                nav: false,
                loop: true,
            }
        }
    });
    //    newarrival product slider end
     $('#testimonialslider').owlCarousel({
        items: 1,
        loop: true,
        dots: true,
        autoplay: true,
        nav: false,
        autoplayHoverPause: false,
        margin: 0,
        smartSpeed: 1000,
        autoplayTimeout: 5000,
        mouseDrag: true,
        animateIn: 'fadeIn',
        animateOut: 'fadeOut',
        navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
    });

    $('.blogslider').owlCarousel({
        loop: true,
        dots: false,
        autoplay: false,
        nav: true,
        margin: 10,
        items: 2,
        smartSpeed: 1000,
        autoplayTimeout: 1000,
        mouseDrag: true,
        navText: ['<i class="la la-angle-left"></i>', '<i class="la la-angle-right"></i>'],
        responsiveClass: true,
        responsive: {
            0: {
                items: 1,
                nav: true
            },
            500: {
                items: 2,
                nav: true
            },
            768: {
                items: 4,
                nav: true
            },
            991: {
                items: 4,
                nav: true,
                loop: true,
            },
            1192: {
                items: 4,
                nav: true,
                loop: true,
            }
        }
    });
    //    newarrival product slider end
    
    $('.productslider').owlCarousel({
        loop: true,
        dots: false,
        autoplay: true,
        nav: false,
        margin: 10,
        items: 1,
        smartSpeed: 1000,
        autoplayTimeout: 3000,
        mouseDrag: true,
    });
    //    main slider end
    
    $("#sticker").sticky({
        topSpacing: 0
    });
    /*========sticker end========*/
    $.scrollUp({
        animation: 'slide', // Fade, slide, none
    });
    /*======scroll up======*/
    (function ($) {
        var $main_nav = $('#main-nav');
        var $toggle = $('.toggle');

        var defaultData = {
            maxWidth: false,
            customToggle: $toggle,
            navTitle: 'Category',
            levelTitles: true,
            pushContent: '#container'
        };

        // add new items to original nav
        $main_nav.find('li.add').children('a').on('click', function () {
            var $this = $(this);
            var $li = $this.parent();
            var items = eval('(' + $this.attr('data-add') + ')');

            $li.before('<li class="new"><a>' + items[0] + '</a></li>');

            items.shift();

            if (!items.length) {
                $li.remove();
            } else {
                $this.attr('data-add', JSON.stringify(items));
            }

            Nav.update(true);
        });

        // call our plugin
        var Nav = $main_nav.hcOffcanvasNav(defaultData);

        // demo settings update

        const update = (settings) => {
            if (Nav.isOpen()) {
                Nav.on('close.once', function () {
                    Nav.update(settings);
                    Nav.open();
                });

                Nav.close();
            } else {
                Nav.update(settings);
            }
        };

        $('.actions').find('a').on('click', function (e) {
            e.preventDefault();

            var $this = $(this).addClass('active');
            var $siblings = $this.parent().siblings().children('a').removeClass('active');
            var settings = eval('(' + $this.data('demo') + ')');

            update(settings);
        });

        $('.actions').find('input').on('change', function () {
            var $this = $(this);
            var settings = eval('(' + $this.data('demo') + ')');

            if ($this.is(':checked')) {
                update(settings);
            } else {
                var removeData = {};
                $.each(settings, function (index, value) {
                    removeData[index] = false;
                });

                update(removeData);
            }
        });
    })(jQuery);
    /*========scrollUp end========*/
      $(document).ready(function(){
        $("#showloginpagel").click(function(){
            $("#loginpanel").slideToggle("slow");
        });
        $("#categorytoggle").click(function(){
            $("#categoryshow").slideToggle();
        });

    });

    $("img").lazyload({
        effect : "fadeIn"
    });

    $('.sort-form select').niceSelect();

    $(".block__pic").imagezoomsl({
     zoomrange: [3, 3]
    });

    $("img").lazyload({
        effect : "fadeIn"
    });

    // details slider
    var galleryThumbs = new Swiper('.gallery-thumbs', {
      spaceBetween: 10,
      slidesPerView: 4,
      freeMode: true,
      watchSlidesVisibility: true,
      watchSlidesProgress: true,
    });
    var galleryTop = new Swiper('.gallery-top', {
      spaceBetween: 10,
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
      thumbs: {
        swiper: galleryThumbs
      }
    });
    // zoom effect
    // dropdown
        function myFunction() {
      document.getElementById("myDropdown").classList.toggle("show");
    }

    // Close the dropdown menu if the user clicks outside of it
    window.onclick = function(event) {
      if (!event.target.matches('.dropbtn')) {
        var dropdowns = document.getElementsByClassName("dropdown-content");
        var i;
        for (i = 0; i < dropdowns.length; i++) {
          var openDropdown = dropdowns[i];
          if (openDropdown.classList.contains('show')) {
            openDropdown.classList.remove('show');
          }
        }
      }
    }
     // extra js
     $('.mpcatshow').on("click", function(){  
         jQuery('.mpcatcontent').toggle('show');
    }); 
     $(document).ready(function(){
        // Add minus icon for collapse element which is open by default
        $(".collapse.show").each(function(){
            $(this).prev(".card-header").find(".fa").addClass("fa-caret-down").removeClass("fa-caret-up");
        });
        
        // Toggle plus minus icon on show hide of collapse element
        $(".collapse").on('show.bs.collapse', function(){
            $(this).prev(".card-header").find(".fa").removeClass("fa-caret-up").addClass("fa-caret-down");
        }).on('hide.bs.collapse', function(){
            $(this).prev(".card-header").find(".fa").removeClass("fa-caret-down").addClass("fa-caret-up");
        });
    });

     // slide top
     $(window).scroll(function() {
        if ($(this).scrollTop() > 50 ) {
            $('.scrolltop:hidden').stop(true, true).fadeIn();
        } else {
            $('.scrolltop').stop(true, true).fadeOut();
        }
    });
    $(function(){$(".scroll").click(function(){$("html,body").animate({scrollTop:$(".gotop").offset().top},"1000");return false})})
  // mobile menu
  $(".MenuOpen").on('click', function(){
      $('.hc-offcanvas-nav').addClass('nav-open').css('visibility','visible');
    });
      
});


