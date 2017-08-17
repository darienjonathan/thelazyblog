# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Blog.create(title: "About the Creation of This Blog",
  summary: "Why did I create this blog?<br>
      Why did I name this blog #thelazyblog?<br>
      What about \".github.io\" in the domain name, instead of \"darienjonathan.com\"?<br>
      And more.<br><br>",
  tag: "personal",
  content: "<p class=\"lead\">Why did I create this blog?</p>
    <div class=\"content\">
      I am someone who likes to read and think (yes, I [over]think a lot). Hence, I like to pour my thoughts, and I think the best way to do it is in the form of writings. As much a I enjoy reading, I do also enjoy writing.<br>
      However, trying to tell them to my friends will be troublesome to them (why do they care to waste their time to listen to me, after all?), and social media is definitely not the place for \"blog-like\" posts (well, tl;dr).<br>
      I also want to learn how to use GitHub (explained later), so I think creating something in my GitHub account will do good to assist my understanding of GitHub.<br>
      So here it is. #thelazyblog.
    </div>
    <p class=\"lead\">Why did I name this blog #thelazyblog?</p>
    <div class=\"content\">
      I call this blog a \"pseudoblog\". This one serves as my temporary blog before the real one comes out. This blog comes out of my laziness, procrastinating too much to study the new and \"cool\" platforms which means the real blog won't be up soon if I didn't decide to do it the lazy way.<br>
      This is really lazy - consists of only very basic elements of a website, and most of the designs are made out of \"ready-to-use\" ingredients.<br>
    </div>
    <p class=\"lead\">So, what about \".github.io\" prefix in the domain name? Why not \"darienjonathan.com\"?</p>
    <div class=\"content\">
      The \".github.io\" prefix in the domain name means I hosted this page in GitHub (again, explained later).<br>
      Creating a domain with \"darienjonathan.com\" with its name means I need to spend my money on them. I definitely don't want to spend any rupiah on something temporary, so I created this page in my GitHub account. <br>
      Creating the account is free. Hence, creating this page is also free. Good guy GitHub.
    </div>  
    <hr>
    <p class=\"lead\">What is GitHub mentioned earlier?</p>
    <div class=\"content\">
      GitHub is, essentially, the leading social media for geeks (re: programming enthusiasts). It is the place to share your projects and to collaborate with others to contribute to projects hosted in GitHub.<br>
      You can put your project's files in your GitHub's repository (what is repository? <a href='https://github.com/darienjonathan/thelazyblog'>This is mine</a>), which should be explained in a readme file and be showcased with a webpage. That way, people will have a better understanding about your project. And if your project is interesting and/or useful, other people in GitHub probably will share their knowledge to contribute to your project, which will hasten the progress of your project. You can also contribute to other people's project.<br>
      From \"branches\" to safely and conveniently manage different features that are still in progress, ability to add comments on each changes made, discussion feature to gain feedbacks about the changes made in the branches, to the slick 'compare and review' feature before merging the branches or initiating discussions, GitHub has all we need to collaborate in a fast and efficient manner.<br>
      Though, to fully understand how to use this social media, you need to learn how to use it, and so do I. There are lots of great features in this platform and I'm still a total noob, so <a href='https://guides.github.com'>guides.github.com</a> will provide much clearer understanding on this platform.
    </div>    
    <p class=\"lead\">This blog is made from?</p>
    <div class=\"content\">
      Super basic ingredients: HTML, CSS, JS (just jQuery), and Foundation 6 (well, a framework, a total token of laziness).<br>
      For the real blog, I'm planning to use MEAN (Mongo, Express, Angular, NodeJS) to create this blog. However, I procrastinated too much so that until now I can't get clear understanding in any of them. I hope I can end this laziness soon and start to learn all of them, so my real blog can be online soon.
    </div>"
      )

Blog.create(title: "Free Will",
  summary: "A(n) (over)thought about how free will works, based on my experience on strolling around DKI Jakarta.<br><br>
    A Christianity-based point of view.",
  tag: "personal",
  content: "<p class=\"lead\">Situation</p>
    <div class=\"content\">
      Yesterday (Fri, 26/8/2016), I came to UI to congratulate my friend who are graduated (congrats guys! See you on top!). After that, I have to rush myself to church (18.15 from Depok, 20.00 at church). With a motorcycle, UI - Church (Depok - Kalideres) takes approximately 100 minutes in normal traffic and normal route. However, on a Friday evening, Jakarta's traffic is, obviously, not \"normal\".<br>

      So I took an extensive look at Google Maps before driving, then I gave a verdict that:
      <ul><li>My usual route, TB Simatupang - Jalan Panjang - Puri, was not passable. MRT construction screws TB Simatupang hard 
        enough to give it a > 3KM red label in Gmaps,</li>
        <li>My 2nd usual route, Pasar Minggu - Arteri Tol Dalam Kota - Daan Mogot, was also not passable. Pasar Minggu looks bleak, Gatot Subroto is never friendly, Slipi was bloody red, and Daan Mogot sucks lately.</li></ul>

      That means, unless I try to risk myself to venture around Pejaten - Kemang - Jalan Panjang - Puri, which I have no knowledge about, I'm sure that I'll take at least 150 minutes (which means I'm gonna be a total scumbag for coming late to church for 45 minutes).<br>
    </div>
    <p class=\"lead\">Two Decisions</p>
    <div class=\"content\">
      <span class=\"bold\">The First Decision:</span> Yeah. <span class=\"bold\">Nothing's gonna stopping me from trying the Pejaten - Kemang route</span>, which looks fairly promising. In the maps, It looks that at the dreaded Pasar Minggu junction, I should just turn left, then go straight until I see Pejaten Vilage.<br>

      I did that, and I was surprised that after the junction, instead of going straight, I must turn left at the, lets say, <span class=\"bold\">Junction A</span> (well, this is not straight bro). Then I saw <span class=\"bold\">Junction B</span>. The logic is, if I turn left again, I would be back at Pasar Minggu (left - left - left = back). So to maintain the straight route, <span class=\"bold\">The Second Decision: I turned right.</span><br>
    </div>
    <p class=\"lead\">Result</p>
    <div class=\"content\">
      And, I was woefully shocked when I saw myself BACK at Pasar Minggu street. Damn. <span class=\"bold underline\">My decisions couldn't save me from me being a scumbag.</span><br>

      So Yeah. I drove my bike.<br>

      <span class=\"bold\">First.</span> The Pasar Minggu street was not as bleak as I thought. The traffic jam have partly subsided since last time I looked at the maps. I passed the street without any major congestion. <span class=\"bold\">Second.</span> Gatot Subroto was (unexpectedly) as friendly as if I am driving at 3 AM. Ez full throttle. <span class=\"bold\">Third.</span> It was true that Slipi was bloody red. But only for car drivers. There were enough space for motorcyclist to rake their speed up to 50 kmh.<br>

      <span class=\"bold\">Fourth.</span> Lol jk. There was no fourth. The other part of Slipi was totally jammed, so I decided to take another risk - trying to craft my way to Daan Mogot via Palmerah (something I have never tried before). Well, this time I managed to find the way. And again, Daan Mogot's traffic jam has totally subsided. In the end, I took 110 minutes - (only) 5 minutes late. <span class=\"bold\">So, moving back to Pasar Minggu was the right thing to do.</span>
    </div>  
    <hr>
    <p class=\"lead\">What I've Learned - Free Will?</p>
    <div class=\"content\">
      It was my <span class=\"bold\">free will</span> that stopped me from taking Pasming route. It was my <span class=\"bold\">free will</span> that allowed me to take the risk. It was also my <span class=\"bold\">free will</span> that allowed me to take the right turn at the Junction B (because of this right turn, I failed to make it to Pejaten).<br>

      I did what I wanted to, but I realize that, sometimes, I am unable to control the consequences of my decisions. I am unable to ensure that my <span class=\"bold\">free will</span> always yields the best result. I didn't even know what were I doing with my <span class=\"bold\">free will</span> (that wrong right turn at Junction B - I didn't realize that the roads before Junction A and after Junction B are curved, so because of that premise, my logic to turn right is entirely flawed).<br>

      image[0]

      My <span class=\"bold\">free will</span> fails my own intentions (I didn't even arrive to Pejaten). But what I thought was totally wrong (taking Pasming route), actually was the right thing to do. I planned my course. I executed my course. My course fails. But it's all for my own good.<br>

      Earlier this week, my small group member asked me about <span class=\"bold\">free will</span> from Proverbs 16:1,9<br><br>

      <p class=\"signature\">
        \"To humans belong the plans of the heart, but from the LORD comes the proper answer of the tongue.\" // \"In their hearts humans plan their course, but the LORD establishes their steps.\"
      </p>

      For me, this experience, and above verses, lays out a good answer of how <span class=\"bold\">free will</span> works. What I learned is that:
      <ul><li>We have our own <span class=\"bold\">free will</span>. And it is a very beautiful part of us as a human, indeed.</li>
        <li>But solely following on our own <span class=\"bold\">free will</span> won't do any good for us, since we don't always 
        know what's good and what's bad for us. Besides, there is also God's will, which is far more superior than our own <span class=\"bold\">free will</span>. I think, It would be quite handy if we use our own <span class=\"bold\">free will</span> to submit ourselves to God's will.</li>
        <li>Regardless of how we use our own <span class=\"bold\">free will</span> (even by ingoring The One who gave us <span class=\"bold\">free will</span>), we will eventually be ended where He wants us to be, and that's the best deal we can have. Deal with that.</li></ul>

      <p class=\"signature\">
        BUT IT IS FREAKING HARD, DON'T WE ALL AGREE?
      </p>
    </div>"
  )
ContentImage.create(url: File.open(Rails.root.join('app', 'assets', 'images', 'freewill', 'map.png')), blog_id: 2)

Blog.create(title: "Kamakura",
  summary: "Exploration of (a little part of) Kamakura<br><br>
          (小さい部分の）鎌倉の探査です。",
  tag: "travel",
  content: "
    <div class=\"content en\" id=\"anchor_en\">
      This is the first time I strolled around the city where I'm living right now: <span class=\"bold\">Kamakura</span>. Kamakura is a small city at the south of Tokyo reachable mainly by JR (Japan Railways - one straight choice is via Yokosuka Line), which takes around 90 minutes.<br><br>

      Was a rival of Kyoto in terms of political, economic, and cultural power before, Now Kamakura is largely known for its plentiness of temples &amp; shrines, with a special giant buddha statue <span class=\"bold\">(鎌倉大仏 - Kamakura daibutsu)</span>, and a big Shinto Shrine <span class=\"bold\">(鶴岡八幡宮 - Tsurugaoka Hachiman-gu)</span>. Other than that, Kamakura has a quite beautiful beach called <span class=\"bold\">Yuigahama Beach (由比ヶ浜海岸)</span>, and a small offshore island called <span class=\"bold\">Enoshima (江ノ島)</span>.<br><br>

      In this writing, I'm gonna share my exploration of the things around its station: Komachi Street and Tsurugaoka Hachiman-gu Shrine.<br><br>
    </div>
    <div class=\"content id\" id=\"anchor_id\">
      Ini adalah kali pertama saya berkeliling di kota tempat saya tinggal: <span class=\"bold\">Kamakura</span>. Kamakura adalah sebuah kota kecil yang terletak di sebelah selatan Tokyo yang dapat dicapai, biasanya, dengan JR (Japan Railways - salah satu cara tercepat adalah melalui Jalur Yokosuka/Yokosuka Line), dengan durasi sekitar 90 menit.<br><br>

      Kamakura dulunya adalah pesaing Kyoto dalam hal kekuatan ekonomi, politik, dan budaya. Sekarang, Kamakura banyak diketahui akan banyaknya kuil, dengan sebuah patung Buddha yang sangat besar <span class=\"bold\">(鎌倉大仏 - Kamakura daibutsu)</span>, serta sebuah kuil besar <span class=\"bold\">(鶴岡八幡宮 - Tsurugaoka Hachiman-gu)</span>. Selain itu, Kamakura memiliki sebuah pantai yang cukup indah bernama <span class=\"bold\">Pantai Yuigahama (由比ヶ浜海岸)</span>, dan pulau kecil bernama <span class=\"bold\">Enoshima (江ノ島)</span>.<br><br>

      Dalam tulisan ini, saya akan membagikan eksplorasi saya di beberapa tempat di sekitar stasiun - Jalan Komachi dan kuil Tsurugaoka Hachiman-gu.<br><br>
    </div>
    <div class=\"content jp\" id=\"anchor_jp\">
      これは私の住んでいる町: <span class=\"bold\">Kamakura (鎌倉)</span> に初めて散歩しました。 鎌倉は小さい町、東京の南にあります。東京からJRで(横須賀線)、90分にどのくらいかかります。<br><br>

      今、たくさんお寺と神社があるので、鎌倉は人気にです。特別な仏教像と多く神社もあります、それぞれ<span class=\"bold\">「鎌倉大仏 - Kamakura daibutsu」</span>と<span class=\"bold\">「鶴岡八幡宮 - Tsurugaoka Hachiman-gu」</span>といいます。そのほか、きれいな海岸があります、<span class=\"bold\">「Yuigahama Beach (由比ヶ浜海岸)」</span>と言います。オフショア島もあります、<span class=\"bold\">「Enoshima (江ノ島)」</span>と言います。<br><br>

      このブログポストに内容、私は鎌倉駅周り（小町通りと鶴岡八幡宮）の探査をシェアします。<br><br>
    </div>

    header[0]

    <div class=\"content en\">
      <span class=\"bold\">Komachi Street</span> is a small road that connects Kamakura Station to Tsurugaoka Hachiman-gu Shrine. Because of its convenience, Komachi Street quickly becomes a tourist attraction. <br><br>

      The main attraction for that streets, is a heavenly thing we call <span class=\"bold\">DESSERTS.</span><br>AND YES. I DON'T HAVE ANY PHOTO OF THEM BECAUSE I CAN'T GET DESSERT TO THE TOP OF MY PRIORITY TO HAVE MY MONEY SPENT FOR IT. No matter how much do I want them. I'll post the photos of those mouthwatering desserts once I have the money to buy them.<br>
      I think I'm okay to spend 3000円+ (~IDR 360k) just to savour everything I want there.<br><br>

      What do they sell? Lots of pancakes. from waffles, fish-shaped pancake, and usual pancakes. Others\" Cakes, Ice Creams (omg), Kamakura Sausage (big size, delicious-looking pork meat, uh). Other than that, usual Japanese cuisines are also there. However, its snacks and desserts which makes this street full-packed with people.<br><br>

      Yes, for everyone who loves desserts, this place is a heaven. The only thing which makes this place is not as heavenly is: the street is soo crowded which makes queueing, or even just walking around, difficult. Thankfully in here, crowded does not equal to chaos. Everything is still in order. So yeah, a super recommended place to go to, especially that after you go through this street, the second point of interest is waiting: Tsurugaoka Hachiman-gu Shrine.
    </div>
    <div class=\"content id\">
      <span class=\"bold\">Jalan Komachi</span> adalah sebuah jalan kecil yang menghubungkan Stasiun Kamakura dan kuil Tsurugaoka Hachiman-gu. Karena kemudahan aksesnya dari stasiun dan menuju Kuil Tsurugaoka Hachiman-gu, Jalan Komachi segera menjadi atraksi bagi para turis.<br><br>

      Daya tarik utama bagi jalan tersebut, yaitu anugerah dari surga yang disebut <span class=\"bold\">MAKANAN PENCUCI MULUT AKA DESSERTS.</span><br>Dan ya, saya tidak memiliki satu foto pun dari mereka karena saya tidak mampu menjadikan makanan pencuci mulut menjadi prioritas yang tinggi dalam rencana pengeluaran saya, tidak peduli seberapapun saya menginginkannya :( Tunggu punya uang, fotonya akan segara nongol di media sosial saya.<br>
      3000+ Yen (Rp. 360.000+) rasanya cukup untuk menikmati seluruh jajanan yang ada di jalan tersebut.<br><br>

      Yang ada di situ? Sangat banyak pancakes - dari waffles, pancake berbentuk ikan, dan pancake biasa. Kue-kue lain, Es Krim (omg!), Sosis Asli Kamakura (Ukuran besar, daging babi melimpah, ntap), dan lain-lain. Selain itu, makanan Jepang tradisional juga tersedia di tempat ini. Namun, snack dan dessert nya lah yang, tidak diragukan lagi, mantap.<br><br>

      Ya, untuk setiap orang yang menyukai desserts, tempat ini bagaikan surga. Satu-satunya hal yang membuat tempat ini tidak terlalu terasa surga adalah: tempat ini dipenuhi terlalu banyak orang sehingga mengantri, atau bahkan sekedar berjalan-jalan, menjadi agak sulit. Untungnya, di sini (tidak seperti di Indonesia), Ramai tidak sama dengan tidak teratur. Keteraturan tetap terjaga di sini.

      Kesimpulannya, tempat ini recommended banget buat didatengin. Apalagi, setelah melalui jalan ini, tempat tujuan kedua sudah menunggu - Kuil Tsurugaoka Hachiman-gu.
    </div>
    <div class=\"content jp\">
      <span class=\"bold\">小町通り</span>は鎌倉駅と鶴岡八幡宮をつなぐ小さい通りです。便利ですから、小町通りはツーリストアトラクションにとってすぐ人気にです。 <br><br>

      の町の主要なアトラクションは、すごくよいこと：<span class=\"bold\">デザート</span>です。私はそのデザートはすごく欲しいでも、お金がないので、私はそのデザートはすべてに食べられません。とてもがっかりしました。<br><br>そのすべてのデザートに三百円 (三十六万ルピア）を使うのが大丈夫だと思います。.<br><br>

      どんなお菓子が売れられていますか。色々なパンケーキです。ワッフルとか、魚形のパンケーキとか、普通のパンケーキがあります。他の食べ物はアイスクリーム（omg!）とか、鎌倉ソーセージとか、普通の日本料理もあります。でも、お菓子とデザートなら小町通りに大勢人がいます。<br><br>

      本当に、デザートが好きな人に、小町通りは天国です。この通りはほとんど天国じゃなくなることは一つだけこと。それは：人がたくさんすぎます。それで、並んでいるとか、ぶらぶらするとか、これは難しいです。でも、よかったことは、込んでいることは混沌とは違います。すべてのことはまだ整然とした。 そう、小町通りはおすすめです。特に、小町通りのあと、次のアトラクションはすぐあります：鶴岡八幡宮。
    </div>

    header[1]

    <div class=\"content en\">
      <span class=\"bold\">Tsurugaoka Hachiman-gu (鶴岡八幡宮)</span> is a big Shinto Shrine located at the center of the city, which the main access is from Kamakura's main street (header's picture), or from Komachi Street.<br><br>

      Super big. 1.8km<sup>2</sup> (Wikipedia), lots of museums, lots of buildings, ponds, and most importantly, is surrounded by beautiful trees and plants. It is used to host important festivals, and holds a great cultural value for Kamakura City.<br><br>

      As usual, there's a Torii (IDN: gapura (?)) at the front gate of the Shrine. After that, there's a field where snack stalls welcome us. Behind the field, there's a sub-shrine. When I came, there's a marriage ceremony commencing there. Quite interesting! After that, there's a big staircase which leads to the real shrine.<br><br>

      I didn't spend more than 5 minute at the shrine itself - nothing to be seen except people throwing coins to a place (tradition?). Or I'm missing something? I don't know. My friend said that we can take a fortune telling service for the cost of 100円 there.<br><br>Instead, I ventured around the complex and saw lots of beautiful trees, which leaves are turning red, due to the autumn season here. Small shrines, ponds full of doves, small rivers, everywhere is surrounded by beauty. For the doves, I saw lots of locals bring bird foods to attract them. It's exciting to be surrounded by doves, except when they start to overwhelm you by their numbers. lol.<br><br>

      I ended my strolling there by buying a portion of roasted chicken skin (500円). Its delicious! A local beside me repeatedly said \"Mmm! Oishii (Delicious)!\". After that, I bought a grape candy stick - a grape (or apple) coated by grape (or apple)-taste candy coating (100円 for 1, 150円 for 2).<br><br>

      Below are some pictures I took (I can't put too many here or this page will eat your data plan). <a href=\"#skip\" style=\"color:blue; text-decoration: underline;\">Skip Photos</a><br><br>
    </div>
    <div class=\"content id\">
      <span class=\"bold\">Tsurugaoka Hachiman-gu (鶴岡八幡宮)</span> adalah sebuah kuil Shinto besar yang terletak pada pusat kota, yang akses utamanya adalah jalan utama Kamakura (foto bagian atas laman ini), atau dari Jalan Komachi.<br><br>

      Sangat besar.<sup>2</sup> (Wikipedia), banyak museum, banyak bangunan, kolam, dan yang paling penting, dikelilingi banyak tanaman dan pohon yang sangat indah. Biasanya tempat ini digunakan untuk mengadakan festival-festival penting. Tempat ini adalah pusat budaya kota Kamakura.<br><br>

      Seperti biasa, pada pintu masuk terdapat Torii (gapura (?)) Setelah itu, ada sebuah lapangan dimana tempat beberapa stand makanan menyambut saya. Setelah lapangan tersebut, ada mini-kuil, yang pada waktu kedatangan saya, ada, sedang ada upacara pernikahan di mini-kuil tersebut. Menarik! Apalagi kimono yang dipakai pengantin wanitanya… Indah. Sangat indah. Setelah itu, akan ada tangga besar yang menuju ke kuil utamanya.<br><br>

      Tidak sampai 5 menit saya di situ. Saya juga tidak tahu mau ngapain di situ - tidak ada yang bisa dilihat kecuali orang-orang yang melempar koin ke suatu kotak besar (tradisi?). Atau mungkin saya melewatkan sesuatu? Nggak tahu deh. Kalau kata teman saya, kita bisa mencoba ramalan instan (lucu-lucuan) dengan harga 100 Yen.<br><br>Jadinya, saya berkeliling kompleks kuil tersebut dan menikmati pemandangan - pohon-pohon indah yang daunnya berubah menjadi kuning/merah karena musim gugur; mini-kuil lain, kolam penuh dengan burung merpati, sungai kecil. Sebuah kata untuk mendeskripsikan tempat ini: keindahan. Untuk burung merpatinya, banyak orang-orang lokal membawa makanan untuk menarik burung-burung tersebut. Awalnya sih seru, sampai makanan tersebut menarik perhatian terlalu banyak burung dan memusingkan si pembawa makanan. lol.<br><br>

      Saya mengakhiri jalan-jalan saya dengan membeli seporsi kulit ayam panggang (500 Yen). Wuenak tenan. Orang lokal di sebelah saya berulang-ulang mengatakan \"Mmm! Oishii (Enak)!”. Setelah itu, saya membeli permen anggur - anggur (atau apel) dilapisi lapisan permen rasa anggur (atau apel) (100 Yen untuk 1, 150 Yen untuk 2).<br><br>

      Dibawah ini adalah beberapa foto yang saya ambil (nggak bisa taruh terlalu banyak di sini - atau paket data anda akan habis karena blog ini). <a href=\"#skip\" style=\"color:blue; text-decoration: underline;\">Lewati Foto</a><br><br>
    </div>
    <div class=\"content jp\">
      <span class=\"bold\">Tsurugaoka Hachiman-gu (鶴岡八幡宮)</span> は大きい神社、鎌倉の中央にあります。鶴岡八幡宮の主要なアクセスは鎌倉の主要な道（ヘッダーの写真）や小町通りなど。<br><br>

      すごくおおきい。 1.8km<sup>2</sup> (Wikipedia), すごく大きい。たくさんビル、小さい神社、池があります。特に、周りにたくさんきれいな木と植物があります。この神社は大切なお祭りを行うに使って、鎌倉の文化価値を代表しています。<br><br>

      いつものように、神社正門に鳥居があります。その後ろ、フィールドにお菓子店があります。フィールドの後ろに、小さい神社があります。来る時、この神社で結婚式があります。面白い！その後ろ、本当な神社に先立つ階段があります。<br><br>

      私はこの神社に五分以下を過ごしますーコインを投げる人（文化？）以外、何も見られません。または、私は何かをスキップしましたか。わかりません。私の友達によると、おみくじがあります―値段は百円です。<br><br>代わりに、私は周りに散歩しました。そして、今は秋なので、紅葉があるきれいな木がたくさんあります。小さい神社、川、鳩がいっぱい池、どこでもはきれいです。鳩を誘致するのために、たくさん本国人は餌をもって来ます。鳩に囲まれたことは面白いですが、鳩がたくさんあるすぎだったら、ちょっと迷惑になります。ははは<br><br>

      散歩することは焼き鶏の皮を買う（五百円）のに終わりました。美味しいです！私の隣本国人は再三「美味しい！」と言います。その後、私は葡萄飴玉（葡萄か林檎の飴、葡萄か林檎の味にコーティングされた；一つは百円、二つは百五十円）を買いました。<br><br>

      次はいくつか撮った写真です。（私はたくさんすぎる写真が置けません。または、このページは大きくデータプランを取れます）。 <a href=\"#skip\" style=\"color:blue; text-decoration: underline;\">写真をスキップ</a><br><br>
    </div>

      image[0]
      image[1]
      image[2]
      image[3]

    <span id=\"skip\">
    <div class=\"content en\">
      <span class=\"lead\">Next Part? Or Probably Another Blogpost?</span><br><br>
      I'm planning to visit the other side of Kamakura soon. However, other than that, due to limits in my time and money, unfortunately I'm not able to act like a tourist, visit every places in Japan, and buy everything I want (I would like to do so, too..).<br><br>

      However, any post regarding to my Japan life will be announced as soon as possible in my social media accounts!
    </div>
    <div class=\"content id\">
      <span class=\"lead\">Bagian selanjutnya? Atau mungkin post lain?</span><br><br>
      Saya berencana untuk mengunjungi bagian lain dari Kamakura secepatnya. Namun, untuk tempat lain, karena uang dan waktu yang... tidak sebanyak turis (?) saya tidak bisa mengunjungi banyak tempat dan membeli banyak barang/makanan (Sebenernya pengen juga sih, tapi mau gimana lagi...)<br><br>

      Namun, setiap post terkait kehidupan saya di Jepang akan segera dipost di media sosial saya!
    </div>
    <div class=\"content jp\">
      <span class=\"lead\">次の部分? 他のブログポストかも？</span><br><br>
      私は鎌倉の他のところを寄る予定があります。でも、私は時間とお金があまりないので、私はすべての日本のところが行くことができません。たくさん日本物も買うことができません（私はほしいですけど。。。）<br><br>

      しかし、私の日本生活についてのブログポストがあったら、ソーシャルメディアですぐ知らせます。
    </div>
  ")
HeaderImage.create(title: true, url: File.open(Rails.root.join('app', 'assets', 'images', 'kamakura', 'header.jpg')), blog_id: 3, caption: "KAMAKURA<br>鎌倉")
HeaderImage.create(url: File.open(Rails.root.join('app', 'assets', 'images', 'kamakura', 'komachi.jpg')), blog_id: 3, caption: "KOMACHI STREET")
HeaderImage.create(url: File.open(Rails.root.join('app', 'assets', 'images', 'kamakura', 'tsurugaoka_hachimangu-1.jpg')), blog_id: 3, caption: "TSURUGAOKA HACHIMANGU")
ContentImage.create(url: File.open(Rails.root.join('app', 'assets', 'images', 'kamakura', 'tsurugaoka_hachimangu-2.jpg')), blog_id: 3)
ContentImage.create(url: File.open(Rails.root.join('app', 'assets', 'images', 'kamakura', 'tsurugaoka_hachimangu-3.jpg')), blog_id: 3)
ContentImage.create(url: File.open(Rails.root.join('app', 'assets', 'images', 'kamakura', 'tsurugaoka_hachimangu-4.jpg')), blog_id: 3)
ContentImage.create(url: File.open(Rails.root.join('app', 'assets', 'images', 'kamakura', 'tsurugaoka_hachimangu-5.jpg')), blog_id: 3)

Blog.create(title: "My 2016 Recap",
  summary: "A brief summary about how 2016 stood for me.<br>
        A point of view about how GPA stands at the working life.<br>",
  tag: "personal",
  content: "
    <div class=\"content en\">
      2016, for me personally, is when I perceived how powerless I am - with a series of failures and pessimistic events - and how God covered it all. <br><br>

      Early 2016, it was about my graduation. The main point about that event is my cumulative GPA. until now, considering my performance at college, I still can't figure out where did that GPA came, so yeah. Thanks God.<br><br>


      Soon after that, it was time to prove that the 1) number matters. 2) I don't take it for granted. The result was, I got rejected in every company I want to work in. I think, the main problem is that I tried to find a job which is not for my major... But yeah. GPA doesn't really matter. However, through those failures I got the chance to refine my interview skills, my resume, and most importantly, my portofolio.<br><br>

      Then all of them - GPA, interview skills, and portofolio - suddenly mattered, a lot. They successfully landed me a big job.
    </div>
    <div class=\"content jp\">
      2016年には、私によって、立て続けの失敗したことがあったに、私は:<br>
      1.) 力が全然持ってないこと<br>
      2.) 神様の救いが気づきました。
      <br><br>

      2016年の最初は、私の卒業についてです。主要な要旨私のGPAです。今まで、大学で私のパフォーマンスをおもっているとき、私のGPAはどこから来たのはわかりません。じゃ、神様に感謝しました。<br><br>

      その後、二つことがすぐ証明するのが必要だと思いました：<br>
      1.) GPAは大切<br>
      2.) 私は受けたGPAに感謝しないことはありません。<br><br>
      結果は、私は働きたいすべての会社に断ってしまいました。主要な問題は私は私の専門じゃないの仕事を探してみると思いますが。。。GPAは大事じゃない。でも、失敗した事によって、私は面接能力、履歴書、とポートフォリオを上達することができます。
      <br><br>
      その後、GPA、面接能力、とポートフォリオ、すべては急に大事になります。本当。彼らは私に就職されました。
    </div>
    <hr>
    <span id=\"skip\"></span>

    <div class=\"content en\">
      Between that \"resume spreading period\" and the time after (lets call it the \"serving\" time) until I started my work, I spent majority of my time to assist the Christian community where I'm in: PO FT, PO UI and Perkantas. Partly because I had a promise to God to fullfill, partly because I have nothing to do anyway, partly because I can't simply turn down any request to help - why should I turn down such honor? <br><br>

      Lots, lots of important things happened in the \"serving\" time. Aside of the time when I got landed at a job, this is arguably the most important time for me in 2016.<br><br>

      2016 events made me think, alot, about how the so called faith lurks in our lives. Why we call Jesus as God even He never states Himself that He is God (but after quite a search, I can safely presume that He is God, and how the concept of Trinity is the only logical concept to safely explain our non-tyranny God. Believe me, seriously. One who does not believe this concept and want to talk to me about this, feel free to contact me). That true love is too ridiculous to be done, yet there's no other way to live as a Christians but to exert that true love. That being a Christian itself is an impossibility to be done properly.<br><br>

      However, I believe those thoughts are the signs that I'm in the right way in my spiritual journey as a stupid Christian trying to be better day by day.

    </div>
    <div class=\"content jp\">
      「履歴書をどこでも渡す」期間の間とその後期間(サービス時間と言うです)から、仕事を始まる時まで、私は、私はクリスト教組織（学部のグループ、大学のグループ、と本社）を手伝うために大分の時間を過ごしました。部分的に、神様に約束がありますから。部分的に、何かすることがないから。部分的に、どうしてそんな名誉を断った？<br><br>

      「サービスの期間」に、すごくたくさん大事なことが起こした。この期間は、就職のほか、たぶん私に2016年の一番大事な期間です。<br><br>

      2016年の起こったイベントは私に考えさせるようになりました。信仰は現実に関係があるかどうか、どうしてイエス様は「神様」をよばれました。イエス様は、自分自身に「神様」を呼ぶことはありませんでした　(でも、そのことを調べた後、イエス様は神様。そのことは、私は信じます。私たちの圧政者でわありませんの神様は、三位一体は唯一論理的な概念の説明です。　私に信じてください！)、純粋な愛は無理。でも、クリスト教の人は、その純粋な愛を発揮しなければなりません。クリスト教のことをちゃんとすることは無理です。<br><br>

      しかし、その考えは、いい宗教上の旅のためですから、いいと思います。
    </div>

    <center>
      <blockquote class=\"instagram-media\" data-instgrm-captioned data-instgrm-version=\"7\" style=\" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);\"><div style=\"padding:8px;\"> <div style=\" background:#F8F8F8; line-height:0; margin-top:40px; padding:37.5% 0; text-align:center; width:100%;\"> <div style=\" background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAMUExURczMzPf399fX1+bm5mzY9AMAAADiSURBVDjLvZXbEsMgCES5/P8/t9FuRVCRmU73JWlzosgSIIZURCjo/ad+EQJJB4Hv8BFt+IDpQoCx1wjOSBFhh2XssxEIYn3ulI/6MNReE07UIWJEv8UEOWDS88LY97kqyTliJKKtuYBbruAyVh5wOHiXmpi5we58Ek028czwyuQdLKPG1Bkb4NnM+VeAnfHqn1k4+GPT6uGQcvu2h2OVuIf/gWUFyy8OWEpdyZSa3aVCqpVoVvzZZ2VTnn2wU8qzVjDDetO90GSy9mVLqtgYSy231MxrY6I2gGqjrTY0L8fxCxfCBbhWrsYYAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-22px; width:44px;\"></div></div> <p style=\" margin:8px 0 0 0; padding:0 4px;\"> <a href=\"https://www.instagram.com/p/BE5thubGGPf/\" style=\" color:#000; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none; word-wrap:break-word;\" target=\"_blank\"></a></p> </div></blockquote> <script async defer src=\"https://platform.instagram.com/en_US/embeds.js\"></script></center>
      
    <div class=\"content en\">
      Then, the work started. Then I realized I have made a crazy decision back then. I didn't have any required skills to work here. The pressure to fill out that enormous skill gap is there, and it's immense (at least for me). <br><br>

      So, I think my most important 2017 resolution is to prove, in such a way, that my GPA is not a hoax.<br><br>

      Our GPA, resume, and portofolio can easily trick us to have we think that we have the real skill to achieve them, when most of the time, it's because of the \"kindhearted\" lecturers and assistants, certificates that are not as prestigious as they look (because the event were actually underwhelming), portofolio which were polished in such ways that the actual holes in our works can't be seen there, and a finally a total hoax resume that contains all those misleading achievements. <br><br>

      In my opinion, what is needed to survive is pure skill (both technical and soft) and the ability to climb the learning curve, anyway, not GPA, resume, or their fellows (except if they properly reflect our skills). <br><br>

      <span class=\"bold\">Don't get me wrong - GPA and his friends are VERY IMPORTANT TO GET THE JOB IN THE FIRST PLACE. Why should you survive in the job if you can't even get the job?</span>
    </div>
    <div class=\"content jp\">
      それから、仕事が始まりました。すぐ、クレージーな決定を決めたのが気づきました。ちゃんと働くために、日本語ができなくて、プログラミング能力も足りないとおもいます。絶大圧力がある（私にとって）。<br><br>

      私の2017年の一番大切な決心は、私のGPAは偽物じゃないのを証明すると思います。<br><br>

      たちのGPA、履歴書、とポートフォリオは私たちに簡単に騙すことができます。私たちは本物の能力があると思いますが、<br>
      1.) だいたい、いいGPAは優しい 講師から（その講師は、いい結果を簡単にあげること）。<br>
      2.) 証書は、いいイベントからじゃありません。よさそうなだけですが、本当にいいはない。それで、その証書はよさそうなだけ。<br>
      3.) ポートフォリオは、実はよくない。でも、ポートフォリオの内容に、私たちのしたことは磨かれて書いたので、よくないことは見えなくなります。<br>
      それで、私たちは詐欺な履歴書をできました。
      <br><br>

      私の意見によると、ちゃんと働くために、必要なことは能力（両方技術とソフト）と学習曲線を登ることです。GPAや履歴書などじゃありません。除いて、そのものは本物です。その場合は大丈夫です。
      散歩することは焼き鶏の皮を買う（五百円）のに終わりました。美味しいです！私の隣本国人は再三「美味しい！」と言います。その後、私は葡萄飴玉（葡萄か林檎の飴、葡萄か林檎の味にコーティングされた；一つは百円、二つは百五十円）を買いました。<br><br>

      <span class=\"bold\">違うことをかんがえないでください。就職のために、GPAや履歴書やポートフォリオなどはすごく大切なことです。就職ができなかったら、どうしてちゃんと働くことをかんがえますか？</span>
    </div>
    <hr>
    <span id=\"skip\" class=\"fb-quote\"></span>
    <div class=\"content en\">
      Lots of people know where I am working now. Some know my GPA.<br><br>

      But only a few knew about my spiritual struggles throughout 2016.<br><br>

      And close to no one knew about one of the most highlighted time of my last year - how I also spent my time to do what 20+ males usually do, the stories within, and the failures that plagued the story.<br><br>
    </div>
    <div class=\"content jp\">
      たくさん人は私の働いているところはしています。いくつか人私のGPAは知っています。<br><br>

      でも、少しだけ、私の宗教上の問題がわかります。<br><br>

      ほとんどいないは、私の一番大切な期間：20年齢以上な男性を普通にしていること、そのことの話し、とその話しを壊れた失敗です。<br><br>
    </div>
    <p class=\"signature content en\">
      Hello 2017. Hello God. Hello World. Hello unreasonable learning curve (packed with great opportunities). Hello unconditional providence. <br>
      Let my life be a story about my powerlessness and God's endless providence. 
    </p>
    <p class=\"signature content jp\">
      2017年、神様、世界、不合理な学習曲線（その内容にいい機会もあります）、無条件なすくい、よいお年を。<br>
      私の生活の話は、私の力についてじゃありません。この話は、私の全然持っていない力について。そして、神様の無限な救いについてです。 
    </p>
  ")
HeaderImage.create(title: true, url: File.open(Rails.root.join('app', 'assets', 'images', 'my_2016_recap', 'header.jpg')), blog_id: 4, caption: "My 2016 Recap")

Blog.create(title: "Imagination",
  summary: "Just watched Avatar - The Legend of Aang.<br>
        And somehow my mind is bended by that cartoon.<br>
        My imagination went wild.",
  tag: "personal",
  content: "
    <span style=\"font-size: 10px; text-align: center\">*header picture is taken from http://www.kanhangadvartha.com/data/out/102/IMG_1006662.png</span>
    
    <div class=\"content\">
      Kemarin, gue menghabiskan salah satu weekend dengan cara yang tidak produktif. Dari bangun sampai tidur lagi, gue literally cuman nonton sebuah kartun lama berjudul Avatar: The Last Airbender (diselingi 3 game dota dan 1 game CS). Rasanya sekitar 25 episode gw lahap hari itu (25 x 20 = 8 jam 20 menit).<br><br>

      Kartun itu bercerita tentang seseorang yang bisa melakukan element-bending, yakni kemampuan untuk memanipulasi elemen2 yang ada di sekitarnya (air, api, angin, tanah - dalam beberapa kasus: darah, pasir, besi, dll), dan perjalanannya bersama teman2nya untuk bisa menguasai teknik manipulasi seluruh elemen tersebut.<br><br>


      I'm amazed to see how I was addicted to that cartoon. Memang tema kartun itu super gue banget. You know, itulah imajinasi banyak sekali anak laki2: bisa jadi super saiya, keluarin ice beam/thunderbolt/fireblast, teleport, terbang, dan sebagainya - at least itu imajinasi yang selalu terpendam di kepala gue, dan imajinasi itu tidak akan mati, setidaknya tidak dalam waktu dekat.<br><br>

      Sebenernya gue tau kartun ini udah ada sejak 2004, tapi entah kenapa gue baru bener2 nonton sekarang.
    </div>

    <hr>
    <span id=\"skip\"></span>

    <div class=\"content\">
      Dan ya. Gue mengerti kenapa kartun ini mendapatkan reception \"critically acclaimed\". Diluar genre nya yg emg gw banget, menurut gue plot ceritanya sangat bagus. Setiap episode menjelaskan tentang masing2 karakter, latar belakang, dan relasi antar mereka. Konflik2 yang terjadi, resolusinya, dll. Meskipun memang kadang2 plot twistnya agak mudah ditebak, I don't really mind. I'm more than happy to watch battles featuring whirlwinds dancing with earthquakes, icewalls, thunderbolts, and fireblasts spiced with some emotional love stories and conflicts here and there.<br><br>

      Kepala gue penuh imajinasi - andai gue bisa airbending, punya kawan2 yang bisa bending elemennya masing2 dan berkelana keliling dunia, bahkan (seperti yang di dalam film itu) punya cewek yg super compassionate dan bisa waterbending dalam taraf legendaris (omg I love icebeams!), kemudian berpetualang dan melakukan hal2 luar biasa bersama dengan grup para element-benders itu.<br><br>

      Tapi, malamnya gue menyadari. Di hari itu, gue jadi males cuci piring (eventhough akhirnya gue cuci), lupa masukin baju ke mesin cuci, didn't even look to my phone to reply msgs, and so on. Untungnya masih tetep masak bwt makan, saat teduh dan jam doa gak ke skip. But still, It didn't feel right.
    </div>
      
    <div class=\"content\">
      Gue tenggelam dalam kartun itu. Tepatnya, dalam imajinasi yang terinduksi kembali oleh kartun itu dan kemudian menggelora menguasai pikiran gue. Pikiran gue terpenuhi oleh imajinasi2 yang tidak realistis - dan gue kehilangan kontrol atas pikiran gue sendiri.<br><br>

      Akhirnya, gue (sepertinya) menghabiskan satu hari dengan tidak berguna, dan kalau gue tidak menyadari ini, gue bisa2 terus tenggelam dalam imajinasi ini dan tidak bisa berpikir jernih lagi terkait dunia nyata (pekerjaan, relasi dengan org, dsb nya). I think I'm being bended by the cartoon which story is about bending! Thats quite ironic.
    </div>
    <hr>
    <div class=\"content\">
      Menurut gue, manusia adalah makhluk yang unik karena manusia mampu berimajinasi - memikirkan berbagai hal, baik itu realistis ataupun gila - dan menikmati permainan imajinasi itu di dalam pikiran kita.<br><br>

      Melalui imajinasi, muncul pemikiran2 yang out of the box, yang jika dikombinasikan dengan intelegensi dan attitude, dapat menghasilkan sesuatu yang sangat luar biasa. Rasanya banyak sekali penemuan2/hal2 luar biasa di bumi ini yang berasal dari imajinasi, yang mungkin bentuknya seperti: \"andaikan kalau sumber terang gk perlu bergantung sama minyak\", \"andaikan manusia bisa terbang\", \"andaikan LDR gak perlu bergantung sama surat dan kantor pos\", dan sebagainya.<br><br>

      Namun, jika kita pada akhirnya terkontrol oleh imajinasi kita, yakni utopia yang tampaknya jauh lebih indah daripada kenyataan, dan instead of berusaha merealisasikannya, kita malah terjebak dalam \"perasaan nyaman\" di ranah imajinasi kita tersebut.<br><br>

      Akibatnya, bisa jadi kita akan memiliki sudut pandang dan ekspektasi yang salah akan dunia nyata (misalnya - cewek/cowok sempurna ala kdrama/anime, kemampuan spellcasting/kekuatan superhero, matchmaking ala ftv, hidup gampang ala apapun, dll), karena otak kita sudah berada dibawah kontrol imajinasi yang apparently nggak sesuai kenyataan.
    </div>
    <p class=\"signature content\">
      Imajinasi adalah sebuah hal yang indah, dan imajinasi yang terinduksi bisa menjadi sangat kuat dan memberikan pengaruh yang signifikan bagi pemiliknya. Pertanyaannya, pengaruh apa yang akan dihasilkan dari imajinasi itu? Tergantung bagaimana kita menyikapinya.
    </div>
  ")
HeaderImage.create(title: true, url: File.open(Rails.root.join('app', 'assets', 'images', 'imagination', 'header.jpg')), blog_id: 5, caption: "IMAGINATION: Make Use of it, or be Drowned by It")

Blog.create(title: "Hardships",
  summary: "Where is the improvement?<br>
          The learning curve seems nearly perpendicular.<br>",
  tag: "personal",
  content: "
     <div class=\"content\">
      <br>Nggak kok, linknya gak error. Emang ini blognya. Sengaja aja pake header image tulisannya \"error\" he.he.<br><br>
      Karena, tulisan di image di atas itu cukup mendeskripsikan apa yang bakal gw tulis di sini.
      Kalau teman2 bisa liat tulisan itu dengan lengkap di HP temen2 masing2, thank God.
      Kalau nggak (tulisannya kepotong di sebelah kiri/kanan), Mohon maaf. Tapi, itu mungkin bs menggambarkan bahwa, mungkin, programming gak segampang kelihatannya. Ketika bikin blog ini, gw menghabiskan 10 menit hanya supaya tulisan merah itu bisa dibaca oleh teman2 yang jenis HP nya bermacam2.
      <br><br>

      Sebelum gw datang ke Jepang, secara akademik dan kognitif gw menikmati kehidupan yang cukup indah. Puji Tuhan gw nggak terlalu dihantam kesulitan selama menempuh pendidikan, bahkan bisa dibilang cukup berhasil.
      Selama di universitas pun, dikasih kesempatan magang, freelance, jadi aslab, dan bergabung di kepanitiaan bersama dosen.
    </div>

    <div class=\"signature\">
      Oh look, I'm so ready to face the working life and I can't wait to nail them all!<br>
      .<br>
      .<br>
      .<br>
      BAM. I've never been soooo wrong.
    </div>

    <div class=\"content\">
      Sekarang, gue bisa dengan yakin mengatakan bahwa gue adalah karyawan dengan skill paling rendah, setidaknya di tim gue (server-side engineer). Gue nggak bisa bandingin sama karyawan di divisi lain sih, karena keahlian dan jobdesc masing2 divisi berbeda kan. Tapi toh gue juga sama sekali nggak punya kemampuan utk pindah dan bekerja dengan baik di divisi lain.<br><br>
    </div>

    <hr>
    <p class=\"lead\">Karyawan dengan Skill Paling Rendah?</p>

    <div class=\"content\">
      Lemme start with this picture.<br><br>
      image[0]

      <br>Ngertilah gue yang mana. Gue pernah dalam suatu waktu bener2 disuruh tulis ulang semua yang gue tulis, karena ya itu. kode gue jalan, tapi bener2 jelek. Kayak gini lah gambaran tulisan gw kira2.<br><br>
      image[1]

      The moment of realization bahwa skill gw memang bermasalah adalah, pernah suatu hari minggu gw kyk pengen ngerjain tugas yang harusnya kecil banget, jd kayak \"udahlah kerjain aja sebelum tidur\". Pas gw mulai kerjain, gw mulai terngiang2 sama 2 gambar di atas, terus jd mikir \"ini cara tulisnya yg bener gimana biar nggak disemprot lagi?\".
      Ternyata benar. Gw nggak tau gimana cara ngerjain tugas sesimpel ini. In the end, dari jam 12 sampai jam 2 pagi gw hanya menulis DUA BARIS, yang pada akhirnya ternyata SALAH JUGA.
    </div>

    <p class=\"signature\">Sigh.</p>
      
    <div class=\"content\">
      Akhirnya, 50% kerjaan gw (yang di \"ini nggak bagus\" in berkali2) di-takeover sama senior itu, dan dalam seminggu tetiba gw melihat sekumpulan kode yang bener2 ditulis dengan indah sama senior gw.... But I have no freaking idea how to write something like that. Dan beberapa pembicaraan dan pembelajaran terkait kode itu memberikan sebuah kesimpulan: gue nggak ngerti dasar2 bahasa pemrograman (sebut saja Ruby) yang digunakan di kantor itu.<br><br>

      Sejak saat itu, setiap kali gue mau menulis program dengan Ruby, gue terpaksa mengganggu senior gue untuk memastikan bahwa gue tidak salah menulis. Dan benar saja, setiap kali gue menunjukkan hasil tulisan gue, jawabannya kira2 sama: <span class=\"bold\">\"これは全然駄目\" \"これはよくない\"</span> (korewa zenzen dame - ini bener2 ngaco // korewa yokunai - ini gak bagus), dan akhirnya sebagian di antaranya akhirnya di takeover sama si senior.<br><br>

      Kemudian, waktu berlanjut, masih di proyek yang sama, gue diberikan dua tugas di luar si Ruby tadi, umumnya untuk memastikan bahwa setiap kode dan infrastruktur berjalan dengan baik. 2 minggu berjalan. sama sekali gagal. Bahkan salah satu tugasnya akhirnya diselesaikan sama senior gua hanya dalam waktu beberapa jam.<br>
      Dan seringkali ketika diberikan tugas2, gue hanya bisa bengong dan berpikir dalam hati \"ini gimana cara ngerjainnya?! I have no freaking idea at all!!\" sebelum akhirnya dikasih hint sama si senior. Sudah dikasih hint pun tetap saja: sudah lama ngerjainnya, salah lagi.<br><br>
    
      Sekarang, proyeknya sudah hampir selesai. Dari pengalaman bergabung di proyek itu, ada beberapa kesimpulan yang bisa gue ambil terkait diri gue sendiri:
      <ol>
        <li>gue nggak ngerti dasar2 programming yang baik dan benar</li>
        <li>gue (boro2 ngerti) hampir bisa dibilang nggak tahu dasar2 teknologi informasi</li>
        <li>(agak bisa dimaafkan) gue nggak ngerti alur kerja yang benar dalam mengerjakan proyek teknologi informasi</li>
      </ol>
      Percaya gue, kalian nggak akan mau nerima gue di kantor kalian kalau kalian punya perusahaan start-up yang ingin berlari kencang dengan tiga kelemahan gue di atas.<br><br>

    <p class=\"bold\">\"Nyantai aja lagi, kan lo fresh graduate\"</p>
    
      Di tim gue ada 2 orang fresh graduate selain gue. Dan gue berani bilang, bahwa skill gap kami cukup jauh. Mereka jauh lebih kompeten dari gue. Jadi skill gue bahkan berada (cukup jauh) di belakang fresh graduate.
      Dan tentunya yang udah kerja lama lebih jago lagi. I don't provide the descriptions about how good they are, since almost no one will be able to understand anyway.<br>
      Jadi ya kira2 begitulah skill gap antara gue, fresh graduates yang lain, dan senior2 yang udah lama kerja di sini.
    </div>

    <hr>
    <p class=\"lead\">Mentalitas</p>
    
    <div class=\"content\">
      Sebenernya, kalau gw pikir2, bukannya pressure kayak gini tuh biasa aja ya? Maksudnya, bukannya semua fresh graduate juga bakal kena pressure kayak gini? Namanya juga nggak ada pengalaman…. “Lebai lo dar sampe nulis panjang lebar kyk gini. Lemah bats.”<br><br>

      Well, actually itu bener sih. Di sini gw akan nulis, kenapa gw se-nggak-tahan itu sama pressure yang seharusnya biasa bagi temen2 fresh-graduates yang masih minim pengalaman.<br><br>

    <p class=\"bold\">Takut Untuk Berbuat kesalahan</p>

      Sebagai seorang fresh-graduate yang masuk ke kantor yang ternyata isinya super jago semua, dan dengan skill gw yang dibawah rata-rata ini, berbuat kesalahan tentunya akan menjadi sebuah hal yang lumrah.<br>

      Tentu. Di pekerjaan gw, rasanya rasio benar banding salah gw adalah 1 banding 5. Dengan prevalensi berbuat salah sebanyak itu, ditambah dengan karakter gw yang takut berbuat salah? Thats the perfect recipe to ruin someone's day.<br>

      Kenapa gue takut berbuat salah?
      <ol>
        <li>Well, kalau dilihat di pembukaan blog ini, sampai sebelum masuk kerja, gw menjalani hidup yang cenderung aman dan enak. Dengan kondisi seperti itu, gw bisa dibilang jarang berbuat salah. Sehingga, gw tidak biasa berbuat salah. Gw takut menghadapi konsekuensi dari berbuat salah karena gw tidak tahu apa yang harus gw lakukan untuk menanggapinya.</li>
        <li>Gw orangnya perfeksionis.</li>
        <li>Dan pengaruh beberapa hal lainnya yang membuat gw memiliki karakter seperti ini</li>
      </ol>

    <p class=\"bold\">Implikasinya</p>

      Dengan gue takut berbuat salah, gw menjadi tidak terbiasa untuk belajar cara menanggapi kesalahan yang gw buat sendiri dengan baik dan benar. Padahal, menurut gw, itu adalah salah satu life skill yang penting untuk dipelajari, betul bukan? Menanggapi dengan benar = pelajaran berharga, salah menanggapi = merusak. Begitu sih menurut gue.<br><br>

      Selain itu, takut untuk berbuat kesalahan berarti juga takut untuk mencoba dan menghadapi tantangan-tantangan baru. Mengapa? Menghadapi sesuatu yang baru, yang belum pernah kita ketahui sebelumnya, berarti kita belum tahu bagaimana cara menghadapinya dengan baik. Itu berarti prevalensi berbuat kesalahan menjadi tinggi.<br>
      Gue takut berbuat salah, so gue menghindari sesuatu yang memiliki peluang kesalahan yang tinggi. Sedangkan seperti yang teman2 ketahui semua, bekerja di perusahaan semacam startup berarti meng-embrace segala sesuatu yang baru dengan kecepatan yang tinggi. Teknologi baru, cara kerja baru, paradigma baru, dan sebagainya. Jadi, gue banyak dihadapkan dengan hal baru, dan setiap gue dihadapkan dengan hal baru (yang pastinya gue gaktau gimana cara menghadapinya), gue akan jiper duluan, dan itu tentunya tidak berdampak baik terhadap mood gue, yang pada akhirnya berpengaruh terhadap performa kerja dan sebagainya.<br><br>

      Datang ke kantor dengan mental seperti ini tentu sama sekali tidak membantu performa kerja maupun proses belajar gue.
      Melihat setiap karya2 indah teknologi informasi dengan mentalitas yang buruk seperti ini membuat gua hanya bergumam “gua nggak bisa kayak gitu, gua nggak punya skill yang cukup untuk mampu membuat sesuatu seperti itu”, dan kembali menyalahkan diri sendiri.<br><br>

      <div class=\"signature\">\"and I don't feel like I'm improving at all. I don't know why, but it's just that. You know that you're falling behind, so you need to make improvements to catch up, yet you don't feel that you're making any. This is terrifying.\"</div>

      <br><br>
    </div>

    <hr>
    <p class=\"lead\">Christianity POV?</p>

    <div class=\"content\">
      It’s crazy simple. Gue menempatkan kebahagiaan gue bukan pada Tuhan semata, tetapi pada kemampuan kognitif gue. “Gue seneng kalau gue bisa ngoding dengan lancar dan indah dan menghasilkan sesuatu yang indah.” Actually thats nothing wrong with that… Tetapi ketika gue menempatkan itu menjadi sumber kesenangan gue yang utama, man, I screw myself.<br><br>

      Masalahnya? Sampai sebelum titik ini, semua terlihat baik2 saja. Gue nggak tahu bahwa ini berbahaya. Dari gue lahir sampe gue lulus S1, kemampuan kognitif gue selalu mampu untuk memuaskan gue.<br>
      Sekarang, kemampuan kognitif gue gagal. Where is my happiness! So, here’s the premise:
      <ol>
        <li>gue tidak percaya bahwa Tuhan mengendalikan semua kondisi ini dan akan memberikan yang terbaik bagi gue.</li>
        <li>Karena (1), gue tidak melibatkan Tuhan dalam kehidupan sehari2 gue - berusaha menghadapi semuanya dengan kekuatan sendiri.</li>
        <li>Karena (2) dan segala kelemahan yang gue miliki, I’m broken down (again)!</li>
        <li>Kembali ke (1). Begitu aja terus sampe…. sampe apa ya?</li>
      </ol>

      Padahal, ini bukan tentang gue. ini tentang Tuhan. Tuhan yang bawa gue ke sini, dan terus gue mau pake kekuatan gue di sini?
      There it is. Gue nggak bisa mengumpulkan niat utk belajar dengan baik, mood berantakan, dan sebagainya.<br><br>

      <p class=\"signature\">Dengan mental seperti ini, kapan gue mau keluar?</p>
    </div>

    <hr>
    <p class=\"lead\">The Bright Side</p>

    <div class=\"content\">
      Yang paling mudah, ya dengan begini gue jadi sadar akan kelemahan-kelemahan gue (kalo gak gue nggak akan bs berceloteh sepanjang ini kan). Meskipun untuk memperbaikinya urusan lain, minimal gue sudah mencapai tahap awalnya: mengetahui kelemahan2 gue yang harus diperbaiki, baik kemampuan kognitif maupun kedewasaan karakter dan rohani. Semoga, ini bisa membantu gua untuk membangun karakter dan kerohanian sehingga bisa menjadi orang yang matang nantinya.<br><br>

      Selain itu, company yang isinya orang jago semua dan memang berlari cepat, meskipun memang pressurenya sangat besar, pastinya adalah tempat yang sangat baik untuk meningkatkan kemampuan teknis karyawannya. Betul kan? Setidaknya begitulah dibandingkan company yang biasa-biasa saja dan tidak dikejar ini itu. Semoga, ini bisa membantu gua dalam mencapai target-target pribadi gua terkait kemampuan programming, dan tentunya profile linkedin yang lebih cantik.<br><br>

      Mungkin, memang betul bahwa jika dapat disikapi dengan benar, masalah berbanding lurus dengan pelajaran.
    </div>

    <p class=\"lead\">Disclaimer</p>

    <div class=\"content\">
      <ol>
        <li>nggak. gue nggak sedang meminta perhatian. emang sih kayak curhat.... Tapi kayaknya memang isi blog ini rata2 kayak gitu: memaparkan hal2 yang terjadi pada diri gue dan melihatnya dari suatu sudut pandang tertentu. Semoga blogpost selanjutnya isinya bs lebih cerah!ー</li>
        <li>On the other side, gue sudah sangat bersyukur untuk keberadaan keluarga dan teman2 gue yang selalu mau menyediakan HP nya untuk mendengarkan dan mendukung keberadaan gue di sini dan itu sudah cukup bagi gue. Kudos for them all!</li>
        <li>kerja di jepang tuh enak kok! kebetulan aja gue kedapetan bagian \"belajar\"nya daripada \"senang2\" nya selama kerja di sini. Temen2 gue yg laen enjoy kok kerja di sini! so buat kalian yang berpikir utk postgrad/kerja di jepang, come come! you won't regret it!</li>
      </ol>
    </div>

    <p class=\"signature content\">
      I'm gonna survive this. No matter what. Or No. God will make me survive this. And I'm gonna come out as a better person, cognitively, mentally, and spiritually.
    </p>
  ")
HeaderImage.create(title: true, url: File.open(Rails.root.join('app', 'assets', 'images', 'hardships', 'header.jpg')), blog_id: 6, caption: "Hardships:<br>Things to be Learned Out of It")
ContentImage.create(url: File.open(Rails.root.join('app', 'assets', 'images', 'hardships', 'fix.png')), blog_id: 6, class_attr: "small-img")
ContentImage.create(url: File.open(Rails.root.join('app', 'assets', 'images', 'hardships', 'wtf.png')), blog_id: 6, class_attr: "small-img", caption: "siap runtuh kapan saja.")
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?