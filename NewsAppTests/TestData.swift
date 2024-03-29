//
//  TestData.swift
//  NewsApp
//
//  Created by Rahmonali on 25/02/24.
//

import Foundation

let mockNewsData: Data = """
{
"status": "ok",
"totalResults": 36,
"articles": [
{
"source": {
"id": "cnn",
"name": "CNN"
},
"author": "Kevin Liptak, Michael Williams",
"title": "Biden meets with Navalny family in California, pledges sanctions against Putin - CNN",
"description": "President Joe Biden met Thursday with the wife and daughter of the late Russian opposition leader Alexey Navalny, the White House said, as the president prepares to levy additional sanctions against Russia.",
"url": "https://www.cnn.com/2024/02/22/politics/biden-meets-with-navalny-family-in-california/index.html",
"urlToImage": "https://media.cnn.com/api/v1/images/stellar/prod/gg9zdbnwoaahn-q.jpg?c=16x9&q=w_800,c_fill",
"publishedAt": "2024-02-23T09:51:00Z",
"content": "President Joe Biden met Thursday with the wife and daughter of the late Russian opposition leader Alexey Navalny, the White House said, as the president prepares to levy additional sanctions against … [+4507 chars]"
},
{
"source": {
"id": "axios",
"name": "Axios"
},
"author": "Axios",
"title": "Scoop: House GOP rushes to distance from Alabama IVF ruling - Axios",
"description": null,
"url": "https://www.axios.com/2024/02/22/house-republicans-alabama-ivf-ruling",
"urlToImage": null,
"publishedAt": "2024-02-23T09:09:56Z",
"content": null
},
{
"source": {
"id": "al-jazeera-english",
"name": "Al Jazeera English"
},
"author": "Al Jazeera",
"title": "Vice Media to close flagship site, slash hundreds of staff - Al Jazeera English",
"description": "Media group the latest in a string of outlets to shed jobs amid collapsing revenues in the digital era.",
"url": "https://www.aljazeera.com/economy/2024/2/23/vice-media-to-close-flagship-site-slash-hundreds-of-staff",
"urlToImage": "https://www.aljazeera.com/wp-content/uploads/2024/02/DSC04349-2-e1617891290703-1708667321.jpg?resize=1920%2C1333",
"publishedAt": "2024-02-23T07:37:06Z",
"content": "Vice Media, the edgy media outlet that courted millennials and Gen Z, has announced it will cease publishing new content on its flagship website and lay off several hundred staff in the latest blow t… [+2309 chars]"
},
{
"source": {
"id": null,
"name": "Daily Beast"
},
"author": "AJ McDougall",
"title": "Andy Cohen Responds to 'RHOBH' Star Brandi Glanville's Sexual Harassment Allegations - The Daily Beast",
"description": "The Bravo boss apologized, but said that a video allegedly showing him inviting Brandi Glanville to watch a sexual act over FaceTime was “absolutely meant in jest.”",
"url": "https://www.thedailybeast.com/andy-cohen-responds-to-rhobh-star-brandi-glanvilles-sexual-harassment-allegations",
"urlToImage": "https://img.thedailybeast.com/image/upload/c_crop,d_placeholder_euli9k,h_1688,w_3000,x_0,y_0/dpr_2.0/c_limit,w_740/fl_lossy,q_auto/v1708656504/Blank_3000_x_1688_11_cskym6",
"publishedAt": "2024-02-23T07:13:44Z",
"content": "Andy Cohen acknowledged that a video hed sent to a former Real Housewives of Beverly Hillsstar that she claimed was sexually harassing was totally inappropriate, but insisted that it had been sentand… [+2973 chars]"
},
{
"source": {
"id": null,
"name": "Theregister.com"
},
"author": "Simon Sharwood",
"title": "NASA warns of strong solar flare • The Register - The Register",
"description": "No, this was not the cause of cellular network outages that hit the USA on Thursday",
"url": "https://www.theregister.com/2024/02/23/solar_flare_warning/",
"urlToImage": "https://regmedia.co.uk/2024/02/23/supplied_nasa_solar_flare_crop.jpg",
"publishedAt": "2024-02-23T06:31:00Z",
"content": "NASA has warned of strong solar flares that have the potential to interrupt communications in space and down here on Earth.\r\nThe aerospace agency on Thursday posted news of a flare that peaked at 5:3… [+1898 chars]"
},
{
"source": {
"id": "associated-press",
"name": "Associated Press"
},
"author": null,
"title": "Trump documents case: Lawyers claim presidential immunity protects him - The Associated Press",
"description": "Former President Donald Trump’s legal team has filed multiple motions urging a Florida judge to dismiss the criminal case charging him with illegally retaining classified documents. They claim in part that presidential immunity protects him from prosecution —…",
"url": "https://apnews.com/article/trump-classified-documents-immunity-maralago-cfbb3a9cc50495da1652fa63315dcb05",
"urlToImage": "https://dims.apnews.com/dims4/default/6f3494e/2147483647/strip/true/crop/3393x1909+0+177/resize/1440x810!/quality/90/?url=https%3A%2F%2Fassets.apnews.com%2F65%2F13%2F7f2240bd55102217b12723cb0e6b%2F8a63425a8fc64643ab5bb5b9f2b41922",
"publishedAt": "2024-02-23T05:27:00Z",
"content": "WASHINGTON (AP) Former President Donald Trumps legal team filed multiple motions Thursday night urging a Florida judge to dismiss the criminal case charging him with illegally retaining classified do… [+2295 chars]"
},
{
"source": {
"id": null,
"name": "KABC-TV"
},
"author": null,
"title": "SpaceX launch lights up the Southern California skies as Falcon 9 delivers more Starlink satellites to network - KABC-TV",
"description": "The Falcon 9 rocket was deploying 22 Starlink satellites to join the existing SpaceX satellite network already orbiting Earth.",
"url": "https://abc7.com/spacex-launch-falcon-9-rocket-starlink-satellite-vandenberg-air-force-base/14459281/",
"urlToImage": "https://cdn.abcotvs.com/dip/images/14459277_022224-kabc-a7-spacex-launch-vid.jpg?w=1600",
"publishedAt": "2024-02-23T04:39:00Z",
"content": "LOS ANGELES (KABC) -- A SpaceX launch created a bright fiery sight in the Southern California skies Thursday night.\r\nThe Falcon 9 rocket was deploying 22 Starlink satellites to join the company's exi… [+582 chars]"
},
{
"source": {
"id": null,
"name": "YouTube"
},
"author": null,
"title": "Wendy Williams diagnosed with frontotemporal dementia and aphasia - KTLA 5",
"description": "Enjoy the videos and music you love, upload original content, and share it all with friends, family, and the world on YouTube.",
"url": "https://www.youtube.com/watch?v=Bqp91XPvdX8",
"urlToImage": null,
"publishedAt": "2024-02-23T03:36:58Z",
"content": null
},
{
"source": {
"id": "the-hill",
"name": "The Hill"
},
"author": "Lauren Irwin",
"title": "‘Norovirus’ slams Northeast US hardest in recent weeks: CDC - The Hill",
"description": "A stomach virus known as the “norovirus” is spreading across the Northeast region of the United States, according to data from the Centers for Disease Control and Prevention (CDC). The three-week average positive tests for norovirus in the region reached 13.9…",
"url": "https://thehill.com/policy/healthcare/4484460-norovirus-slams-northeast-us-hardest-in-recent-weeks-cdc/",
"urlToImage": "https://thehill.com/wp-content/uploads/sites/2/2023/05/CDC.png?w=1280",
"publishedAt": "2024-02-23T03:07:00Z",
"content": "Skip to content\r\nA stomach virus known as the “norovirus” is spreading across the Northeast region of the United States, according to data from the Centers for Disease Control and Prevention (CDC).\r\n… [+1568 chars]"
},
{
"source": {
"id": null,
"name": "The Athletic"
},
"author": "The Athletic MLB Staff",
"title": "Nike's MLB uniform rollout reaches new stage of frustration — a pants shortage - The Athletic",
"description": "“The universal concern,” MLBPA executive director Tony Clark says, “is the pant.”",
"url": "https://theathletic.com/5293760/2024/02/22/mlb-uniforms-pants-shortage-nike-fanatics/",
"urlToImage": "https://cdn.theathletic.com/app/uploads/2024/02/22171849/0222Reds-scaled.jpg",
"publishedAt": "2024-02-23T02:57:03Z",
"content": "By Stephen J. Nesbitt, Patrick Mooney and C. Trent Rosecrans\r\nGOODYEAR, Ariz. When players walked into the Cincinnati Reds clubhouse on Thursday morning, they found white and gray baseball pants on t… [+9338 chars]"
},
{
"source": {
"id": null,
"name": "New York Post"
},
"author": "Victor Nava",
"title": "FBI informant accused of lying about $10M Biden bribery allegation rearrested under ‘bizarre circumstances’ - New York Post ",
"description": "Alexander Smirnov, 43, was taken into custody at the downtown Las Vegas law offices of his attorneys, David Chesnoff and Richard Schonfeld, as he consulted with them on his case, court documents sh…",
"url": "https://nypost.com/2024/02/22/us-news/fbi-informant-accused-of-lying-about-biden-bribery-allegation-rearrested/",
"urlToImage": "https://nypost.com/wp-content/uploads/sites/2/2024/02/fbi-informant-accused-lying-biden-76994384.jpg?quality=75&strip=all&w=1024",
"publishedAt": "2024-02-23T02:54:11Z",
"content": "The FBI informant accused by special counsel David Weiss of fabricating a $10 million bribery allegation against President Biden and first son Hunter was rearrested Thursday under what his lawyers ca… [+3284 chars]"
},
{
"source": {
"id": null,
"name": "BBC News"
},
"author": null,
"title": "Intuitive Machines: US company makes historic Moon landing - BBC.com",
"description": "Intuitive Machines completes the first ever lunar touchdown by a privately built spacecraft.",
"url": "https://www.bbc.com/news/science-environment-68377730",
"urlToImage": "https://ichef.bbci.co.uk/news/1024/branded_news/FE93/production/_132717156_im_moon_index.jpg",
"publishedAt": "2024-02-23T02:38:54Z",
"content": "Watch: There were celebrations in the control room as Nasa confirmed the Odysseus Moon landing\r\nAn American company has made history by becoming the first commercial outfit to put a spacecraft on the… [+4505 chars]"
},
{
"source": {
"id": "al-jazeera-english",
"name": "Al Jazeera English"
},
"author": "Al Jazeera",
"title": "Google pauses Gemini’s image tool for people after anti-‘woke’ backlash - Al Jazeera English",
"description": "Tech giant says model is ‘missing the mark’ after controversy over failure to depict white people.",
"url": "https://www.aljazeera.com/economy/2024/2/23/google-pauses-geminis-image-tool-for-people-after-anti-woke-backlash",
"urlToImage": "https://www.aljazeera.com/wp-content/uploads/2024/02/AP24053522088699-1708648604.jpg?resize=1920%2C1440",
"publishedAt": "2024-02-23T02:00:20Z",
"content": "Google has temporarily stopped its Gemini AI model from generating images of people following a backlash over its failure to depict white people.\r\nThe search engine giant made the announcement on Thu… [+1882 chars]"
},
{
"source": {
"id": null,
"name": "Deadline"
},
"author": "Lynette Rice",
"title": "So Long, Sam Waterston: How ‘Law & Order’ Bid Farewell To His Character Jack McCoy - Deadline",
"description": "How Law & Order Said Goodbye To Sam Waterston's Jack McCoy",
"url": "http://deadline.com/2024/02/sam-waterston-exit-law-and-order-jack-mccoy-1235833209/",
"urlToImage": "https://deadline.com/wp-content/uploads/2024/02/NUP_203326_01060.jpg?w=1024",
"publishedAt": "2024-02-23T02:00:00Z",
"content": "SPOILER ALERT! This story contains plot points from Thursday’s episode of Law &amp; Order.\r\nAfter more than 400 episodes, Sam Waterston walked out of the courthouse for the final time as District Att… [+2565 chars]"
},
{
"source": {
"id": "usa-today",
"name": "USA Today"
},
"author": "Marc Ramirez",
"title": "Oklahoma teenager's death brings term 'gender expansive' to the light - USA TODAY",
"description": "Gender expansive, a term around since at least 2012, has been put in the spotlight with the death of Oklahoma teen Nex Benedict. What the term means.",
"url": "https://www.usatoday.com/story/news/nation/2024/02/22/gender-expansive-nex-benedict-oklahoma/72700938007/",
"urlToImage": "https://www.usatoday.com/gcdn/-mm-/163eefd00a966dd25eeb369e191c3c09831aca94/c=0-123-3600-2157/local/-/media/2018/02/05/USATODAY/USATODAY/636534164413436285-AP-Transgender-Teens-Study.jpg?width=3200&height=1808&fit=crop&format=pjpg&auto=webp",
"publishedAt": "2024-02-23T01:58:30Z",
"content": "The death of 16-year-old Nex Benedict in the wake of a fight at an Owasso, Oklahoma, high school has drawn widespread attention after reports that the teen was long bullied for their gender identity,… [+5706 chars]"
},
{
"source": {
"id": null,
"name": "pgatour.com"
},
"author": "Jimmy Reinman",
"title": "Charlie Woods competes in first PGA TOUR pre-qualifier - PGA TOUR",
"description": "Woods’ first taste of TOUR pathways proves educational and entertaining",
"url": "https://www.pgatour.com/article/news/latest/2024/02/22/updates-charlie-woods-underway-at-the-cognizant-classic-pre-qualifier-palm-beaches-tiger-monday-five-and-ties-spots-scores",
"urlToImage": "https://res.cloudinary.com/pgatour-prod/w_1200,h_628,c_fill,f_auto/pgatour/news/editorial/2024/02/22/charlie-woods-qualifier.jpg",
"publishedAt": "2024-02-23T01:57:36Z",
"content": "Woods first taste of TOUR pathways proves educational and entertaining\r\nWritten by Jimmy Reinman\r\nHOBE SOUND, Fla. - Charlie Woods competed Thursday at the Cognizant Classic in The Palm Beaches' pre-… [+4211 chars]"
},
{
"source": {
"id": null,
"name": "PBS"
},
"author": "Nick Schifrin, Dan Sagalyn, Sonia Kopelev",
"title": "Experts analyze state of Ukraine war 2 years into Russia's invasion - PBS NewsHour",
"description": "Saturday marks two years since Russia's full-scale invasion of Ukraine. With the conflict at a frozen and brutal stalemate, Nick Schifrin discussed where the war is, where it could go and U.S. policy toward Ukraine with Michael Kofman, John Mearsheimer and Re…",
"url": "https://www.pbs.org/newshour/show/experts-analyze-state-of-ukraine-war-2-years-into-russias-invasion",
"urlToImage": "https://d3i6fh83elv35t.cloudfront.net/static/2024/02/RussianInvasion-1-1024x720.jpg",
"publishedAt": "2024-02-23T01:34:47Z",
"content": "Nick Schifrin:\r\nIn two years, countless wives now widows, sons now orphans, the dead stolen of their dignity and 10 million forced to flee their homes, the largest refugee crisis since World War II. … [+2689 chars]"
},
{
"source": {
"id": "the-washington-post",
"name": "The Washington Post"
},
"author": "Lena H. Sun, Lauren Weber",
"title": "Florida surgeon general defies science amid measles outbreak - The Washington Post",
"description": "Florida surgeon general Joseph A. Ladapo failed to urge parents to vaccinate their children or keep unvaccinated students home from school as a precaution.",
"url": "https://www.washingtonpost.com/health/2024/02/22/florida-measles-outbreak-ladapo/",
"urlToImage": "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/HNJXYMUF7EI6ZFI4DYGMG4R6KM.jpg&w=1440",
"publishedAt": "2024-02-23T01:26:22Z",
"content": "As a Florida elementary school tries to contain a growing measles outbreak, the states top health official is giving advice that runs counter to science and may leave unvaccinated children at risk of… [+6871 chars]"
},
{
"source": {
"id": "techcrunch",
"name": "TechCrunch"
},
"author": "Zack Whittaker",
"title": "UnitedHealth says Change Healthcare hacked by nation state, as pharmacy outages drag on - TechCrunch",
"description": "The health tech giant processes billions of healthcare transactions annually and handles patient data for one-third of Americans.",
"url": "https://techcrunch.com/2024/02/22/unitedhealth-change-healthcare-hacked-nation-state-outage/",
"urlToImage": "https://techcrunch.com/wp-content/uploads/2024/02/unitedhealth-group-change-healthcare-cyberattack.jpg?resize=1200,800",
"publishedAt": "2024-02-23T01:20:00Z",
"content": "U.S. health insurance giant UnitedHealth Group said Thursday in a filing with government regulators that its subsidiary Change Healthcare was compromised likely by government-backed hackers.\r\nIn a fi… [+1388 chars]"
},
{
"source": {
"id": "fox-news",
"name": "Fox News"
},
"author": "Sarah Rumpf-Whitten",
"title": "4 charged after seizure of suspected Iranian-made weapons in vessel that led to deaths of 2 Navy SEALs: DOJ - Fox News",
"description": "Four foreign nationals who were allegedly transporting Iranian-made weapons on a vessel were intercepted by U.S. military personnel, the Department of Justice said. Two Navy SEALS died in the mission.",
"url": "https://www.foxnews.com/world/four-charged-after-seizure-suspected-iranian-weapons-vessel-deaths-two-navy-seals-doj",
"urlToImage": "https://static.foxnews.com/foxnews.com/content/uploads/2024/01/sealsplit.jpg",
"publishedAt": "2024-02-23T01:08:00Z",
"content": "Join Fox News for access to this content\r\nPlus get unlimited access to thousands of articles, videos and more with your free account!\r\nPlease enter a valid email address.\r\nBy entering your email, you… [+3912 chars]"
}
]
}
""".data(using: .utf8)!
