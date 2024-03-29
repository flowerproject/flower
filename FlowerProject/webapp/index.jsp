<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html>
  <head>
    <c:import url="views/common/commonUtil.jsp" />
  </head>

  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
    <div class="site-wrap" id="home-section">
	<c:import url="views/common/header.jsp"/>
      <div class="ftco-blocks-cover-1">
        <div class="ftco-cover-1 overlay">
        	<div class="video-background">
        		<div class="video-foreground">
    				<div id="muteYouTubeVideoPlayer"></div>
    			</div>
    		<div class="video-film"></div>
			<script type="text/javascript" src="resources/js/typeit.min.js"></script>
			<script async src="https://www.youtube.com/iframe_api"></script>
			<script type="text/javascript">
			var player;
			function onYouTubePlayerAPIReady() {
			  player = new YT.Player('muteYouTubeVideoPlayer', {
			  	videoId: 'V2uIh1Fr6w4',
			  	playerVars: {
			  	      autoplay: 1,        // Auto-play the video on load
			  	      controls: 0,        // Show pause/play buttons in player
			  	      rel : 0,
			  	      start: 105,
			  	      end: 301,
			  	      showinfo : 0,
			  	      showinfo: 0,        // Hide the video title
			  	      modestbranding: 1,  // Hide the Youtube Logo
			  	      loop: 1,            // Run the video in a loop
			  	      playlist : 'V2uIh1Fr6w4',
			  	      fs: 0,              // Hide the full screen button
			  	      cc_load_policy: 0, // Hide closed captions
			  	      iv_load_policy: 3,  // Hide the Video Annotations
			  	      autohide: 1         // Hide video controls when playing
			  	    },
			  	events: {
			  	      onReady: function(e) {
			  	        e.target.mute();
			  	      }
			  		}
			  });
			}
			</script>
			<script type="text/javascript">
			 // 참조 사이트 : https://typeitjs.com/
			 $(function(){
				 var str1 = ["이별은 언제나 불현듯 찾아옵니다."," 사랑하는 이를 위해 미리 준비하세요."];
				 var str2 = ["꽃가람이란<br> 꽃이 있는 강이라는 뜻을 지닌 순우리말..."];
			 	 var str3 = ["당신의 아픔을....<br> 함께 나누겠습니다."];
			  
			  $('.type_text').typeIt({
				  	strings: str1,
				    html: true,
				    autoStart: true,
				    loop:true,
				    typeSpeed: 500,
				    deleteSpeed : 250
				})
			.tiPause(2500)
			.tiDelete(80)
			.tiType(str2)
			.tiPause(700)
			.tiDelete(70)
			.tiType(str3)
			.tiPause(700)
			.tiDelete(70)
			.tiEmpty();
			 });
			</script>
        </div>
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">
          
            <div class="col-lg-10">
              <p class="type_text" style="height:150px; text-align:center; color:snow; font-size:30pt;"></p> 
              <p class="mb-5">처음의 웃음보다 마지막 미소를 더 아름답게...</p>
              <br><br><br>
              <form action="#">
                <div class="form-group d-flex">
                  <input type="text" class="form-control" placeholder="조회할 상품 내용을 입력하세요">
                  <input type="submit" class="btn btn-secondary text-white px-4" value="조회">
                </div>
              </form>
            </div>
          </div>
        </div>
        <!-- END .ftco-cover-1 -->
        <div class="site-section ftco-service-image-1 pb-5">
          <div class="container">
            <div class="owl-carousel owl-all">
              <div class="service text-center">
                <a href="#"><img src="${pageContext.request.contextPath }/resources/tmp/images/depot_img_1.jpg" alt="Image" class="img-fluid"></a>
                <div class="px-md-3">
                  <h3><a href="#">Truck Insurance</a></h3>
                  <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Beatae distinctio laudantium nulla eos numquam incidunt!</p>
                </div>
              </div>
              <div class="service text-center">
                <a href="#"><img src="${pageContext.request.contextPath }/resources/tmp/images/depot_img_2.jpg" alt="Image" class="img-fluid"></a>
                <div class="px-md-3">
                  <h3><a href="#">Plane Transportation</a></h3>
                  <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Beatae distinctio laudantium nulla eos numquam incidunt!</p>
                </div>
              </div>
              <div class="service text-center">
                <a href="#"><img src="${pageContext.request.contextPath }/resources/tmp/images/depot_img_3.jpg" alt="Image" class="img-fluid"></a>
                <div class="px-md-3">
                  <h3><a href="#">Sea &amp; Ear Freight</a></h3>
                  <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Beatae distinctio laudantium nulla eos numquam incidunt!</p>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

      <div class="site-section bg-light" id="services-section">
        <div class="container">
          <div class="row mb-5 justify-content-center">
            <div class="col-md-7 text-center">
              <div class="block-heading-1">
                <h2>Services</h2>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              </div>
            </div>
          </div>
          <div class="owl-carousel owl-all">
            <div class="block__35630 text-center">
              <div class="icon mb-0">
                <span class="flaticon-ferry"></span>
              </div>
              <h3 class="mb-3">Sea Freight</h3>
              <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. </p>
            </div>

            <div class="block__35630 text-center">
              <div class="icon mb-0">
                <span class="flaticon-airplane"></span>
              </div>
              <h3 class="mb-3">Air Freight</h3>
              <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. </p>
            </div>

            <div class="block__35630 text-center">
              <div class="icon mb-0">
                <span class="flaticon-box"></span>
              </div>
              <h3 class="mb-3">Package Forwarding</h3>
              <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. </p>
            </div>

            <div class="block__35630 text-center">
              <div class="icon mb-0">
                <span class="flaticon-lorry"></span>
              </div>
              <h3 class="mb-3">Trucking</h3>
              <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. </p>
            </div>

            <div class="block__35630 text-center">
              <div class="icon mb-0">
                <span class="flaticon-warehouse"></span>
              </div>
              <h3 class="mb-3">Warehouse</h3>
              <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. </p>
            </div>

            <div class="block__35630 text-center">
              <div class="icon mb-0">
                <span class="flaticon-add"></span>
              </div>
              <h3 class="mb-3">Delivery</h3>
              <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. </p>
            </div>

          </div>
        </div>
      </div>




      <div class="site-section" id="about-section">

        <div class="container">
          <div class="row mb-5 justify-content-center">
            <div class="col-md-7 text-center">
              <div class="block-heading-1" data-aos="fade-up" data-aos-delay="">
                <h2>About Us</h2>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              </div>
            </div>
          </div>
        </div>

      </div>



      <div class="site-section bg-light" id="about-section">
        <div class="container">
          <div class="row justify-content-center mb-4 block-img-video-1-wrap">
            <div class="col-md-12 mb-5">
              <figure class="block-img-video-1" data-aos="fade">
                <a href="https://vimeo.com/45830194" data-fancybox data-ratio="2">
                <span class="icon"><span class="icon-play"></span></span>
                <img src="${pageContext.request.contextPath }/resources/tmp/images/depot_delivery_1.jpg" alt="Image" class="img-fluid">
              </a>
              </figure>
            </div>
          </div>
          <div class="row">
            <div class="col-12">
              <div class="row">
                <div class="col-6 col-md-6 mb-4 col-lg-0 col-lg-3" data-aos="fade-up" data-aos-delay="">
                  <div class="block-counter-1">
                    <span class="number"><span data-number="19">0</span>+</span>
                    <span class="caption">Years in Service</span>
                  </div>
                </div>
                <div class="col-6 col-md-6 mb-4 col-lg-0 col-lg-3" data-aos="fade-up" data-aos-delay="100">
                  <div class="block-counter-1">
                    <span class="number"><span data-number="2332">0</span>+</span>
                    <span class="caption">Employees</span>
                  </div>
                </div>
                <div class="col-6 col-md-6 mb-4 col-lg-0 col-lg-3" data-aos="fade-up" data-aos-delay="200">
                  <div class="block-counter-1">
                    <span class="number"><span data-number="231">0</span>+</span>
                    <span class="caption">Covered Countries</span>
                  </div>
                </div>
                <div class="col-6 col-md-6 mb-4 col-lg-0 col-lg-3" data-aos="fade-up" data-aos-delay="300">
                  <div class="block-counter-1">
                    <span class="number"><span data-number="827">0</span>+</span>
                    <span class="caption">Couriers</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="site-section" id="team-section">
        <div class="container">
          <div class="row mb-5 justify-content-center">
            <div class="col-md-7 text-center">
              <div class="block-heading-1" data-aos="fade-up" data-aos-delay="">
                <h2>Our Staff</h2>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              </div>
            </div>
          </div>

          <div class="owl-carousel owl-all mb-5">
            <div class="block-team-member-1 text-center rounded h-100">
              <figure>
                <img src="${pageContext.request.contextPath }/resources/tmp/images/person_1.jpg" alt="Image" class="img-fluid rounded-circle">
              </figure>
              <h3 class="font-size-20 text-black">Max Carlson</h3>
              <span class="d-block font-gray-5 letter-spacing-1 text-uppercase font-size-12 mb-3">Co-Founder</span>
              <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <div class="block-social-1">
                <a href="#" class="btn border-w-2 rounded primary-primary-outline--hover"><span class="icon-facebook"></span></a>
                <a href="#" class="btn border-w-2 rounded primary-primary-outline--hover"><span class="icon-twitter"></span></a>
                <a href="#" class="btn border-w-2 rounded primary-primary-outline--hover"><span class="icon-instagram"></span></a>
              </div>
            </div>

            <div class="block-team-member-1 text-center rounded h-100">
              <figure>
                <img src="${pageContext.request.contextPath }/resources/tmp/images/person_2.jpg" alt="Image" class="img-fluid rounded-circle">
              </figure>
              <h3 class="font-size-20 text-black">Charlotte Pilat</h3>
              <span class="d-block font-gray-5 letter-spacing-1 text-uppercase font-size-12 mb-3">Co-Founder</span>
              <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <div class="block-social-1">
                <a href="#" class="btn border-w-2 rounded primary-primary-outline--hover"><span class="icon-facebook"></span></a>
                <a href="#" class="btn border-w-2 rounded primary-primary-outline--hover"><span class="icon-twitter"></span></a>
                <a href="#" class="btn border-w-2 rounded primary-primary-outline--hover"><span class="icon-instagram"></span></a>
              </div>
            </div>

            <div class="block-team-member-1 text-center rounded h-100">
              <figure>
                <img src="${pageContext.request.contextPath }/resources/tmp/images/person_3.jpg" alt="Image" class="img-fluid rounded-circle">
              </figure>
              <h3 class="font-size-20 text-black">Nicole Lewis</h3>
              <span class="d-block font-gray-5 letter-spacing-1 text-uppercase font-size-12 mb-3">Co-Founder</span>
              <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <div class="block-social-1">
                <a href="#" class="btn border-w-2 rounded primary-primary-outline--hover"><span class="icon-facebook"></span></a>
                <a href="#" class="btn border-w-2 rounded primary-primary-outline--hover"><span class="icon-twitter"></span></a>
                <a href="#" class="btn border-w-2 rounded primary-primary-outline--hover"><span class="icon-instagram"></span></a>
              </div>
            </div>

            


        </div>
      </div>




      <div class="site-section bg-light" id="pricing-section">
        <div class="container">
          <div class="row mb-5 justify-content-center text-center">
            <div class="col-md-7">
              <div class="block-heading-1" data-aos="fade-up" data-aos-delay="">
                <h2>Pricing</h2>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
              </div>
            </div>
          </div>
          <div class="row mb-5">
            <div class="col-md-6 mb-4 mb-lg-0 col-lg-4" data-aos="fade-up" data-aos-delay="">
              <div class="pricing">
                <h3 class="text-center text-black">Basic</h3>
                <div class="price text-center mb-4 ">
                  <span><span>$47</span> / year</span>
                </div>
                <ul class="list-unstyled ul-check success mb-5">

                  <li>Officia quaerat eaque neque</li>
                  <li>Possimus aut consequuntur incidunt</li>
                  <li class="remove">Lorem ipsum dolor sit amet</li>
                  <li class="remove">Consectetur adipisicing elit</li>
                  <li class="remove">Dolorum esse odio quas architecto sint</li>
                </ul>
                <p class="text-center">
                  <a href="#" class="btn btn-secondary btn-md">Buy Now</a>
                </p>
              </div>
            </div>

            <div class="col-md-6 mb-4 mb-lg-0 col-lg-4" data-aos="fade-up" data-aos-delay="100">
              <div class="pricing">
                <h3 class="text-center text-black">Premium</h3>
                <div class="price text-center mb-4 ">
                  <span><span>$200</span> / year</span>
                </div>
                <ul class="list-unstyled ul-check success mb-5">

                  <li>Officia quaerat eaque neque</li>
                  <li>Possimus aut consequuntur incidunt</li>
                  <li>Lorem ipsum dolor sit amet</li>
                  <li>Consectetur adipisicing elit</li>
                  <li class="remove">Dolorum esse odio quas architecto sint</li>
                </ul>
                <p class="text-center">
                  <a href="#" class="btn btn-primary btn-md text-white">Buy Now</a>
                </p>
              </div>
            </div>

            <div class="col-md-6 mb-4 mb-lg-0 col-lg-4" data-aos="fade-up" data-aos-delay="200">
              <div class="pricing">
                <h3 class="text-center text-black">Professional</h3>
                <div class="price text-center mb-4 ">
                  <span><span>$750</span> / year</span>
                </div>
                <ul class="list-unstyled ul-check success mb-5">

                  <li>Officia quaerat eaque neque</li>
                  <li>Possimus aut consequuntur incidunt</li>
                  <li>Lorem ipsum dolor sit amet</li>
                  <li>Consectetur adipisicing elit</li>
                  <li>Dolorum esse odio quas architecto sint</li>
                </ul>
                <p class="text-center">
                  <a href="#" class="btn btn-secondary btn-md">Buy Now</a>
                </p>
              </div>
            </div>
          </div>


        </div>
      </div>


      <div class="site-section" id="faq-section">
        <div class="container">
          <div class="row mb-5">
            <div class="block-heading-1 col-12 text-center">
              <h2>Frequently Ask Questions</h2>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">

              <div class="mb-5" data-aos="fade-up" data-aos-delay="100">
                <h3 class="text-black h4 mb-4">Possimus aut consequuntur incidunt?</h3>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
              </div>

              <div class="mb-5" data-aos="fade-up" data-aos-delay="100">
                <h3 class="text-black h4 mb-4">Dolorum esse odio quas architecto sint?</h3>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
              </div>

              <div class="mb-5" data-aos="fade-up" data-aos-delay="100">
                <h3 class="text-black h4 mb-4">Possimus aut consequuntur incidunt?</h3>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
              </div>

              <div class="mb-5" data-aos="fade-up" data-aos-delay="100">
                <h3 class="text-black h4 mb-4">Dolorum esse odio quas architecto sint?</h3>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
              </div>
            </div>
            <div class="col-lg-6">

              <div class="mb-5" data-aos="fade-up" data-aos-delay="100">
                <h3 class="text-black h4 mb-4">Lorem ipsum dolor sit</h3>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
              </div>

              <div class="mb-5" data-aos="fade-up" data-aos-delay="100">
                <h3 class="text-black h4 mb-4">consequuntur incidunt?</h3>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
              </div>

              <div class="mb-5" data-aos="fade-up" data-aos-delay="100">
                <h3 class="text-black h4 mb-4">Possimus aut consequuntur incidunt?</h3>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
              </div>

              <div class="mb-5" data-aos="fade-up" data-aos-delay="100">
                <h3 class="text-black h4 mb-4">Dolorum esse odio quas architecto sint?</h3>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="block__73694 site-section border-top" id="why-us-section">
        <div class="container">
          <div class="row d-flex no-gutters align-items-stretch">

            <div class="col-12 col-lg-6 block__73422 order-lg-2" style="background-image: url('${pageContext.request.contextPath }/resources/tmp/images/depot_delivery_1.jpg');" data-aos="fade-left" data-aos-delay="">
            </div>



            <div class="col-lg-5 mr-auto p-lg-5 mt-4 mt-lg-0 order-lg-1" data-aos="fade-right" data-aos-delay="">
              <h2 class="mb-4 text-black">Why Depot</h2>
              <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veniam error aliquid, dolores animi obcaecati quisquam accusamus soluta?</p>

              <ul class="ul-check primary list-unstyled mt-5">
                <li>Cargo express</li>
                <li>Secure Services</li>
                <li>Secure Warehouseing</li>
                <li>Cost savings</li>
                <li>Proven by great companies</li>
              </ul>

            </div>

          </div>
        </div>
      </div>


      <div class="site-section bg-light block-13" id="testimonials-section" data-aos="fade">
        <div class="container">

          <div class="text-center mb-5">
            <div class="block-heading-1">
              <h2>Happy Clients</h2>
            </div>
          </div>

          <div class="owl-carousel nonloop-block-13">
            <div>
              <div class="block-testimony-1 text-center">

                <blockquote class="mb-4">
                  <p>&ldquo;The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt
                    and made herself on the way.&rdquo;</p>
                </blockquote>

                <figure>
                  <img src="${pageContext.request.contextPath }/resources/tmp/images/person_1.jpg" alt="Image" class="img-fluid rounded-circle mx-auto">
                </figure>
                <h3 class="font-size-20 text-black">Ricky Fisher</h3>
              </div>
            </div>

            <div>
              <div class="block-testimony-1 text-center">
                <blockquote class="mb-4">
                  <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
                </blockquote>
                <figure>
                  <img src="${pageContext.request.contextPath }/resources/tmp/images/person_2.jpg" alt="Image" class="img-fluid rounded-circle mx-auto">
                </figure>
                <h3 class="font-size-20 mb-4 text-black">Ken Davis</h3>

              </div>
            </div>

            <div>
              <div class="block-testimony-1 text-center">


                <blockquote class="mb-4">
                  <p>&ldquo;A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.&rdquo;</p>
                </blockquote>

                <figure>
                  <img src="${pageContext.request.contextPath }/resources/tmp/images/person_1.jpg" alt="Image" class="img-fluid rounded-circle mx-auto">
                </figure>
                <h3 class="font-size-20 text-black">Mellisa Griffin</h3>


              </div>
            </div>

            <div>
              <div class="block-testimony-1 text-center">
                <blockquote class="mb-4">
                  <p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
                </blockquote>

                <figure>
                  <img src="${pageContext.request.contextPath }/resources/tmp/images/person_3.jpg" alt="Image" class="img-fluid rounded-circle mx-auto">
                </figure>
                <h3 class="font-size-20 mb-4 text-black">Robert Steward</h3>

              </div>
            </div>


          </div>

        </div>
      </div>

      <div class="site-section py-5" id="blog-section">
        <div class="container">
          <div class="row justify-content-center text-center mb-5">
            <div class="col-lg-4 mb-5 mb-lg-0">
              <div class="block-heading-1" data-aos="fade-right" data-aos-delay="">
                <h2>Articles</h2>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <div class="mb-5 d-block blog-entry" data-aos="fade-right" data-aos-delay="">
                <a href="${pageContext.request.contextPath }/resources/tmp/single.html" class="blog-thumbnail mb-3 d-block"><img src="images/depot_img_1.jpg" alt="Image" class="img-fluid"></a>
                <div class="blog-excerpt">
                  <span class="d-block text-muted">Apr 19, 2019</span>
                  <h2 class="h4  mb-3"><a href="single.html">Knowing the Difference Is Key to Effective Logistics</a></h2>

                  <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts</p>
                  <p><a href="single.html" class="text-primary">Read More</a></p>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="mb-5 d-block blog-entry" data-aos="fade-right" data-aos-delay="">
                <a href="single.html" class="blog-thumbnail mb-3 d-block"><img src="images/depot_img_2.jpg" alt="Image" class="img-fluid"></a>
                <div class="blog-excerpt">
                  <span class="d-block text-muted">Apr 19, 2019</span>
                  <h2 class="h4  mb-3"><a href="single.html">Knowing the Difference Is Key to Effective Logistics</a></h2>

                  <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts</p>
                  <p><a href="single.html" class="text-primary">Read More</a></p>
                </div>
              </div>
            </div>


          </div>
        </div>
      </div>
    </div>



    <div class="site-section bg-light" id="contact-section">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center mb-5" data-aos="fade-up" data-aos-delay="">
            <div class="block-heading-1">
              <h2>Contact Us</h2>
            </div>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-lg-8 mb-5" data-aos="fade-up" data-aos-delay="100">
            <form action="#" method="post">
              <div class="form-group row">
                <div class="col-md-6 mb-4 mb-lg-0">
                  <input type="text" class="form-control" placeholder="First name">
                </div>
                <div class="col-md-6">
                  <input type="text" class="form-control" placeholder="First name">
                </div>
              </div>

              <div class="form-group row">
                <div class="col-md-12">
                  <input type="text" class="form-control" placeholder="Email address">
                </div>
              </div>

              <div class="form-group row">
                <div class="col-md-12">
                  <textarea name="" id="" class="form-control" placeholder="Write your message." cols="30" rows="10"></textarea>
                </div>
              </div>
              <div class="form-group row">
                <div class="col-md-6 mr-auto">
                  <input type="submit" class="btn btn-block btn-primary text-white py-3 px-5" value="Send Message">
                </div>
              </div>
            </form>
          </div>
          
        </div>
      </div>
    </div>
	</div>
	<c:import url="views/common/footer.jsp" />
  </body>

</html>