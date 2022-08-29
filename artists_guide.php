
<?php include("includes/head.php"); ?>
<!DOCTYPE HTML>
<HTML>
<title> Art Guide</title>
<style type="text/css">

   .head-artists {
          font-size: 30px;
          font-family: "Yu Gothic UI Light";
          color: #2a8048;
          position: absolute;
          left: 50px;
          top: 130px;
          z-index: 19;
          }

        .head-guide{
          font-size: 30px;
          color : #ffffff;
         font-family: "Yu Gothic UI Light";
          position: absolute;
           left:150px;
          top: 130px;
          z-index: 19;
        }

        .hr{
            position:absolute;
            border: 1px solid #2a8048;
            top: 185px;
            width: 1140px;
            left: 49px;

        }
          .guide-background{

          background: url(pictures/sir.jpg) no-repeat fixed;
          background-size: cover;
          box-shadow: 1px 1.732px 2px 0px rgb( 55, 52, 52 );
          position: inherit;
          width: 100%;
          height: 100%;
          z-index: 1;

        }
        .word2{
            position: relative;
            top: 135px;
            left:80px;
            font-family:"Yu Gothic UI Light";
             font-size:18px;
            color: #f2f2f2;
            margin-right: 200px;
            text-align: justify;
        }
        .word1{
            position: relative;
            top:150px;
            left: 50px;
            color: white;
            font-weight: bold;
            font-family:"Yu Gothic UI Light";
             font-size:22px;
        }

</style>
<body class="guide-background">

            <p >
              <h2 class="head-artists">Artists' </h2>
              <h2 class="head-guide">Guide</h2><br> <hr class="hr" style="border-bottom: 2px solid #2a8048;">
           </p>

            <h3 class="word1">Selling your art has never been so easy!</h3>
           <p class="word2">
                        1. Register and upload your artwork on <a style="color:#f2f2f2;" href="home.php">ART_INTEREST.</a><br>
                        2. Ship the artwork to the buyer.<br>
                        3. Receive 80% of the selling price.<br>
            </p>

            <h3 class="word1">How do I apply to exhibit my artwork at ART_INTEREST?</h3>
                <p class="word2">Please click the "Sign Up" link at the top right of this page.</p>

            <h3 class="word1">Can artists living outside of the India apply?</h3>
                <p class="word2">YES. Artists living in and out of India both can apply .</p>

            <h3 class="word1">What does the application entail?</h3>
                 <p class="word2">The application is a simple, two-step process that takes about 5 minutes. The first page is for your contact information and artistic background. The second page asks that you upload three to five sample images of your artwork. Your application will then be reviewed within 2 days.</p>

            <h3 class="word1">Is there an application fee?</h3>
                 <p class="word2">No. Registration is free.</p>

            <h3 class="word1">What kind of artwork do you show?</h3>
                <p class="word2">We exhibit art in every genre, style, size, and media.</p>

            <h3 class="word1">How will you market my art?</h3>
                <p class="word2">We promote our artists' work in a number of ways. We manage a large online advertising campaign and we do a lot of search engine optimization. We have a large email list, and a popular Facebook page.</p>

            <h3 class="word1">What is your commission structure?</h3>
                <p class="word2"> Art_interest Gallery will pay you 80% of the selling price.  Pay for shipping and get your profit!<br><br>

            Example 1:<br>
            You live in Mumbai City.<br>
            A buyer from chandni chowk, Delhi purchased one of your artworks.<br>
            Selling price: Rs. 42,500.<br>
            You keep 80% of this amount: Rs. 34,000. This is the amount you will receive from us.<br>
            You pay the shipping costs: Rs. 1,000. (based on Fedex rates in February 2021 for a 2kg or 4.5lbs weight artwork).<br>
            Your profit: Rs. 33,000.<br><br>


            Example 2:<br>
            You live in Gurgaon City.<br>
            A buyer from Delhi City purchased one of your artworks.<br>
            Selling price: Rs. 75,000.<br>
            You keep 80% of this amount: Rs. 60,000. This is the amount you will receive from us.<br>
            You pay the shipping costs: Rs. 5,000 (based on Fedex rates in February 2021 for a 2kg or 4.5lbs weight artwork).<br>
            Your profit: Rs. 55, 000.</p>


            <h3 class="word1">Who covers the costs of packaging and shipping the artwork to the Buyer’s address?</h3>
                <p class="word2">You (the artist) cover the cost of packaging and shipping the artwork to the Buyer.</p>

            <h3 class="word1" >Where is ART_INTEREST based?</h3>
                <p class="word2">Its primarily a virtual gallery created by the students of JSSATE , BANGALORE.</p>

            <h3 class="word1">If I exhibit my work at ART_INTEREST, may I seek other gallery representation?</h3>
                <p class="word2">Yes.</p>

            <h3 class="word1">How do I know when my artwork is sold? What do I do once it is sold?</h3>
                <p class="word2">Once your art is sold, you will receive an email notifying you of the sale.</p>

            <h3 class="word1">When and how do I get paid for sold artwork?</h3>
                <p class="word2">We pay by Cash on Delivery payment method that transfers 7 day after artwork is delivered to the client.</p>

            <h3 class="word1">Who owns the rights to my artwork once it is sold?</h3>
                <p class="word2">You retain the rights to your art after it is sold.</p>

            <h3 class="word1">Can clients living outside of the India purchase my art on ART_INTEREST?</h3>
                <p class="word2">No! We don't allow international customers.</p>

            <h3 class="word1">How do I submit more art if I am already exhibiting my work at ART_INTEREST?</h3>
                <p class="word2">You can upload your artwork through your artist profile page using a quality JPEG or PNG file. The image must be in focus, true to the color of the art, and at least 900 pixels wide.</p>

            <br><br><br><br><br><br><br><br><br>

        <!--<?php
        $file = fopen("guidelines.txt","r");
        while(! feof($file))
          {
          echo fgets($file);
          }
          fclose($file);
          ?>-->

 </body>
</HTML>
<?php include("includes/footer.php"); ?>