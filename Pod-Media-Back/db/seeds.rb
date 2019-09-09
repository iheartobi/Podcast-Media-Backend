# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#  require 'rest-client'
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all()
User.destroy_all()
Relationship.destroy_all()
Subscription.destroy_all()
Post.destroy_all()
Podcast.destroy_all()
Like.destroy_all()
# response = RestClient.get('https://listen-api.listennotes.com/api/v2/search?={}', headers={X-ListenAPIkey: "8f75a208b856480795d5f19b5f0a7150"})
# parsed = JSON.parse(response)
20.times do
User.create(
    username: Faker::Internet.username,
    password: '1234',
    follows: Faker::Number.between(from: 1, to: 50),
    followers: Faker::Number.between(from: 1, to: 50),
    email: Faker::Internet.email,
    podcast_number: Faker::Number.between(from: 1, to: 50)
)
end

# 50.times do 
#     Podcast.create(
#         name:  Faker::Movie.quote,
#         image: Faker::LoremFlickr.image(size: "50x60"),
#         listens: Faker::Number.between(from: 1, to: 50),
#         like_count: Faker::Number.between(from: 1, to: 50)
#     )
# end

40.times do
    user = User.all.sample
    Post.create(
        content: Faker::Quote.famous_last_words,
        like_count: Faker::Number.between(from: 1, to: 50),
        user_id: user.id
        
    )
end

40.times do
    user = User.all.sample
    post = Post.all.sample
    Comment.create(
        comment: Faker::Quote.famous_last_words,
        post_id: post.id,
        user_id: user.id
    )
end


200.times do
    user = User.all.sample
    post = Post.all.sample
    Like.create(
        post_id: post.id,
        user_id: user.id
    )
end

20.times do 
   user = User.all.sample
   friend = User.all.sample
   Relationship.create(
       user_id: user.id,
       friend_id: friend.id
   )

end


Podcast.create([
    {
       title: "Say Your Mind",
       publisher: "Say Your Mind",
       image: "https://cdn-images-1.listennotes.com/podcasts/say-your-mind-say-your-mind-jSE7snxz9Yk.300x300.jpg",
       thumbnail: "https://cdn-images-1.listennotes.com/podcasts/say-your-mind-say-your-mind-jSE7snxz9Yk.300x300.jpg",
       listennotes_url: "https://www.listennotes.com/c/f73d91f691c449e2b5be78f6ea3103b5/"
    },
    {
       title: "2 Queens in a Pod",
       publisher: "2Queensinapod",
       image: "https://cdn-images-1.listennotes.com/podcasts/2-queens-in-a-pod-2queensinapod-PpKMBmoXTza.300x300.jpg",
       thumbnail: "https://cdn-images-1.listennotes.com/podcasts/2-queens-in-a-pod-2queensinapod-PpKMBmoXTza.300x300.jpg",
       listennotes_url: "https://www.listennotes.com/c/24a5b157579d4362b52da59a8303ee9d/"
    },
    {
       title: "The Receipts Podcast",
       publisher: "The Receipts Podcast",
       image: "https://cdn-images-1.listennotes.com/podcasts/the-receipts-podcast-the-receipts-podcast-Q9idBksGn2o-CUeZjVk_N9P.300x300.jpg",
       thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-receipts-podcast-the-receipts-podcast-Q9idBksGn2o-CUeZjVk_N9P.300x300.jpg",
       listennotes_url: "https://www.listennotes.com/c/3d021247f9fd4dcfae69c6c12e297246/"
    },
    {
       title: "Black Gals Livin'",
       publisher: "Black Gals Livin'",
       image: "https://cdn-images-1.listennotes.com/podcasts/black-gals-livin-black-gals-livin-C9HQ-MxONot.300x300.jpg",
       thumbnail: "https://cdn-images-1.listennotes.com/podcasts/black-gals-livin-black-gals-livin-C9HQ-MxONot.300x300.jpg",
       listennotes_url: "https://www.listennotes.com/c/31cd97130ed94a03aef21138873b30a0/"
    },
    {
       title: "About Race with Reni Eddo-Lodge",
       publisher: "Reni Eddo-Lodge/Renay Rich",
       image: "https://cdn-images-1.listennotes.com/podcasts/about-race-with-reni-eddo-lodge-reni-eddo-eZKsaliPpEY.300x300.jpg",
       thumbnail: "https://cdn-images-1.listennotes.com/podcasts/about-race-with-reni-eddo-lodge-reni-eddo-eZKsaliPpEY.300x300.jpg",
       listennotes_url: "https://www.listennotes.com/c/2fbf3e37eca14144b52cd499665a7429/"
    },

    {
        
        title: "WMMR's Preston & Steve Daily Podcast",
        publisher: "Beasley Media Group",
        image: "https://cdn-images-1.listennotes.com/podcasts/wmmrs-preston-steve-daily-podcast-beasley-DMQneqixHlk.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/wmmrs-preston-steve-daily-podcast-beasley-DMQneqixHlk.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/2ba0c36d5ddf4409a73c80c6850f74a2/"
    },
    {
        title: "Supra Endura: Creative Conversations",
        publisher: "Supra Endura",
        image: "https://cdn-images-1.listennotes.com/podcasts/supra-endura-creative-conversations-supra-w2fj7Lb-sk4.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/supra-endura-creative-conversations-supra-w2fj7Lb-sk4.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/d09041db04a546c8aced9ae559418554/"
    },
    {
       
        title: "KYW Newsradio's 1-On-1 with Matt Leon",
        publisher: "RADIO.COM",
        image: "https://cdn-images-1.listennotes.com/podcasts/kyw-newsradios-1-on-1-with-matt-leon-radiocom-PNGfpZOQDvF.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/kyw-newsradios-1-on-1-with-matt-leon-radiocom-PNGfpZOQDvF.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/4b0ec5c9de024c76bb9e86c818b262e4/"
    },
    {
        title: "Streets Dept Podcast",
        publisher: "Streets Dept",
        image: "https://cdn-images-1.listennotes.com/podcasts/streets-dept-podcast-streets-dept-EcpR02nzHBq.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/streets-dept-podcast-streets-dept-EcpR02nzHBq.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/f3cf0c10fa86476db554e17b477e50c2/"
    },
    {
        
        title: "On The Record",
        publisher: "On The Record",
        image: "https://cdn-images-1.listennotes.com/podcasts/on-the-record-on-the-record-PiZHrd_4fS8.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/on-the-record-on-the-record-PiZHrd_4fS8.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/46647d84cf514e65b7b38e0d6040fb34/"
    },
    {
        
        title: "Planet Money",
        publisher: "NPR",
        image: "https://cdn-images-1.listennotes.com/podcasts/planet-money-npr-qs5rCJfwWeQ-rpiVMNQ5Z8n.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/planet-money-npr-qs5rCJfwWeQ-rpiVMNQ5Z8n.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/8cb941141a7c434d945397cfd8b12e58/"
    },
    {
    
        title: "The Stacking Benjamins Show",
        publisher: "StackingBenjamins.com",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-stacking-benjamins-show-iC4WZ6nw-MY.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-stacking-benjamins-show-iC4WZ6nw-MY.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/a920e842bc98410c8668aa78273c8497/"
    },
    {
        title: "Listen Money Matters - Free your inner financial badass. All the stuff you should know about personal finance.",
        publisher: "ListenMoneyMatters.com | Andrew Fiebert and Matt Giovanisci",
        image: "https://cdn-images-1.listennotes.com/podcasts/listen-money-matters-free-your-inner-fbM4noxyYAS-SJEHNr84kVg.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/listen-money-matters-free-your-inner-fbM4noxyYAS-SJEHNr84kVg.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/3302bc71139541baa46ecb27dbf6071a/"
    },
    {
        title: "So Money with Farnoosh Torabi",
        publisher: "Farnoosh Torabi ",
        image: "https://cdn-images-1.listennotes.com/podcasts/so-money-with-farnoosh-torabi-farnoosh-torabi-PRk3mJGzNXb-mOb-SgP2jlN.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/so-money-with-farnoosh-torabi-farnoosh-torabi-PRk3mJGzNXb-mOb-SgP2jlN.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/4febd3594ce14b50a12341219ba63780/"
    },
    {
        title: "Masters in Business",
        publisher: "Bloomberg Radio",
        image: "https://cdn-images-1.listennotes.com/podcasts/masters-in-business-bloomberg-radio-M3IlK0YzcWO-qPacDsiFV_J.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/masters-in-business-bloomberg-radio-M3IlK0YzcWO-qPacDsiFV_J.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/da0716a7ca82435c81ae9534836da9c9/"
    },    
    {
        title: "On Being with Krista Tippett",
        publisher: "On Being Studios",
        image: "https://cdn-images-1.listennotes.com/podcasts/on-being-with-krista-tippett-on-being-studios-WrMmH80nPQg-AQFM5oNK_Sf.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/on-being-with-krista-tippett-on-being-studios-WrMmH80nPQg-AQFM5oNK_Sf.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/84d4825229034b0db0c3f6d092c407cf/"
    },
    {
        title: "Oprah’s SuperSoul Conversations",
        publisher: "Oprah",
        image: "https://cdn-images-1.listennotes.com/podcasts/oprahs-supersoul-conversations-oprah-BltgoIcWaOP-Gv-_hNgTmac.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/oprahs-supersoul-conversations-oprah-BltgoIcWaOP-Gv-_hNgTmac.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/db3736c71b5a41b9a3798359e79a7def/"
    },
    {
        title: "The RobCast",
        publisher: "Rob Bell",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-robcast-rob-bell-y68-0_xE5GR.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-robcast-rob-bell-y68-0_xE5GR.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/42b0a72586c04f2a888569a5837266e8/"
    },
    {
        title: " Tell Them, I Am ",
        publisher: "KPCC | Southern California Public Radio",
        image: "https://cdn-images-1.listennotes.com/podcasts/tell-them-i-am-kpcc-southern-california-glenHtdiEG8.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/tell-them-i-am-kpcc-southern-california-glenHtdiEG8.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/2261cd5c744a42488e91516f129db5e1/"
    },
    {
        title: "The Potter's Touch",
        publisher: "Bishop T.D. Jakes",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-potters-touch-bishop-td-jakes-78gNHtpws-4-kIvBY1yL-PH.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-potters-touch-bishop-td-jakes-78gNHtpws-4-kIvBY1yL-PH.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/b1ed050ed7e04e97ba815359c5c64a9e/"
    },
    {
        
        title: "Song Exploder",
        publisher: "Song Exploder",
        image: "https://cdn-images-1.listennotes.com/podcasts/song-exploder-song-exploder-Ut3fuw2xdYv.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/song-exploder-song-exploder-Ut3fuw2xdYv.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/8d8970470ead450aa5a9d2a1d223d938/"
    },
    {
        title: "Dissect",
        publisher: "Cole Cuchna | Spotify",
        image: "https://cdn-images-1.listennotes.com/podcasts/dissect-cole-cuchna-spotify-qKhMCOlfTtJ-ykaJSmZP5pR.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/dissect-cole-cuchna-spotify-qKhMCOlfTtJ-ykaJSmZP5pR.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/a7799dbf998d446892c3d48cf352573d/"
    },
    {
        title: "Switched on Pop",
        publisher: "Vox",
        image: "https://cdn-images-1.listennotes.com/podcasts/switched-on-pop-vox-6RhiPYCq7zg-YAyMJOkLo-7.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/switched-on-pop-vox-6RhiPYCq7zg-YAyMJOkLo-7.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/36ad4ab8d4934013911a5370b84ecfa3/"
    },
    {
        title: "Hit Parade | Music History and Music Trivia",
        publisher: "Slate Podcasts",
        image: "https://cdn-images-1.listennotes.com/podcasts/hit-parade-music-history-and-music-trivia-xWNViumCsfg-Vv6grq5xj1_.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/hit-parade-music-history-and-music-trivia-xWNViumCsfg-Vv6grq5xj1_.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/a39086d2aa404e129788b0cfa16faf68/"
    },
    {
        title: "Rolling Stone Music Now",
        publisher: "Rolling Stone",
        image: "https://cdn-images-1.listennotes.com/podcasts/rolling-stone-music-now-rolling-stone-RXcJ9YI2CjV-lVB90mwearb.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/rolling-stone-music-now-rolling-stone-RXcJ9YI2CjV-lVB90mwearb.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/0822815739164df3ad69d710f0c5f2b5/"
    },
    {
        title: "99% Invisible",
        publisher: "Roman Mars",
        image: "https://cdn-images-1.listennotes.com/podcasts/99-invisible-roman-mars-JqxekyhmQi1.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/99-invisible-roman-mars-JqxekyhmQi1.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/938de7f853b24bf59c7d199b8fba3950/"
    },
    {
        title: "US Modernist Radio - Architecture You Love",
        publisher: "USModernist Radio",
        image: "https://cdn-images-1.listennotes.com/podcasts/us-modernist-radio-architecture-you-love-us-8D_F5w21uGd.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/us-modernist-radio-architecture-you-love-us-8D_F5w21uGd.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/6a2731846787469bbeaa9360f9d17927/"
    },
    {
        title: "RM-3: Raw Materials 3 Ways",
        publisher: "Dwell",
        image: "https://cdn-images-1.listennotes.com/podcasts/rm-3-raw-materials-3-ways-dwell-Ie87twoNEui.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/rm-3-raw-materials-3-ways-dwell-Ie87twoNEui.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/60953c0743504ba89b2b70bd88cb7c8e/"
    },
    {
        title: "Design and Architecture",
        publisher: "KCRW",
        image: "https://cdn-images-1.listennotes.com/podcasts/design-and-architecture-kcrw-frances-anderton-D042p5qatQC.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/design-and-architecture-kcrw-frances-anderton-D042p5qatQC.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/b73553f2f6944d4e992bed2f78f3a4e1/"
    },
    {
        title: "Monocle 24: The Urbanist",
        publisher: "Monocle",
        image: "https://cdn-images-1.listennotes.com/podcasts/monocle-24-the-urbanist-monocle--wDjgpH1PN3-_h1oZzYlBXc.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/monocle-24-the-urbanist-monocle--wDjgpH1PN3-_h1oZzYlBXc.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/959a86072cf34950a82a8e3cc4d82c53/"
    },
    {
        title: "Eventual Millionaire",
        publisher: "Jaime Masters",
        image: "https://cdn-images-1.listennotes.com/podcasts/eventual-millionaire-jaime-masters-Vhx7TMbXB8a.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/eventual-millionaire-jaime-masters-Vhx7TMbXB8a.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/013d02341f0f4926a8646537d78e7840/"
    },
    {
        title: "Entrepreneurs on Fire",
        publisher: "John Lee Dumas of EOFire",
        image: "https://cdn-images-1.listennotes.com/podcasts/entrepreneurs-on-fire-john-lee-dumas-1WOhT7u6VQb.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/entrepreneurs-on-fire-john-lee-dumas-1WOhT7u6VQb.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/a409b8bb93f44054a7be2d6b30843899/"
    },
    {
        title: "Youpreneur FM Podcast",
        publisher: "Chris Ducker",
        image: "https://cdn-images-1.listennotes.com/podcasts/youpreneur-fm-podcast-chris-ducker-t4lFcqC-mHg.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/youpreneur-fm-podcast-chris-ducker-t4lFcqC-mHg.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/d629ec1dbf4e463d95111694a8ddad84/"
    },
    {
        title: "The Advanced Selling Podcast",
        publisher: "Bill Caskey and Bryan Neale: B2B Sales Trainers, Business Strategists and L",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-advanced-selling-podcast-bill-caskey-B5MzGQSHJpE.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-advanced-selling-podcast-bill-caskey-B5MzGQSHJpE.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/5bf97cd0c70040a19044958d331c7ab4/"
    },
    {
        title: "Social Media Marketing Podcast",
        publisher: "Michael Stelzner, Social Media Examiner",
        image: "https://cdn-images-1.listennotes.com/podcasts/social-media-marketing-podcast-michael-ykeMUOJYv7W.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/social-media-marketing-podcast-michael-ykeMUOJYv7W.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/13445c3745af46a7a94608d7fd685694/"
    },
    {
        title: "Criminal",
        publisher: "Criminal & Radiotopia",
        image: "https://cdn-images-1.listennotes.com/podcasts/criminal-criminal-radiotopia-z0mDfEPQkcR-NzgFBsyMdl6.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/criminal-criminal-radiotopia-z0mDfEPQkcR-NzgFBsyMdl6.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/cd1321665dc44524aad51e354af5b182/"
    },
    {
        title: "Once Upon A Crime | True Crime",
        publisher: "Esther Ludlow",
        image: "https://cdn-images-1.listennotes.com/podcasts/once-upon-a-crime-true-crime-esther-ludlow-4KiuTS7JMN2.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/once-upon-a-crime-true-crime-esther-ludlow-4KiuTS7JMN2.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/9a94950ce41246629708a528baa296c4/"
    },
    {
        title: "The Dropout",
        publisher: "ABC News",
        image: "https://cdn-images-1.listennotes.com/channel/image/2505c93848b640a4a89b427e438b8a47.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/channel/image/2505c93848b640a4a89b427e438b8a47.jpg",
        listennotes_url: "https://www.listennotes.com/c/19362e6cb13243ca900e83a350ae620e/"
    },
    {
        title: "Accused",
        publisher: "Cincinnati Enquirer | Wondery",
        image: "https://cdn-images-1.listennotes.com/podcasts/accused-cincinnati-enquirer-wondery-sOnBiVWrK-j-4Uu-KtIsSp_.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/accused-cincinnati-enquirer-wondery-sOnBiVWrK-j-4Uu-KtIsSp_.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/41d40c96fd734331b248a5dc572c3092/"
    },
    {
        title: "Crime Junkie",
        publisher: "audiochuck | Ashley Flowers",
        image: "https://cdn-images-1.listennotes.com/podcasts/crime-junkie-audiochuck-ashley-flowers-qaAXQhY69gP-BWDcryRL6xl.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/crime-junkie-audiochuck-ashley-flowers-qaAXQhY69gP-BWDcryRL6xl.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/44d2110a792b4e2b85f2303abaef75e9/"
    },
    {
        title: "Beauty from the Heart ",
        publisher: "Rose Gallagher",
        image: "https://cdn-images-1.listennotes.com/podcasts/beauty-from-the-heart-z7r98mnQBEK-mL3dxjTlIW0.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/beauty-from-the-heart-z7r98mnQBEK-mL3dxjTlIW0.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/bd69ada9f4ed41fb984bfeb878e31ac9/"
    },
    {
        title: "The Emma Guns Show",
        publisher: "Emma Gunavardhana",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-emma-guns-show-emma-gunavardhana-D8xLzeETqRH.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-emma-guns-show-emma-gunavardhana-D8xLzeETqRH.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/7f3e1a67841b4f7fad9cb2fc6b032443/"
    },
    {
        title: "Fat Mascara ",
        publisher: "At Will Media",
        image: "https://cdn-images-1.listennotes.com/podcasts/fat-mascara-at-will-media-tmMdf5wFklo.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/fat-mascara-at-will-media-tmMdf5wFklo.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/9fc0aaa255704368a98c7b99056c9942/"
    },
    {
        title: "Wobble",
        publisher: "Jules Von Hep and Sarah Powell",
        image: "https://cdn-images-1.listennotes.com/podcasts/wobble-jules-von-hep-and-sarah-powell-PLfIFWNS1ep.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/wobble-jules-von-hep-and-sarah-powell-PLfIFWNS1ep.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/896607925c054a89ae1eadbf53f3e255/"
    },
    {
        title: "Her Rules Radio",
        publisher: "Alexandra Jamieson",
        image: "https://cdn-images-1.listennotes.com/podcasts/her-rules-radio-alexandra-jamieson-JeCihaMt0jE.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/her-rules-radio-alexandra-jamieson-JeCihaMt0jE.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/21f9054e6e094b36830cec9e719d2de8/"
    },
    {
        title: "Sick Sad World",
        publisher: "Sick Sad World: A True Crime and Horror Podcast",
        image: "https://cdn-images-1.listennotes.com/podcasts/sick-sad-world-sick-sad-world-a-true-crime-gKt_Y7zM3pX.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/sick-sad-world-sick-sad-world-a-true-crime-gKt_Y7zM3pX.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/9987477383a049298779deea879f772d/"
    },
    {
        title: "To Live and Die in LA",
        publisher: "Tenderfoot TV & Cadence 13",
        image: "https://cdn-images-1.listennotes.com/podcasts/to-live-and-die-in-la-tenderfoot-tv-cadence-KHbmFaolkpM-j68NMJ4HT5z.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/to-live-and-die-in-la-tenderfoot-tv-cadence-KHbmFaolkpM-j68NMJ4HT5z.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/eb9515f24925450d827bd17d60775d78/"
    },
    {
        title: "The Thread",
        publisher: "OZY",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-thread-ozy-_oXkOJNRdHS-oVrufU72jcZ.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-thread-ozy-_oXkOJNRdHS-oVrufU72jcZ.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/64c4e2027d1a4d708ba32787201c7b6f/"
    },
    {
        title: "Crime Junkie",
        publisher: "audiochuck | Ashley Flowers",
        image: "https://cdn-images-1.listennotes.com/podcasts/crime-junkie-audiochuck-ashley-flowers-qaAXQhY69gP-BWDcryRL6xl.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/crime-junkie-audiochuck-ashley-flowers-qaAXQhY69gP-BWDcryRL6xl.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/44d2110a792b4e2b85f2303abaef75e9/"
    },
    {
        title: "Direct Appeal",
        publisher: "Meghan Sacks and Amy Shlosberg",
        image: "https://cdn-images-1.listennotes.com/podcasts/direct-appeal-meghan-sacks-and-amy-shlosberg-kgbl2eIGhZv-tbJ0a4mirUD.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/direct-appeal-meghan-sacks-and-amy-shlosberg-kgbl2eIGhZv-tbJ0a4mirUD.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/32c02c16fff543e48a53110c203c1816/"
    },
    {
        title: "Learn To Meditate - Meditation Podcast - Meditation Society of Australia",
        publisher: "Meditation Society of Australia",
        image: "https://cdn-images-1.listennotes.com/podcasts/learn-to-meditate-meditation-podcast-P4S-p0eg5hb.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/learn-to-meditate-meditation-podcast-P4S-p0eg5hb.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/e81221c5b5ca48c298282e141c237fdc/"
    },
    {
        title: "The Meditation Podcast",
        publisher: "Jesse and Jeane Stern",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-meditation-podcast-jesse-and-jeane-stern-qg-LCUwRcZE.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-meditation-podcast-jesse-and-jeane-stern-qg-LCUwRcZE.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/57f83ae051fb4f248cd1eb54e1c4e6e7/"
    },
    {
        title: "Meditation Station by Stin Hansen",
        publisher: "Stin Hansen",
        image: "https://cdn-images-1.listennotes.com/podcasts/meditation-station-by-stin-hansen-stin-hansen-ybFq9EMGRUX-ubhJS0pVYyQ.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/meditation-station-by-stin-hansen-stin-hansen-ybFq9EMGRUX-ubhJS0pVYyQ.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/a71d0b3777c34dadb23944bbb761316f/"
    },
    {
        title: "Meditation Oasis",
        publisher: "Mary and Richard Maddux",
        image: "https://cdn-images-1.listennotes.com/podcasts/meditation-oasis-mary-and-richard-maddux-zoH1yI9qLRa.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/meditation-oasis-mary-and-richard-maddux-zoH1yI9qLRa.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/c4f4fead93d64d548ce6e92ea7d8286a/"
    },
    {
        title: "Mindfulness Mode",
        publisher: "Bruce Langford",
        image: "https://cdn-images-1.listennotes.com/podcasts/mindfulness-mode-bruce-langford-b-P7qdQS3NL.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/mindfulness-mode-bruce-langford-b-P7qdQS3NL.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/2f498bf1902c47d8832822363dc20f37/"
    },
    {
        title: "Welcome to Night Vale",
        publisher: "Night Vale Presents",
        image: "https://cdn-images-1.listennotes.com/podcasts/welcome-to-night-vale-night-vale-presents-fNPkH8jT0Gg-UTqHIR-J2OW.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/welcome-to-night-vale-night-vale-presents-fNPkH8jT0Gg-UTqHIR-J2OW.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/8c1eb60a72fe4c60afc5fda3ba99e276/"
    },
    {
        title: "Radiolab",
        publisher: "WNYC Studios",
        image: "https://cdn-images-1.listennotes.com/podcasts/radiolab-wnyc-studios-LcwYyVzfJx9.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/radiolab-wnyc-studios-LcwYyVzfJx9.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/535815a492a941d79b95be6ae1c5cc9c/"
    },
    {
        title: "Stuff Mom Never Told You",
        publisher: "iHeartRadio & HowStuffWorks",
        image: "https://cdn-images-1.listennotes.com/podcasts/stuff-mom-never-told-you-iheartradio-t-Mjcufqoi9-BbeSzAH2gkN.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/stuff-mom-never-told-you-iheartradio-t-Mjcufqoi9-BbeSzAH2gkN.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/72a837fc5ea84d4d80941f7ab66b0f44/"
    },
    {
        title: "Bonnie & Maude",
        publisher: "Bonnie & Maude",
        image: "https://cdn-images-1.listennotes.com/podcasts/bonnie-maude-bonnie-maude-koSQG9cY5My.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/bonnie-maude-bonnie-maude-koSQG9cY5My.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/38e26f9a29394a9581e6950894561018/"
    },
    {
        title: "FT Listen to Lucy",
        publisher: "Financial Times",
        image: "https://cdn-images-1.listennotes.com/podcasts/ft-listen-to-lucy-financial-times-B-cmPeao0T3.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/ft-listen-to-lucy-financial-times-B-cmPeao0T3.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/9373a7b454f24f6188ee90f18b61a7eb/"
    },
    {
        title: "The Science of Happiness",
        publisher: "PRI and Greater Good Science Center",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-science-of-happiness-pri-and-greater-9hZqrMFCBJW.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-science-of-happiness-pri-and-greater-9hZqrMFCBJW.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/2344b37e94e24647bb2099d1a5b93348/"
    },
    {
        title: "Everyday Mindfulness Show",
        publisher: "Holly Duckworth",
        image: "https://cdn-images-1.listennotes.com/podcasts/everyday-mindfulness-show-holly-duckworth-DZm0OSn9WMP.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/everyday-mindfulness-show-holly-duckworth-DZm0OSn9WMP.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/6f281047bab1438aa547666fcfd4d590/"
    },
    {
        title: "The JOY Factor: Mindfulness, Compassion, Positive Psychology, Healing, Yoga",
        publisher: "Julie Hanson, Licensed Psychotherapist, Certified Life Coach, Registered Yo",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-joy-factor-mindfulness-compassion-7KlF2sI0EfP.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-joy-factor-mindfulness-compassion-7KlF2sI0EfP.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/02eb9971f223498fbf3f6ba9d66cebc9/"
    },
    {
        title: "On the Other Hand: Ten Minutes of Torah",
        publisher: "ReformJudaism.org",
        image: "https://cdn-images-1.listennotes.com/podcasts/on-the-other-hand-ten-minutes-of-torah-AmUwZ7xiC4g.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/on-the-other-hand-ten-minutes-of-torah-AmUwZ7xiC4g.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/e4d78d3aa7d6485da2d82329c9392cdd/"
    },
    {
        title: "She Podcast",
        publisher: "Jordan Lee Dooley",
        image: "https://cdn-images-1.listennotes.com/podcasts/she-podcast-jordan-lee-dooley-VI6BkP20Egl-QCPzElwWnk8.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/she-podcast-jordan-lee-dooley-VI6BkP20Egl-QCPzElwWnk8.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/e0dbd8ca1cb94a11975ab330f24fdecb/"
    },
    {
        title: "The Terri Cole Show",
        publisher: "Terri Cole",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-terri-cole-show-terri-cole-bGx6tS28JjK.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-terri-cole-show-terri-cole-bGx6tS28JjK.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/e11566f5b55c48548e65f1d2adf6bd57/"
    },
    {
        title: "Live the Daydream",
        publisher: "Jonathan and Janelle Cuilla",
        image: "https://cdn-images-1.listennotes.com/podcasts/live-the-daydream-jonathan-and-janelle-cuilla-RTG3NIDOqVE.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/live-the-daydream-jonathan-and-janelle-cuilla-RTG3NIDOqVE.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/3eaeff67992242499460f8dfe21122a7/"
    },
    {
        title: "The Productivityist Podcast: A Time Management and Personal Productivity Talk Show",
        publisher: "Mike Vardy",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-productivityist-podcast-a-time-J74xrCFimBt-2C8on5ZAxUX.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-productivityist-podcast-a-time-J74xrCFimBt-2C8on5ZAxUX.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/c4bec76889f0486baee5465087f8471e/"
    },
    {
        title: "99% Invisible",
        publisher: "Roman Mars",
        image: "https://cdn-images-1.listennotes.com/podcasts/99-invisible-roman-mars-JqxekyhmQi1.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/99-invisible-roman-mars-JqxekyhmQi1.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/938de7f853b24bf59c7d199b8fba3950/"
    },
    {
        title: "Oxford Biographies",
        publisher: "Oxford University Press",
        image: "https://cdn-images-1.listennotes.com/podcasts/oxford-biographies-oxford-university-press-uQiBSJy9mhv.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/oxford-biographies-oxford-university-press-uQiBSJy9mhv.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/c165ed2188ea43e8875ad74e2d540e36/"
    },
    {
        title: "the memory palace",
        publisher: "Nate DiMeo",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-memory-palace-nate-dimeo-MUoyWH06zGb-lj9Ba87tVAT.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-memory-palace-nate-dimeo-MUoyWH06zGb-lj9Ba87tVAT.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/ef4fb03e8f6f4bd7af29d257e6f0a221/"
    },
    {
        title: "The Broad Experience",
        publisher: "The Broad Experience",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-broad-experience-the-broad-experience-ZnrK1uIBhcV.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-broad-experience-the-broad-experience-ZnrK1uIBhcV.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/70991d0244c841bc8cf23f8da5b4f35a/"
    },
    {
        title: "Savage Lovecast",
        publisher: "Dan Savage",
        image: "https://cdn-images-1.listennotes.com/podcasts/savage-lovecast-dan-savage-pzne-Y2vMsh.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/savage-lovecast-dan-savage-pzne-Y2vMsh.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/f00970e9804748968ba2512465e93fd3/"
    },
    {
        title: "The Lonely Palette",
        publisher: "Tamar Avishai",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-lonely-palette-tamar-avishai-S9_PQbKdFkg.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-lonely-palette-tamar-avishai-S9_PQbKdFkg.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/dc62e31b4eec4e7596ea2e61e4c268b5/"
    },
    {
        title: "A Piece of Work",
        publisher: "WNYC Studios",
        image: "https://cdn-images-1.listennotes.com/podcasts/a-piece-of-work-wnyc-studios-kjYSAKl-Vz_.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/a-piece-of-work-wnyc-studios-kjYSAKl-Vz_.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/cdd6764c0cb64021ba8e5b8e5c92b13b/"
    },
    {
        title: "Bad at Sports",
        publisher: "Bad at Sports",
        image: "https://cdn-images-1.listennotes.com/podcasts/bad-at-sports-bad-at-sports-c_VryFgSJmM.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/bad-at-sports-bad-at-sports-c_VryFgSJmM.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/bcabeee875854f0f953dc45114c61c57/"
    },
    {
        title: "The Jealous Curator : ART FOR YOUR EAR",
        publisher: "The Jealous Curator",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-jealous-curator-art-for-your-ear-the-dfExPorwDUm.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-jealous-curator-art-for-your-ear-the-dfExPorwDUm.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/e9dded76d42c4d14bf8056573a846fd8/"
    },
    {
        title: "The Modern Art Notes Podcast",
        publisher: "Tyler Green",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-modern-art-notes-podcast-tyler-green-8DUQu2w9OBx.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-modern-art-notes-podcast-tyler-green-8DUQu2w9OBx.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/786f2a1ca2224014a64d9214749a10a3/"
    },
    {
        title: "The Lead Generation",
        publisher: "Bob Sparkins, Leadpages",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-lead-generation-bob-sparkins-leadpages-S9vZGQ2wq1R.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-lead-generation-bob-sparkins-leadpages-S9vZGQ2wq1R.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/6a8874e7bfe84368a6c05d16d6cea97a/"
    },
    {
        title: "The Fizzle Show",
        publisher: "Fizzle.fm",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-fizzle-show-fizzlefm-GfBUZ407Qcv-SZUtwu9scGe.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-fizzle-show-fizzlefm-GfBUZ407Qcv-SZUtwu9scGe.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/cb4427a82d484a94a57a6731a71039f6/"
    },
    {
        title: "MozPod",
        publisher: "Moz",
        image: "https://cdn-images-1.listennotes.com/podcasts/mozpod-moz-i7kgdTDEZUs.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/mozpod-moz-i7kgdTDEZUs.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/97a8531f8ac24a34ade0102c50087130/"
    },
    {
        title: "Perpetual Traffic",
        publisher: "DigitalMarketer",
        image: "https://cdn-images-1.listennotes.com/podcasts/perpetual-traffic-digitalmarketer-4Lh2Vpky-7B.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/perpetual-traffic-digitalmarketer-4Lh2Vpky-7B.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/c22292262db84bce9d58c7eadb36c1d0/"
    },
    {
        title: "Marketing School - Digital Marketing and Online Marketing Tips",
        publisher: "Neil Patel & Eric Siu.",
        image: "https://cdn-images-1.listennotes.com/podcasts/marketing-school-digital-marketing-and-pHyiIJT4Lxl.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/marketing-school-digital-marketing-and-pHyiIJT4Lxl.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/9a2abf6b68b54554a60a32a2932febcb/"
    },
    {
        title: "The Moth",
        publisher: "The Moth",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-moth-the-moth-vtI78McVfYj.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-moth-the-moth-vtI78McVfYj.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/01fae0f8fd2948f39dfd59890f643d94/"
    },
    {
        title: "Death, Sex & Money",
        publisher: "WNYC Studios",
        image: "https://cdn-images-1.listennotes.com/podcasts/death-sex-money-wnyc-studios-moqvPIMg_pz--X7mk3G1dFY.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/death-sex-money-wnyc-studios-moqvPIMg_pz--X7mk3G1dFY.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/3822eb1c55814bf98e4f4246d0725e83/"
    },
    {
        title: "Call Your Girlfriend",
        publisher: "Ann Friedman and Aminatou Sow",
        image: "https://cdn-images-1.listennotes.com/podcasts/call-your-girlfriend-ann-friedman-and-i7XLJ4QmTAh.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/call-your-girlfriend-ann-friedman-and-i7XLJ4QmTAh.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/83433fcabd5645308799043b9871649c/"
    },
    {
        title: "Stuff You Should Know",
        publisher: "iHeartRadio & HowStuffWorks",
        image: "https://cdn-images-1.listennotes.com/podcasts/stuff-you-should-know-iheartradio-iZYk-L12Xmx-o3M1PutdeRk.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/stuff-you-should-know-iheartradio-iZYk-L12Xmx-o3M1PutdeRk.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/b53125292b4e423d93dc1f16f20a7ed2/"
    },
    {
        title: "Limetown",
        publisher: "Two-Up",
        image: "https://cdn-images-1.listennotes.com/podcasts/limetown-two-up-kgbXo2TwnQB.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/limetown-two-up-kgbXo2TwnQB.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/58910f84178e4f0badff0f0a34455b7b/"
    },
    {
        title: "Your Next Million",
        publisher: "Frank Kern",
        image: "https://cdn-images-1.listennotes.com/podcasts/your-next-million-frank-kern-It-Yd9Vo3Hm.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/your-next-million-frank-kern-It-Yd9Vo3Hm.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/cb8bb14d74d1410e821b4a3526aa2a9a/"
    },
    {
        title: "The Tim Ferriss Show",
        publisher: "Tim Ferriss: Bestselling Author, Human Guinea Pig",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-tim-ferriss-show-tim-ferriss-7NwMpUz5o0S.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-tim-ferriss-show-tim-ferriss-7NwMpUz5o0S.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/25212ac3c53240a880dd5032e547047b/"
    },
    {
        title: "Problem Solvers",
        publisher: "Entrepreneur.com",
        image: "https://cdn-images-1.listennotes.com/podcasts/problem-solvers-entrepreneurcom-Er9bFimRMhY.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/problem-solvers-entrepreneurcom-Er9bFimRMhY.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/971788af3ddc4736bbd3249af2c65d37/"
    },
    {
        title: "The School of Greatness",
        publisher: "Lewis Howes",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-school-of-greatness-lewis-howes-yfdVBKMRr1W-H1zdqljixbp.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-school-of-greatness-lewis-howes-yfdVBKMRr1W-H1zdqljixbp.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/9f6ee51adfb046cc9936490abd2666ce/"
    },
    {
        title: "Writing Excuses",
        publisher: "Brandon Sanderson, Mary Robinette Kowal, Dan Wells, and Howard Tayler",
        image: "https://cdn-images-1.listennotes.com/podcasts/writing-excuses-brandon-sanderson-mary--KwXl3HaDcy.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/writing-excuses-brandon-sanderson-mary--KwXl3HaDcy.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/d6245d701f714153ab545a5d2c86d5ed/"
    },
    {
        title: "The Creative Penn Podcast For Writers",
        publisher: "Joanna Penn",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-creative-penn-podcast-for-writers-eY6ytvAzfl3-6sSJawOUrRV.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-creative-penn-podcast-for-writers-eY6ytvAzfl3-6sSJawOUrRV.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/f7db9a8cd2dd471a9fa19585d5df1e7b/"
    },
    {
        title: "Grammar Girl Quick and Dirty Tips for Better Writing",
        publisher: "QuickAndDirtyTips.com",
        image: "https://cdn-images-1.listennotes.com/podcasts/grammar-girl-quick-and-dirty-tips-for-qZ7UWHkBEm_.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/grammar-girl-quick-and-dirty-tips-for-qZ7UWHkBEm_.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/f911624dbcb647e0b12ad8bff279fa0e/"
    },
    {
        title: "Story Grid Podcast",
        publisher: "Shawn Coyne and Tim Grahl",
        image: "https://cdn-images-1.listennotes.com/podcasts/story-grid-podcast-shawn-coyne-and-tim-grahl-qGD3HAFeCYR.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/story-grid-podcast-shawn-coyne-and-tim-grahl-qGD3HAFeCYR.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/428d3dbc5b2f40c286b361d0e3e201fd/"
    },
    {
        title: "The Self Publishing Show",
        publisher: "Mark Dawson",
        image: "https://cdn-images-1.listennotes.com/podcasts/the-self-publishing-show-mark-dawson-QWAz0p2OIir.300x300.jpg",
        thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-self-publishing-show-mark-dawson-QWAz0p2OIir.300x300.jpg",
        listennotes_url: "https://www.listennotes.com/c/f7c4a0ac142240db98e5621c029f23e1/"
    },
{

title: "Tara Brach",
publisher: "Tara Brach",
image: "https://cdn-images-1.listennotes.com/podcasts/tara-brach-tara-brach-n8rbXotsLFv.300x300.jpg",
thumbnail: "https://cdn-images-1.listennotes.com/podcasts/tara-brach-tara-brach-n8rbXotsLFv.300x300.pg",
}, 
{

title: "Darknet Diaries",
publisher: "Jack Rhysider",
image: "https://cdn-images-1.listennotes.com/podcasts/darknet-diaries-jack-rhysider-V3-nWQFLgUx-ztuNyvC2F_O.300x300.jpg",
thumbnail: "https://cdn-images-1.listennotes.com/podcasts/darknet-diaries-jack-rhysider-V3-nWQFLgUx-ztuNyvC2F_O.300x300.jpg",
listennotes_url: "https://www.listennotes.com/c/e3794af26c2140e2ac74d00395e59201/"
},
{
title: "expediTIously with Tip \"T.I.\" Harris",
publisher: "PodcastOne",
image: "https://cdn-images-1.listennotes.com/podcasts/expeditiously-with-tip-ti-harris-Gq4hojJa6Nc-oiIjYDg6qX5.300x300.jpg",
thumbnail: "https://cdn-images-1.listennotes.com/podcasts/expeditiously-with-tip-ti-harris-Gq4hojJa6Nc-oiIjYDg6qX5.300x300.jpg",
listennotes_url: "https://www.listennotes.com/c/c14824b7cbe04ac0b9062735ee252a22/"

},
{
title: "Start Today Morning Show",
publisher: "Rachel Hollis",
image: "https://cdn-images-1.listennotes.com/podcasts/start-today-morning-show-rachel-hollis-qG3fD4C76YQ-j7L1Xpuk-IQ.300x300.jpg",
thumbnail: "https://cdn-images-1.listennotes.com/podcasts/start-today-morning-show-rachel-hollis-qG3fD4C76YQ-j7L1Xpuk-IQ.300x300.jpg",
listennotes_url: "https://www.listennotes.com/c/52c09af60c334084a260876fde406b7b/"
},
{
title: "Fantasy Footballers - Fantasy Football Podcast",
publisher: "Fantasy Football",
image: "https://cdn-images-1.listennotes.com/podcasts/fantasy-footballers-fantasy-football-REqXz1_8T4d.300x300.jpg",
thumbnail: "https://cdn-images-1.listennotes.com/podcasts/fantasy-footballers-fantasy-football-REqXz1_8T4d.300x300.jpg",
listennotes_url: "https://www.listennotes.com/c/5555bfa31e624f2789dc130f2f137b17/"

},
{
title: "ED MYLETT SHOW",
publisher: "Ed Mylett",
image: "https://cdn-images-1.listennotes.com/podcasts/ed-mylett-show-ed-mylett-PEUIT9RBhZD.300x300.jpg",
thumbnail: "https://cdn-images-1.listennotes.com/podcasts/ed-mylett-show-ed-mylett-PEUIT9RBhZD.300x300.jpg",
listennotes_url: "https://www.listennotes.com/c/ee84d7d11875465fb89487675ff5425d/"
},
{     
title: "1619",
publisher: "The New York Times",
image: "https://cdn-images-1.listennotes.com/podcasts/1619-the-new-york-times-YuTOi_q4RPz-Mgbv8_2FdjL.300x300.jpg",
thumbnail: "https://cdn-images-1.listennotes.com/podcasts/1619-the-new-york-times-YuTOi_q4RPz-Mgbv8_2FdjL.300x300.jpg",
listennotes_url: "https://www.listennotes.com/c/8053cddc73164af092932b2427af8458/"
},
{

title: "Keepin It Bute",
publisher: "Star Brim",
image: "https://cdn-images-1.listennotes.com/podcasts/keepin-it-bute-m9YxfTkroVL-yjbDRaZoE8Y.300x300.jpg",
thumbnail: "https://cdn-images-1.listennotes.com/podcasts/keepin-it-bute-m9YxfTkroVL-yjbDRaZoE8Y.300x300.jpg",
listennotes_url: "https://www.listennotes.com/c/5de6da1be83041888c4f53ade158dda4/"
},
{
title: "Creative Processing with Joseph Gordon-Levitt",
publisher: "HITRECORD & Cadence13",
image: "https://cdn-images-1.listennotes.com/podcasts/creative-processing-with-joseph-gordon-2SPf3_o0aZm-pxrWLFPRzm1.300x300.jpg",
thumbnail: "https://cdn-images-1.listennotes.com/podcasts/creative-processing-with-joseph-gordon-2SPf3_o0aZm-pxrWLFPRzm1.300x300.jpg",
listennotes_url: "https://www.listennotes.com/c/997ee20b87814d82b5ad41701fb34b51/"

},
{
title: "Today in True Crime ",
publisher: "Parcast Network",
image: "https://cdn-images-1.listennotes.com/podcasts/today-in-true-crime-parcast-network-LT5Zeyrn2pb-j1m3WXIeuY0.300x300.jpg",
thumbnail: "https://cdn-images-1.listennotes.com/podcasts/today-in-true-crime-parcast-network-LT5Zeyrn2pb-j1m3WXIeuY0.300x300.jpg",
listennotes_url: "https://www.listennotes.com/c/e38f7a0c0f98491183e59ef47b9dc600/"
},
{
title: "The Killing of Marilyn Monroe",
publisher: "Endeavor Audio & Broad + Water Studios",
image: "https://cdn-images-1.listennotes.com/podcasts/the-killing-of-marilyn-monroe-broad-water-E_XkIb2Vaon-wWUzyNdR68_.300x300.jpg",
thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-killing-of-marilyn-monroe-broad-water-E_XkIb2Vaon-wWUzyNdR68_.300x300.jpg",
listennotes_url: "https://www.listennotes.com/c/1ebc0646e8df4f618fd4b31c309806f1/"
},
{
title: "The Steve Austin Show",
publisher: "PodcastOne",
image: "https://cdn-images-1.listennotes.com/podcasts/the-steve-austin-show-podcastone-pXhFIzluS-N.300x300.jpg",
thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-steve-austin-show-podcastone-pXhFIzluS-N.300x300.jpg",
listennotes_url: "https://www.listennotes.com/c/c8ecb3444d984191bf7a168a26db5194/"
},
{
title: "Hit Man",
publisher: "iHeartRadio",
image: "https://cdn-images-1.listennotes.com/podcasts/hit-man-iheartradio-ri3g_qaSDAY-Ja_v48ZXNgn.300x300.jpg",
thumbnail: "https://cdn-images-1.listennotes.com/podcasts/hit-man-iheartradio-ri3g_qaSDAY-Ja_v48ZXNgn.300x300.jpg",
listennotes_url: "https://www.listennotes.com/c/14e01144bb2f433b856005fba39207b0/"
},
{
title: "Waveform: The MKBHD Podcast",
publisher: "Studio71",
image: "https://cdn-images-1.listennotes.com/podcasts/waveform-the-mkbhd-podcast-studio71-AB2jG74lwKC-vliqrx6DSMG.300x300.jpg",
thumbnail: "https://cdn-images-1.listennotes.com/podcasts/waveform-the-mkbhd-podcast-studio71-AB2jG74lwKC-vliqrx6DSMG.300x300.jpg",
listennotes_url: "https://www.listennotes.com/c/43d3d20981c747c7afe969d6a997243f/"
},
{
title: "88 Days: The Jayme Closs Story",
publisher: "KARE 11 | VAULT Studios",
image: "https://cdn-images-1.listennotes.com/podcasts/88-days-the-jayme-closs-story-kare-11-vault-KdLoUG3pvCD-ANrCMotX_EG.300x300.jpg",
thumbnail: "https://cdn-images-1.listennotes.com/podcasts/88-days-the-jayme-closs-story-kare-11-vault-KdLoUG3pvCD-ANrCMotX_EG.300x300.jpg",
listennotes_url: "https://www.listennotes.com/c/c131d42e3c3446af87975e0b9dcb2a8d/"
},
{
title: "The Snatchelor",
publisher: "Toast News Network",
image: "https://cdn-images-1.listennotes.com/podcasts/the-snatchelor-toast-news-network-VGIK1CAraW6-yXLBWQFtY5A.300x300.jpg",
thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-snatchelor-toast-news-network-VGIK1CAraW6-yXLBWQFtY5A.300x300.jpg",
listennotes_url: "https://www.listennotes.com/c/175ddc8575954b839f5386793cfb9625/"
},
{
title: "Dateline NBC",
publisher: "NBC News",
image: "https://cdn-images-1.listennotes.com/podcasts/dateline-nbc-nbc-news-WmCTLz1UGVA-aSOM3Nln0KL.300x300.jpg",
thumbnail: "https://cdn-images-1.listennotes.com/podcasts/dateline-nbc-nbc-news-WmCTLz1UGVA-aSOM3Nln0KL.300x300.jpg",
listennotes_url: "https://www.listennotes.com/c/d31a63613c5c461cb4b400f8f61d7362/"
},
{
title: "Medical Mysteries ",
publisher: "Parcast Network",
image: "https://cdn-images-1.listennotes.com/podcasts/medical-mysteries-parcast-network-NFx4fXz8euc-uj-qOU3z04V.300x300.jpg",
thumbnail: "https://cdn-images-1.listennotes.com/podcasts/medical-mysteries-parcast-network-NFx4fXz8euc-uj-qOU3z04V.300x300.jpg",
listennotes_url: "https://www.listennotes.com/c/3430f8559d0841b3bb063510b69ee79d/"
},
{
title: "The Ben and Ashley I Almost Famous Podcast",
publisher: "iHeartRadio",
image: "https://cdn-images-1.listennotes.com/podcasts/the-ben-and-ashley-i-almost-famous-podcast-YxnoFUslVhE-vQF8ReWCVEL.300x300.jpg",
thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-ben-and-ashley-i-almost-famous-podcast-YxnoFUslVhE-vQF8ReWCVEL.300x300.jpg",
listennotes_url: "https://www.listennotes.com/c/7a669afc9cca4655a4990fd51155856e/"
},
{
title: "The Viall Files",
publisher: "Nick Viall",
image: "https://cdn-images-1.listennotes.com/podcasts/the-viall-files-nick-viall-KLtR-nXjJei-mkg19arsBlH.300x300.jpg",
thumbnail: "https://cdn-images-1.listennotes.com/podcasts/the-viall-files-nick-viall-KLtR-nXjJei-mkg19arsBlH.300x300.jpg",
listennotes_url: "https://www.listennotes.com/c/63e1f5fd29754b8ea0f6de9701d60a15/"
}
])






# Post.create({content: "fake news", likes: Faker::Number.between(from: 1, to: 50), user_id: 1, friend_id: 2})
# Post.create({content: "good to know", likes: Faker::Number.between(from: 1, to: 50), user_id: 2, friend_id: 1})
# Post.create({content: "hello world", likes: Faker::Number.between(from: 1, to: 50), user_id: 3, friend_id: 4})
# Post.create({content: "your posts are trash", likes: Faker::Number.between(from: 1, to: 50), user_id: 4, friend_id: 3})

# Comment.create({user_id: 1, post_id: 2, comment: "comment 1"})
# Comment.create({user_id: 2, post_id: 3, comment: "comment 2"})
# Comment.create({user_id: 3, post_id: 4, comment: "comment 3"})
# Comment.create({user_id: 4, post_id: 1, comment: "comment 4"})

# Like.create({user_id: 1, post_id: 2})
# Like.create({user_id: 2, post_id: 3})
# Like.create({user_id: 1, post_id: 1})
# Like.create({user_id: 4, post_id: 2})
# Like.create({user_id: 1, post_id: 2})
# Like.create({user_id: 1, post_id: 3})
# Like.create({user_id: 3, post_id: 4})
# Like.create({user_id: 4, post_id: 4})



# Relationship.create({friend_id: 2, user_id: 1})
# Relationship.create({friend_id: 3, user_id: 2})
# Relationship.create({friend_id: 4, user_id: 3})
# Relationship.create({friend_id: 1, user_id: 5})
# Relationship.create({friend_id: 2, user_id: 7})
# Relationship.create({friend_id: 13, user_id: 8})
# Relationship.create({friend_id: 10, user_id: 14})
# Relationship.create({friend_id: 16, user_id: 11})