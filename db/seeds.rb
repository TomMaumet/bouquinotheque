FriendRelationship.destroy_all

User.destroy_all

PlaylistItem.destroy_all

Suggestion.destroy_all

Playlist.destroy_all

puts "Création des utilisateurs"

user1 = User.create!(
  nickname: "Admin",
  email: "admin@mail.fr",
  password: 'password',
  password_confirmation: 'password',
  avatar: "https://i.imgur.com/WdjuE7y.jpeg",
  city: "Paris",
  age: 30,
  thriller_score: 5,
  romance_score: 5,
  aventure_score: 5,
  jeunesse_score: 5,
)
user2 = User.create!(
  nickname: "Thomas",
  email: "thomas@mail.fr",
  password: 'password',
  password_confirmation: 'password',
  avatar: "https://i.imgur.com/6VpQxPy.jpeg",
  city: "Bordeaux",
  age: 30,
  thriller_score: 5,
  romance_score: 5,
  aventure_score: 5,
  jeunesse_score: 5,
)
user3 = User.create!(
  nickname: "Bastien",
  email: "bastien@mail.fr",
  password: 'password',
  password_confirmation: 'password',
  avatar: "https://i.imgur.com/Mr2E09v.png",
  city: "Bayonne",
  age: 26,
  thriller_score: 5,
  romance_score: 5,
  aventure_score: 5,
  jeunesse_score: 5,
)

user4 = User.create!(
  nickname: "Camille",
  email: "camille@mail.fr",
  password: 'password',
  password_confirmation: 'password',
  avatar: "https://i.imgur.com/7VtAuwV.jpeg",
  city: "Toulouse",
  age: 25,
  thriller_score: 5,
  romance_score: 5,
  aventure_score: 5,
  jeunesse_score: 5
)

user5 = User.create!(
  nickname: "Clément",
  email: "clement@mail.fr",
  password: 'password',
  password_confirmation: 'password',
  avatar: "https://i.imgur.com/0KMkG5w.jpeg",
  city: "Bordeaux",
  age: 27,
  thriller_score: 5,
  romance_score: 5,
  aventure_score: 5,
  jeunesse_score: 5
)

user6 = User.create!(
  nickname: "Benoît",
  email: "benoit@mail.fr",
  password: 'password',
  password_confirmation: 'password',
  avatar: "https://i.imgur.com/ovyPevZ.jpeg",
  city: "Bordeaux",
  age: 35,
  thriller_score: 5,
  romance_score: 5,
  aventure_score: 5,
  jeunesse_score: 5,
)

user7 = User.create!(
  nickname: "Téo",
  email: "teo@mail.fr",
  password: 'password',
  password_confirmation: 'password',
  avatar: "https://i.imgur.com/8DFOiZK.png",
  city: "Bordeaux",
  age: 22,
  thriller_score: 5,
  romance_score: 5,
  aventure_score: 5,
  jeunesse_score: 5,
)

user8 = User.create!(
  nickname: "Marine",
  email: "marine@mail.fr",
  password: 'password',
  password_confirmation: 'password',
  avatar: "https://i.imgur.com/EFCygUT.jpeg",
  city: "Bordeaux",
  age: 25,
  thriller_score: 5,
  romance_score: 5,
  aventure_score: 5,
  jeunesse_score: 5,
)

user9 = User.create!(
  nickname: "Honorine",
  email: "honorine@mail.fr",
  password: 'password',
  password_confirmation: 'password',
  avatar: "https://i.imgur.com/qJSo7Px.jpeg",
  city: "Bordeaux",
  age: 24,
  thriller_score: 5,
  romance_score: 5,
  aventure_score: 5,
  jeunesse_score: 5
)

user10 = User.create!(
  nickname: "Hugo",
  email: "hugo@mail.fr",
  password: 'password',
  password_confirmation: 'password',
  avatar: "https://i.imgur.com/j2AGbGP.jpeg",
  city: "Bordeaux",
  age: 20,
  thriller_score: 5,
  romance_score: 5,
  aventure_score: 5,
  jeunesse_score: 5
)

user11 = User.create!(
  nickname: "Stéphane",
  email: "stephane@mail.fr",
  password: 'password',
  password_confirmation: 'password',
  avatar: "https://i.imgur.com/YCEMoJQ.jpeg",
  city: "Bordeaux",
  age: 34,
  thriller_score: 5,
  romance_score: 5,
  aventure_score: 5,
  jeunesse_score: 5
)

user12 = User.create!(
  nickname: "Étienne",
  email: "etienne@mail.fr",
  password: 'password',
  password_confirmation: 'password',
  avatar: "https://i.imgur.com/DVCED8n.png",
  city: "Bordeaux",
  age: 36,
  thriller_score: 5,
  romance_score: 5,
  aventure_score: 5,
  jeunesse_score: 5
)

puts 'Utilisateurs créés'

Book.destroy_all

puts "Création des livres"

book1 = Book.create!(
  title: "Dune",
  summary: "Il n'y a pas, dans tout l'Empire, de planète plus inhospitalière que Dune. Partout des sables à perte de vue. Une seule richesse : l'épice de longue vie, née du désert, et que tout l'univers achète à n'importe quel prix.
  Richesse très convoitée : quand Leto Atréides reçoit Dune en fief, il flaire le piège. Il aura besoin des guerriers Fremen qui, réfugiés au fond du désert, se sont adaptés à une vie très dure en préservant leur liberté, leurs coutumes et leur foi mystique. Ils rêvent du prophète qui proclamera la guerre sainte et qui, à la tête des commandos de la mort, changera le cours de l'histoire.
  Cependant les Révérendes Mères du Bene Gesserit poursuivent leur programme millénaire de sélection génétique ; elles veulent créer un homme qui concrétisera tous les dons latents de l'espèce. Tout est fécond dans ce royaume, y compris ses défaillances.
  Le Messie des Fremen est-il déjà né dans l'Empire ?",
  author: "Frank Herbert",
  genre: "science-fiction",
  publisher: "Robert Laffont",
  publishing_year: 1970,
  EAN: "9782221252055",
  book_type: "roman",
  ratings: 4.32,
  image_url: "https://i.imgur.com/TJhapDH.jpeg",
  thriller_score: 4,
  romance_score: 5,
  aventure_score: 9,
  jeunesse_score: 7
)

book2 = Book.create!(
  title: "Huis clos",
  summary: "Un publiciste adultère fusillé pour avoir déserté, une jeune bourgeoise qui a noyé son enfant et poussé son amant au suicide, une employée des postes lesbienne qui a peut-être une mort sur la conscience : les trois se retrouvent en Enfer. Contrairement à ce qu’ils croyaient, l’Enfer n’est pas une chambre de torture mais un salon Second Empire où ils vont – éternellement – s’épier, se provoquer, tenter de se séduire et surtout se déchirer.",
  author: "Jean-Paul Sartre",
  genre: "théâtre",
  publisher: "Gallimard",
  publishing_year: 1947,
  EAN: "9782070368075",
  book_type: "roman",
  ratings: 3.97,
  image_url: "https://i.imgur.com/5bcIyNE.jpeg",
  thriller_score: 6,
  romance_score: 3,
  aventure_score: 4,
  jeunesse_score: 2
)

book3 = Book.create!(
  title: "L'étranger",
  summary: "Meursault reçoit un télégramme annonçant que sa mère, qu'il a placée à l’hospice de Marengo, vient de mourir. Il se rend en autocar à l’asile de vieillards, situé près d’Alger. Veillant la morte toute la nuit, il assiste le lendemain à la mise en bière et aux funérailles, sans avoir l'attitude attendue d’un fils endeuillé ; le protagoniste ne pleure pas, il ne veut pas simuler un chagrin qu'il ne ressent pas.",
  author: "Albert Camus",
  genre: "absurde",
  publisher: "Gallimard",
  publishing_year: 1042,
  EAN: "9782070360024",
  book_type: "roman",
  ratings: 3.98,
  image_url: "https://i.imgur.com/vBFMVs9.jpeg",
  thriller_score: 7,
  romance_score: 6,
  aventure_score: 4,
  jeunesse_score: 1
)

book4 = Book.create!(
  title: "L'Assassin royal, tome 1 : L'Apprenti assassin",
  summary: "Au château de Castelcerf le roi Subtil Loinvoyant règne sur les Six Duchés ; il est aidé dans sa lourde tâche par son fils Chevalerie qui, comme son père et tous les nobles du royaume, porte le nom de la qualité que ses parents espéraient le voir développer. Ainsi le frère du Roi-servant s'appelle-t-il Vérité et leur demi-frère, né d'un second lit, Royal. Suite à une aventure restée inconnue de tous, Chevalerie donne à la lignée un nouveau descendant : un bâtard, dont la simple existence va bouleverser le fragile équilibre qu'avait établi le roi pour contrôler ses turbulents fils. Ce héros malgré lui, nommé Fitz, voit son avenir s'assombrir au fil du temps. Alors que les autres enfants ont déjà leur place à la cour et dans ses intrigues, lui devra la mériter et servir la couronne en devenant ce que personne ne voulait être : l'Assassin royal. Au service de son roi, il apprendra les poisons, le meurtre et la trahison...",
  author: "Robin Hobb",
  genre: "fantasy",
  publisher: "Pygmalion",
  publishing_year: 1998,
  EAN: "9782290352625",
  book_type: "roman",
  image_url: "https://i.imgur.com/qHlk143.jpeg",
  ratings: 4.34,
  thriller_score: 6,
  romance_score: 2,
  aventure_score: 10,
  jeunesse_score: 8
)

book5 = Book.create!(
  title: "La Crise de la culture",
  summary: "L'homme se tient sur une brèche, dans l'intervalle entre le passé révolu et l'avenir inconnaissable. Il ne peut s'y tenir que dans la mesure où il pense, brisant ainsi, par sa résistance aux forces du passé infini et du futur infini, le flux du temps indifférent.
  Chaque génération nouvelle, chaque homme nouveau doit redécouvrir laborieusement l'activité de pensée. Longtemps, pour ce faire, on put recourir à la tradition. Or nous vivons, à l'âge moderne, l'usure de la tradition, la crise de la culture.",
  author: "Hannah Arendt",
  genre: "philosophie",
  publisher: "Gallimard",
  publishing_year: 1972,
  EAN: "9782070325030",
  book_type: "essai",
  ratings: 3.98,
  image_url: "https://i.imgur.com/gcxaF5l.jpeg",
  thriller_score: 2,
  romance_score: 1,
  aventure_score: 3,
  jeunesse_score: 2
)

book6 = Book.create!(
  title: "Le Seigneur des anneaux, tome 1 : La fraternité de l'anneau",
  summary: "Le récit des aventures de Frodo et de ses compagnons, traversant la Terre du Milieu au péril de leur vie pour détruire l'Anneau forgé par Sauron",
  author: "J.R.R Tolkien",
  genre: "fantasy",
  publisher: "Gallimard",
  publishing_year: 1954,
  EAN: "9782075134040",
  book_type: "roman",
  ratings: 4.38,
  image_url: "https://i.imgur.com/9I2ySb7.jpeg",
  thriller_score: 3,
  romance_score: 3,
  aventure_score: 8,
  jeunesse_score: 4
)

book7 = Book.create!(
  title: "La vérité sur l'affaire Harry Quebert",
  summary: "Marcus Goldman, jeune écrivain à succès, est dans la tourmente: il est incapable d'écrire le nouveau roman qu'il doit remettre à son éditeur d'ici quelques mois.
  Le délai est près d'expirer quand soudain tout bascule pour lui : son ami et ancien professeur d'université, Harry Quebert, l'un des écrivains les plus respectés du pays, est rattrapé par son passé et se retrouve accusé d'avoir assassiné, en 1975, Nola Kellergan, une jeune fille de 15 ans, avec qui il aurait eu une liaison.",
  author: "Joël Dicker",
  genre: "policier",
  publisher: "Gallimard",
  publishing_year: 2012,
  EAN: "9782877068161",
  book_type: "roman",
  ratings: 4.16,
  image_url: "https://i.imgur.com/eOEM3KZ.jpeg",
  thriller_score: 10,
  romance_score: 7,
  aventure_score: 5,
  jeunesse_score: 2
)

book8 = Book.create!(
  title: "L'insoutenable légèreté de l'être",
  summary: "Tereza est jalouse. Sa jalousie, domptée le jour, se réveille la nuit, déguisée en rêves qui sont en fait des poèmes sur la mort. Sur son long chemin, la jeune femme est accompagnée car son mari, Tomas, mi don-Juan, mi-Tristan, déchiré entre son amour pour elle et ses tentations libertines insurmontables.
  Le destin de Sabina, une des maîtresses de Tomas, étend le tissus du roman au monde entier. Intelligente, sentimentale, elle quitte Franz, son grand amour genevois, et court après sa liberté, d'Europe en Amérique",
  author: "Milan Kundera",
  genre: "romance",
  publisher: "Gallimard",
  publishing_year: 1984,
  EAN: "9782070381654",
  book_type: "roman",
  ratings: 4.14,
  image_url: "https://i.imgur.com/7SwaMM.jpeg",
  thriller_score: 7,
  romance_score: 8,
  aventure_score: 5,
  jeunesse_score: 2
)

book9 = Book.create!(
  title: "Moby Dick",
  summary: "Moby Dick, c’est la monstrueuse baleine blanche, l’incarnation du Mal, cette figure de l’obsession et du double qui, des profondeurs glacées, accompagne le capitaine Achab habitué en surface aux combats titanesques des océans. Moby Dick est ce chef-d’œuvre total que tout le monde peut lire comme le plus formidable des romans d’aventures ; la quête aussi d’une humanité embarquée de force à bord d’une histoire qui reste pour elle un mystère…",
  author: "Hermann Melville",
  genre: "aventure",
  publisher: "Flammarion",
  publishing_year: 1851,
  EAN: "9782080705464",
  book_type: "roman",
  ratings: 4.38,
  image_url: "https://i.imgur.com/AHFjmGb.jpeg",
  thriller_score: 7,
  romance_score: 4,
  aventure_score: 7,
  jeunesse_score: 8
)

book10 = Book.create!(
  title: "Les yeux jaunes des crocodiles",
  summary: "Ce roman se passe à Paris. Et pourtant on y croise des crocodiles.
  Ce roman parle des hommes. Et des femmes. Celles que nous sommes, celles que nous voudrions être, celles que nous ne serons jamais, celles que nous deviendrons peut-être.
  Ce roman est l'histoire d'un mensonge. Mais aussi une histoire d'amours, d'amitiés, de trahisons, d'argent, de rêves.
  Ce roman est plein de rires et de larmes. Ce roman, c'est la vie.",
  author: "Katherine Pancol",
  genre: "romance",
  publisher: "Le livre de Poche",
  publishing_year: 2007,
  EAN: "9782253121206",
  book_type: "roman",
  ratings: 3.66,
  image_url: "https://i.imgur.com/xdpKREB.jpeg",
  thriller_score: 6,
  romance_score: 9,
  aventure_score: 3,
  jeunesse_score: 4
)

book11 = Book.create!(
  title: "Chanson douce",
  summary: "Lorsque Myriam, mère de deux jeunes enfants, décide malgré les réticences de son mari de reprendre son activité au sein d'un cabinet d'avocats, le couple se met à la recherche d'une nounou. Après un casting sévère, ils engagent Louise, qui conquiert très vite l'affection des enfants et occupe progressivement une place centrale dans le foyer. Peu à peu le piège de la dépendance mutuelle va se refermer, jusqu'au drame.
  À travers la description précise du jeune couple et celle du personnage fascinant et mystérieux de la nounou, c'est notre époque qui se révèle, avec sa conception de l'amour et de l'éducation, des rapports de domination et d'argent, des préjugés de classe ou de culture.
  Le style sec et tranchant de Leïla Slimani, où percent des éclats de poésie ténébreuse, instaure dès les premières pages un suspense envoûtant.",
  author: "Leïla Slimani",
  genre: "thriller",
  publisher: "Gallimard",
  publishing_year: 2016,
  EAN: "9782072764929",
  book_type: "roman",
  ratings: 3.93,
  image_url: "https://i.imgur.com/Tmkfv7p.jpeg",
  thriller_score: 9,
  romance_score: 2,
  aventure_score: 4,
  jeunesse_score: 1
)

book12 = Book.create!(
  title: "La somme de nos vies",
  summary: "Camille, jeune fleuriste qui rêve sa vie, visite des appartements qu'elle n'a aucune intention d'acheter.
  Marguerite, quatre-vingt-sept ans, met en vente son appartement qu'elle s'est pourtant juré de ne jamais quitter.
  Derrière leurs fenêtres qui se font face, dans cette rue parisienne, la vie de l'une n'apparaît à l'autre qu'en reflet. Les mensonges de Camille à son entourage et les secrets de Marguerite enfouis soigneusement depuis l'enfance se croisent et se répondent.
  Comment prendre sa vie à bras-le-corps quand on a décidé d'en vivre une autre ?",
  author: "Sophie Astrabie",
  genre: "contemporain",
  publisher: "Flammarion",
  publishing_year: 2020,
  EAN: "9782290252437",
  book_type: "roman",
  ratings: 4.07,
  image_url: "https://i.imgur.com/nhpv5LI.jpeg",
  thriller_score: 1,
  romance_score: 8,
  aventure_score: 5,
  jeunesse_score: 2
)

book13 = Book.create!(
  title: "Hernani",
  summary: "Bien que soit voué à la vengeance, bien qu'elle soit promise au duc Gomez, Hernani et dona Sol s'aiment. L'intensité de cette passion déchire le cœur du héros. Parce que le père du roi a tué le sien, il se doit d'exécuter son fils ; toutefois, son cœur lui souffle de vivre. Unis et désunis par une femme, les trois hommes doivent choisir entre l'honneur et l'amour. Leur grandeur causera leur chute. Avec ses personnages excessifs, ses multiples intrigues, son mélange de rire et de larmes, Hernani est l'acte de naissance du théâtre romantique.",
  author: "Victor Hugo",
  genre: "drame",
  publisher: "Mame, Delaunay et Furne",
  publishing_year: 1830,
  EAN: "9782080709684",
  book_type: "pièce de théâtre",
  ratings: 3.53,
  image_url: "https://i.imgur.com/2AYS7l1.jpeg",
  thriller_score: 2,
  romance_score: 8,
  aventure_score: 4,
  jeunesse_score: 3
)

book14 = Book.create!(
  title: "En attendant Bojangles",
  summary: "Sous le regard émerveillé de leur fils, ils dansent sur «Mr. Bojangles» de Nina Simone. Leur amour est magique, vertigineux, une fête perpétuelle. Chez eux, il n’y a de place que pour le plaisir, la fantaisie et les amis.
  Celle qui donne le ton, qui mène le bal, c’est la mère, feu follet imprévisible et extravagant. C’est elle qui a adopté le quatrième membre de la famille, Mlle Superfétatoire, un grand oiseau exotique qui déambule dans l’appartement. C’est elle qui n’a de cesse de les entraîner dans un tourbillon de poésie et de chimères.
  Un jour, pourtant, elle va trop loin. Et père et fils feront tout pour éviter l’inéluctable, pour que la fête continue, coûte que coûte.
  L’amour fou n’a jamais si bien porté son nom.",
  author: "Olivier Bourdeaut",
  genre: "drame",
  publisher: "Finitude",
  publishing_year: 2016,
  EAN: "9782070782369",
  book_type: "roman",
  ratings: 4.12,
  image_url: "https://i.imgur.com/WaIuTTw.jpeg",
  thriller_score: 5,
  romance_score: 8,
  aventure_score: 4,
  jeunesse_score: 3
)

book15 = Book.create!(
  title: "Goupil ou face",
  summary: "Certains ont un chien, un chat ou un poisson rouge. Lou a une cyclothymie : un trouble de l’humeur de la famille des maladies bipolaires.
  Que faire quand on découvre un petit renard sauvage dans son cerveau ? Peut-on l’apprivoiser, le dompter ? Et comment être heureux quand on doit cohabiter avec une créature si imprévisible ?
  Un ouvrage de vulgarisation scientifique qui se nourrit de l’expérience personnelle de l’auteur pour dresser le portrait plein d’humour et de sensibilité d’un trouble psychiatrique encore largement méconnu.",
  author: "Lou Lubie",
  genre: "autobiographie",
  publisher: "Vraoum",
  publishing_year: 2016,
  EAN: "9782413041511",
  book_type: "bande dessinée",
  ratings: 4.47,
  image_url: "https://i.imgur.com/LtLmRRY.jpeg",
  thriller_score: 3,
  romance_score: 4,
  aventure_score: 3,
  jeunesse_score: 2
)

book16 = Book.create!(
  title: "Lou !, tome 1 : Journal infime",
  summary: "Lou est une petite fille qui ne connaît pas son papa, qui vit seule avec sa maman et le petit chat qu'elles ont adopté. Toutes les deux ont une grande complicité, elles jouent à la console, dînent dans des pizzerias... Lou est amoureuse de son voisin d'en face mais, bien sûr, n'ose pas lui avouer... C'est une petite fille très à la mode avec des dons de styliste. Sa meilleure copine s'appelle Mina, et ensemble elles partagent beaucoup de choses. Lou se dit aussi que Richard, qui vient d'emménager sur son palier, pourrait très bien plaire à sa mère. D'ailleurs, elle va se débrouiller pour les faire se rencontrer...",
  author: "Julien Neel",
  genre: "jeunesse",
  publisher: "Glénat",
  publishing_year: 2004,
  EAN: "9782723442756",
  book_type: "bande dessinée",
  ratings: 4.25,
  image_url: "https://i.imgur.com/WeoluBq.jpeg",
  thriller_score: 2,
  romance_score: 4,
  aventure_score: 7,
  jeunesse_score: 10
)

book17 = Book.create!(
  title: "Petit Pays",
  summary: "En 1992, Gabriel, dix ans, vit au Burundi avec son père français, entrepreneur, sa mère rwandaise et sa petite sœur, Ana, dans un confortable quartier d’expatriés. Gabriel passe le plus clair de son temps avec ses copains, une joyeuse bande occupée à faire les quatre cents coups. Un quotidien paisible, une enfance douce qui vont se disloquer en même temps que ce « petit pays » d’Afrique brutalement malmené par l’Histoire.
  Gabriel voit avec inquiétude ses parents se séparer, puis la guerre civile se profiler, suivie du drame rwandais. Le quartier est bouleversé. Par vagues successives, la violence l’envahit, l’imprègne, et tout bascule. Gabriel se croyait un enfant, il va se découvrir métis, Tutsi, Français…",
  author: "Gaël Faye",
  genre: "autobiographie",
  publisher: "Grasset",
  publishing_year: 2016,
  EAN: "9782246857334",
  book_type: "roman",
  ratings: 4.29,
  image_url: "https://i.imgur.com/0M8n2EQ.jpeg",
  thriller_score: 2,
  romance_score: 8,
  aventure_score: 5,
  jeunesse_score: 3
)

book18 = Book.create!(
  title: "Dans la solitude des champs de coton",
  summary: "« Si un chien rencontre un chat – par hasard, ou tout simplement par probabilité, parce qu'il y a tant de chiens et de chats sur un même territoire qu'ils ne peuvent pas, à la fin, ne pas se croiser ; si deux hommes, deux espèces contraires, sans histoire commune, sans langage familier, se trouvent par fatalité face à face – non pas dans la foule ni en pleine lumière, car la foule et la lumière dissimulent les visages et les natures, mais sur un terrain neutre et désert, plat, silencieux, où l'on se voit de loin, où l'on s'entend marcher, un lieu qui interdit l'indifférence, ou le détour, ou la fuite ; lorsqu'ils s'arrêtent l'un en face de l'autre, il n'existe rien d'autre entre eux que de l'hostilité – qui n'est pas un sentiment, mais un acte, un acte d'ennemis, un acte de guerre sans motif. »",
  author: "Bernard-Marie Koltès",
  genre: "contemporain",
  publisher: "éditions de Minuit",
  publishing_year: 1986,
  EAN: "9782707311030",
  book_type: "pièce de théâtre",
  ratings: 3.86,
  image_url: "https://i.imgur.com/1FRuJ6D.jpeg",
  thriller_score: 2,
  romance_score: 8,
  aventure_score: 4,
  jeunesse_score: 3
)

book19 = Book.create!(
  title: "En finir avec Eddy Bellegueule",
  summary: "« Je suis parti en courant, tout à coup. Juste le temps d'entendre ma mère dire Qu'est-ce qui fait le débile là? Je ne voulais pas rester à leur côté, je refusais de partager ce moment avec eux. J'étais déjà loin, je n'appartenais plus à leur monde désormais, la lettre le disait. »",
  author: "Édouard Louis",
  genre: "contemporain",
  publisher: "Éditions du Seuil",
  publishing_year: 2014,
  EAN: "9782021117707",
  book_type: "pièce de théâtre",
  ratings: 3.72,
  image_url: "https://i.imgur.com/DwL3RQe.jpeg",
  thriller_score: 5,
  romance_score: 8,
  aventure_score: 4,
  jeunesse_score: 3
)

book20 = Book.create!(
  title: "L'Iris Blanc",
  summary: "L’Iris Blanc est le nom d’une nouvelle école de pensée positive, venue de Rome qui commence à se propager dans les grandes villes, de Rome à Lutèce. César décide que cette méthode peut avoir un effet bénéfique sur les camps qui se trouvent autour du célèbre village gaulois. Mais les préceptes de cette école exercent aussi une influence sur les villageois qui croisent son chemin…
  Qu’est-il arrivé à notre chef Gaulois préféré et pourquoi cette mine renfrognée ?",
  author: "René Goscinny, Didier Conrad, Albert Uderzo & Fabcaro",
  genre: "jeunesse",
  publisher: "Les Éditions Albert René",
  publishing_year: 2023,
  EAN: "9782014001334",
  book_type: "bande dessinée",
  ratings: 3.82,
  image_url: "https://i.imgur.com/Jxfuvu4.png",
  thriller_score: 2,
  romance_score: 4,
  aventure_score: 9,
  jeunesse_score: 10
)

book21 = Book.create!(
  title: "Anges et démons",
  summary: "Robert Langdon, le célèbre spécialiste de symbologie religieuse, est convoqué par le Conseil européen pour la recherche nucléaire à Genève.
  Le physicien Leonardo Vetra a été retrouvé assassiné dans son laboratoire. Sur son corps, gravé au fer rouge, un seul mot :
  ILLUMINATI. Les Illuminati, une confrérie secrète disparue depuis quatre siècles qui resurgit et qui a juré d'anéantir l'Eglise catholique.
  Langdon ne dispose que de quelques heures pour sauver le Vatican qu'une terrible bombe à retardement menace !",
  author: "Dan Brown",
  genre: "thriller",
  publisher: "J.-C. LATTÈS",
  publishing_year: 2000,
  EAN: "9782709625791",
  book_type: "Livre broché",
  ratings: 3.73,
  image_url: "https://i.imgur.com/8nlSnaB.jpeg",
  thriller_score: 9,
  romance_score: 4,
  aventure_score: 7,
  jeunesse_score: 3
)

book22 = Book.create!(
  title: "Da Vinci Code",
  summary: "Robert Langdon, un éminent spécialiste de symbologie de Harvard, est convoqué d'urgence au Louvre. On a découvert un message codé sur le cadavre du conservateur en chef, retrouvé assassiné au milieu de la Grande Galerie. Pour examiner la série de pictogrammes, il est épaulé par Sophie Neveu, une brillante cryptographe membre de la police. A leur grande surprise, les premiers indices les conduisent à l'œuvre de Léonard de Vinci. En déchiffrant le code, Langdon va mettre à jour l'un des plus grands mystères de notre temps... et devenir un homme traqué.",
  genre: "thriller",
  author: "Dan Brown",
  publisher: "POCKET",
  publishing_year: 2003,
  EAN: "9782266198356",
  book_type: "Livre broché",
  ratings: 3.75,
  image_url: "https://i.imgur.com/r063U2I.jpeg",
  thriller_score: 9,
  romance_score: 5,
  aventure_score: 7,
  jeunesse_score: 3
)

book23 = Book.create!(
  title: "Le Symbole perdu",
  summary: "Après les secrets du Vatican et de la pyramide du Louvre, Dan Brown nous dévoile la face cachée de Washington et les mystères du Capitole.
  Robert Langdon, professeur en symbologie, est convoqué d’urgence par son ami Peter Solomon, philanthrope et Franc-maçon de haut grade, pour une conférence à donner le soir même. En rejoignant la rotonde du Capitole, il fait une macabre découverte.
  Ce sera le premier indice d’une quête haletante, des sous-sols de la Bibliothèque du Congrès aux temples maçonniques, à la recherche du secret le mieux gardé de la franc-maçonnerie.",
  genre: "thriller",
  author: "Dan Brown",
  publisher: "J.-C. LATTÈS",
  publishing_year: 2003,
  EAN: "9782709626996",
  book_type: "Livre broché",
  ratings: 3.72,
  image_url: "https://i.imgur.com/B0Xg4BT.jpeg",
  thriller_score: 9,
  romance_score: 5,
  aventure_score: 7,
  jeunesse_score: 3
)

book25 = Book.create!(
  title: "Inferno",
  summary: "Robert Langdon, professeur de symbologie à Harvard, se réveille en pleine nuit à l'hôpital. Désorienté, blessé à la tête, il n'a aucun souvenir des dernières trente-six heures. Pourquoi se retrouve-t-il à Florence ? D'où vient cet objet macabre que les médecins ont découvert dans ses affaires ? Quand son monde vire brutalement au cauchemar, Langdon décide de s'enfuir avec une jeune femme, Sienna Brooks. Rapidement, Langdon comprend qu'il est en possession d'un message codé, créé par un éminent scientifique qui a consacré sa vie à éviter la fin du monde, une obsession qui n'a d'égale que sa passion pour « Inferno », le grand poème épique de Dante. Pris dans une course contre la montre, Langdon et Sienna font tout pour retrouver l'ultime création du scientifique, véritable bombe à retardement, dont personne ne sait si elle va améliorer la vie sur terre ou la détruire…",
  genre: "thriller",
  author: "Dan Brown",
  publisher: "J.-C. LATTÈS",
  publishing_year: 2013,
  EAN: "9782709643740",
  book_type: "Livre broché",
  ratings: 3.9,
  image_url: "https://i.imgur.com/pBGCcR6.jpeg",
  thriller_score: 9,
  romance_score: 4,
  aventure_score: 7,
  jeunesse_score: 3
)

book26 = Book.create!(
  title: "Origine",
  summary: "Bilbao, Espagne. Robert Langdon, le célèbre professeur en symbologie et iconographie religieuse, arrive au musée Guggenheim pour assister à une cérémonie historique avec l’annonce d’une découverte scientifique révolutionnaire. L’organisateur de cette soirée n’est autre que le grand futurologue Edmond Kirsch, un milliardaire de quarante ans dont les inventions et les prédictions audacieuses ont fait de lui une célébrité mondiale. Kirsch, qui a été dans sa jeunesse l’étudiant de Langdon à Harvard, est sur le point d’annoncer le résultat de ses recherches… et d’apporter enfin une réponse aux deux questions fondamentales de l’humanité.
  Dès le debut de la soirée, Langdon, comme les centaines d’autres invités, est fasciné par l’originalité de la cérémonie. Une évidence s’impose : la découverte de Kirsch va susciter une controverse bien plus profonde qu’il ne l’avait imaginé. Mais la soirée parfaitement orchestrée jusqu’alors va soudain virer au chaos. La découverte de Kirsch risque d’être perdue à jamais. Sous le choc, et en grand danger, Langdon est contraint de quitter précipitamment Bilbao. Dans sa fuite, il est accompagné de Ambra Vidal, la directrice du musée qui a préparé avec Kirsch cette soirée explosive. Tous deux s’envolent pour Barcelone, et se lancent dans une quête périlleuse pour retrouver un étrange mot de passe qui permettra de révéler au monde la découverte de Kirsch.
  Plongeant dans les dédales sombres de l’Histoire et des religions, Robert Langdon et Ambra Vidal doivent échapper à un ennemi puissant qui semble envoyé par le Palais royal et prêt à tout pour réduire au silence Edmond Kirsch. Sur une piste jalonnée d’oeuvres modernes et de symboles énigmatiques, Langdon et Ambra Vidal vont finir par découvrir les clés menant au secret de Kirsch… et à cette grande révélation qui, depuis des millénaires, échappe à la compréhension de l’homme.",
  genre: "thriller",
  author: "Dan Brown",
  publisher: "J.-C. LATTÈS",
  publishing_year: 2017,
  EAN: "9782709659802",
  book_type: "Livre broché",
  ratings: 3.73,
  image_url: "https://i.imgur.com/ZlOG4VO.jpeg",
  thriller_score: 9,
  romance_score: 4,
  aventure_score: 7,
  jeunesse_score: 3
)

book27 = Book.create!(
  title: "Chers voisins",
  summary: "« Connards, vous n'êtes pas seuls au monde » Mots doux et petites querelles de voisinage.",
  author: "Aurélie C & Olivier V",
  genre: "humour",
  publisher: "J'ai lu",
  publishing_year: 2013,
  EAN: "9782290059463",
  book_type: "recueil",
  ratings: 3.35,
  image_url: "https://i.imgur.com/SZ9IKjg.jpeg",
  thriller_score: 3,
  romance_score: 5,
  aventure_score: 1,
  jeunesse_score: 7
)

book28 = Book.create!(
  title: "Veiller sur elle",
  summary: "« Au grand jeu du destin, Mimo a tiré les mauvaises cartes. Né pauvre, il est confié en apprentissage à un sculpteur de pierre sans envergure. Mais il a du génie entre les mains. Toutes les fées ou presque se sont penchées sur Viola Orsini. Héritière d'une famille prestigieuse, elle a passé son enfance à l'ombre d'un palais génois. Mais elle a trop d'ambition pour se résigner à la place qu'on lui assigne.
  Ces deux-là n'auraient jamais dû se rencontrer. Au premier regard, ils se reconnaissent et se jurent de ne jamais se quitter. Viola et Mimo ne peuvent ni vivre ensemble, ni rester longtemps loin de l'autre. Liés par une attraction indéfectible, ils traversent des années de fureur quand l'Italie bascule dans le fascisme. Mimo prend sa revanche sur le sort, mais à quoi bon la gloire s'il doit perdre Viola ?
  Un roman plein de fougue et d'éclats, habité par la grâce et la beauté.",
  author: "Jean-Baptiste Andrea",
  genre: "historique",
  publisher: "Iconoclaste",
  publishing_year: 2023,
  EAN: "9782378803759",
  book_type: "Roman",
  ratings: 4.33,
  image_url: "https://i.imgur.com/JyqvMh2.jpeg",
  thriller_score: 6,
  romance_score: 8,
  aventure_score: 7,
  jeunesse_score: 3
)

book29 = Book.create!(
  title: "Holly",
  summary: "« Êtes-vous prêt à franchir la porte du 93 Ridge Road ?
  Dans une jolie maison victorienne d’une petite ville du Midwest, Emily et Rodney Harris, anciens professeurs d’université, mènent une vie de retraités actifs. Malgré leur grand âge, les années semblent n’avoir pas avoir de prise sur eux.
  À quelques pas de leur demeure, on a retrouvé le vélo de Bonnie Dahl, récemment disparue. Elle n’est pas la première à se volatiliser dans ce périmètre. Chose étrange : à chaque fois, il s’agit de jeunes gens.
  Quels secrets inavouables cachent les murs tapissés de livres des époux Harris ?
  Sur l’insistance de la mère de Bonnie, Holly Gibney accepte de reprendre du service. Elle est loin d’imaginer ce qui l’attend : une plongée dans la folie humaine, là où l’épouvante n’a pas de limite.
  Avec ce nouveau chef-d’œuvre, on retrouve un Stephen King au sommet de l’horreur, et son enquêtrice Holly, célèbre héroïne de la trilogie Mr Mercedes et de L’Outsider.",
  author: "Stephen King",
  genre: "thriller",
  publisher: "Albin Michel",
  publishing_year: 2024,
  EAN: "9782226481474",
  book_type: "Livre broché",
  ratings: 4.26,
  image_url: "https://i.imgur.com/xhmGoDp.jpeg",
  thriller_score: 9,
  romance_score: 4,
  aventure_score: 7,
  jeunesse_score: 3
)

book30 = Book.create!(
  title: "Quelqu'un d'autre",
  summary: "« Côte d'Azur - Printemps 2023
  Au large de Cannes, un yacht dérive entre les îles de Lérins.À son bord repose Oriana Di Pietro, éditrice italienne et héritière d'une célèbre famille milanaise. Agressée sauvagement, elle succombera après dix jours de coma.
  Qui a tué Oriana ?
  Un homme et trois femmes livrent leur version de l'histoire : Adrien, le mari de la victime, pianiste de jazz séduisant et mystérieux ; l'insaisissable Adèle, sa jeune maîtresse ; Justine, la policière locale chargée de l'enquête et Oriana enfin, à travers le récit bouleversant des dernières semaines de sa vie.
  Personne ne ment.
  Mais personne n'est d'accord sur la vérité.",
  author: "Guillaume Musso",
  genre: "romance",
  publisher: "Calmann-Lévy",
  publishing_year: 2024,
  EAN: "9782702183694",
  book_type: "Livre broché",
  ratings: 4.2,
  image_url: "https://i.imgur.com/hc4qe25.jpeg",
  thriller_score: 4,
  romance_score: 8,
  aventure_score: 6,
  jeunesse_score: 3
)

book31 = Book.create!(
  title: "La tresse",
  summary: "« Inde. Smita est une Intouchable. Elle rêve de voir sa fille échapper à sa condition misérable et entrer à l’école.
  Sicile. Giulia travaille dans l’atelier de son père. Lorsqu’il est victime d’un accident, elle découvre que l’entreprise familiale est ruinée.
  Canada. Sarah, avocate réputée, va être promue à la tête de son cabinet quand elle apprend qu’elle est gravement malade.
  Liées sans le savoir par ce qu’elles ont de plus intime et de plus singulier, Smita, Giulia et Sarah refusent le sort qui leur est réservé et décident de se battre. Vibrantes d’humanité, leurs histoires tissent une tresse d’espoir et de solidarité.
  Trois femmes, trois vies, trois continents. Une même soif de liberté.",
  author: "Leatitia Colombani",
  genre: "romance",
  publisher: "Le Livre de Poche",
  publishing_year: 2018,
  EAN: "9782253906568",
  book_type: "Livre de poche",
  ratings: 4.5,
  image_url: "https://i.imgur.com/TLbsZbn.jpeg",
  thriller_score: 4,
  romance_score: 8,
  aventure_score: 6,
  jeunesse_score: 3
)

book32 = Book.create!(
  title: "Les quatre accords toltèques: La voie de la liberté personnelle",
  summary: "Castaneda a fait découvrir au grand public les enseignements des chamans mexicains qui ont pour origine la tradition toltèque, gardienne des connaissances de Quetzacoatl, le serpent à plumes. Dans ce livre, Don Miguel révèle la source des croyances limi-tatrices qui nous privent de joie et créent des souffrances inutiles. Il montre en des termes très simples comment on peut se libérer du conditionnement collectif - le rêve de la planète, basé sur la peur - afin de retrouver la dimension d'a mour inconditionnel qui est à notre origine et constitue le fondement de s enseignements toltèques. Les quatre accords proposent un puissant code de conduite capable de transformer rapidement notre vie en une expérience de liberté, de vrai bonheur et d'amour. Le monde fascinant de la Connaissance véritable et incarnée est enfin à la portée de chacun.",
  author: "Sabrina Philippe",
  genre: "développement personnel",
  publisher: "Jouvence",
  publishing_year: 2016,
  EAN: "9782889116546",
  book_type: "Livre de poche",
  ratings: 4.7,
  image_url: "https://i.imgur.com/iFeadDz.jpeg",
  thriller_score: 2,
  romance_score: 6,
  aventure_score: 4,
  jeunesse_score: 9
)

book33 = Book.create!(
  title: "La Peste",
  summary: "Une épidémie de peste s'abat sur la ville d'Oran, en Algérie, plongeant ses habitants dans un désarroi total. Le docteur Bernard Rieux et ses collègues se battent non seulement contre la maladie physique, mais aussi contre l'indifférence et la panique qui se propagent parmi la population.",
  author: "Albert Camus",
  genre: "absurde",
  publisher: "Gallimard",
  publishing_year: 1947,
  EAN: "9782070360420",
  book_type: "roman",
  ratings: 4.25,
  image_url: "https://i.imgur.com/laPeste.jpeg",
  thriller_score: 8,
  romance_score: 5,
  aventure_score: 3,
  jeunesse_score: 2
)

book34 = Book.create!(
  title: "1984",
  summary: "Dans une société totalitaire où la liberté individuelle est réprimée et où la pensée indépendante est considérée comme un crime, Winston Smith lutte pour préserver sa propre humanité et sa dignité face à un régime oppressif et omniprésent.",
  author: "George Orwell",
  genre: "dystopie",
  publisher: "Secker & Warburg",
  publishing_year: 1949,
  EAN: "9780451524935",
  book_type: "roman",
  ratings: 4.16,
  image_url: "https://i.imgur.com/1984.jpeg",
  thriller_score: 9,
  romance_score: 2,
  aventure_score: 4,
  jeunesse_score: 3
)

book35 = Book.create!(
  title: "Le Procès",
  summary: "Josef K. se réveille un matin pour découvrir qu'il est arrêté et accusé d'un crime étrange et mystérieux dont il ignore la nature. Il se retrouve alors entraîné dans un système judiciaire absurde et oppressif où il lutte pour comprendre et se défendre contre des forces qui semblent insaisissables.",
  author: "Franz Kafka",
  genre: "absurde",
  publisher: "Die Schmiede",
  publishing_year: 1925,
  EAN: "9782253003647",
  book_type: "roman",
  ratings: 4.22,
  image_url: "https://i.imgur.com/leProces.jpeg",
  thriller_score: 8,
  romance_score: 3,
  aventure_score: 5,
  jeunesse_score: 1
)

book36 = Book.create!(
  title: "Le Maître et Marguerite",
  summary: "Dans le Moscou des années 1930, le diable se rend en ville, accompagné d'un étrange entourage, pour semer le chaos et la destruction. Pendant ce temps, le maître, un écrivain en proie au doute et à la désillusion, trouve l'inspiration grâce à sa muse, Marguerite.",
  author: "Mikhaïl Boulgakov",
  genre: "satire",
  publisher: "Éditions Phébus",
  publishing_year: 1967,
  EAN: "9782070360425",
  book_type: "roman",
  ratings: 4.39,
  image_url: "https://i.imgur.com/leMaitreEtMarguerite.jpeg",
  thriller_score: 6,
  romance_score: 7,
  aventure_score: 3,
  jeunesse_score: 2
)

book37 = Book.create!(
  title: "Fahrenheit 451",
  summary: "Dans un monde où les livres sont interdits et brûlés, Guy Montag, un pompier chargé de détruire les œuvres littéraires, commence à remettre en question son rôle et à découvrir le pouvoir de la connaissance et de la pensée indépendante.",
  author: "Ray Bradbury",
  genre: "dystopie",
  publisher: "Ballantine Books",
  publishing_year: 1953,
  EAN: "9781451673319",
  book_type: "roman",
  ratings: 4.09,
  image_url: "https://i.imgur.com/fahrenheit451.jpeg",
  thriller_score: 7,
  romance_score: 3,
  aventure_score: 5,
  jeunesse_score: 2
)

book38 = Book.create!(
  title: "Les Chants de Maldoror",
  summary: "Une œuvre poétique sombre et provocante qui explore les thèmes de la rébellion, de la transgression et de la perversion. L'auteur, Isidore Ducasse, alias Comte de Lautréamont, nous emmène dans un voyage hallucinatoire à travers les méandres de l'âme humaine.",
  author: "Comte de Lautréamont",
  genre: "poésie",
  publisher: "Éditions Pauvert",
  publishing_year: 1868,
  EAN: "9782720210951",
  book_type: "poésie",
  ratings: 4.08,
  image_url: "https://www.babelio.com/couv/CVT_Les-Chants-de-Maldoror_1945.jpg",
  thriller_score: 5,
  romance_score: 2,
  aventure_score: 3,
  jeunesse_score: 1
)

book39 = Book.create!(
  title: "Les Faux-Monnayeurs",
  summary: "Une fresque complexe qui explore les relations entre les personnages issus de différents milieux sociaux et culturels. À travers le personnage central, Bernard Profitendieu, André Gide offre une réflexion profonde sur l'art, la moralité et l'authenticité.",
  author: "André Gide",
  genre: "roman expérimental",
  publisher: "Librairie Gallimard",
  publishing_year: 1925,
  EAN: "9782070364374",
  book_type: "roman",
  ratings: 4.12,
  image_url: "https://i.imgur.com/lesFauxMonnayeurs.jpeg",
  thriller_score: 6,
  romance_score: 4,
  aventure_score: 3,
  jeunesse_score: 1
)

book40 = Book.create!(
  title: "Les Misérables",
  summary: "Une saga épique qui suit les destins croisés de plusieurs personnages, dont Jean Valjean, un ancien bagnard en quête de rédemption, et Cosette, la jeune fille qu'il recueille et élève comme sa propre fille. À travers leurs aventures, Victor Hugo explore les thèmes de la justice, de l'amour et de la rédemption.",
  author: "Victor Hugo",
  genre: "roman historique",
  publisher: "Charles Laffitte",
  publishing_year: 1862,
  EAN: "9782253001766",
  book_type: "roman",
  ratings: 4.18,
  image_url: "https://i.imgur.com/lesMiserables.jpeg",
  thriller_score: 5,
  romance_score: 7,
  aventure_score: 6,
  jeunesse_score: 3
)

book41 = Book.create!(
  title: "Le Petit Prince",
  summary: "Un jeune prince voyageur rencontre un pilote échoué dans le désert. Ensemble, ils explorent des mondes étranges et découvrent des leçons sur l'amitié, l'amour et la responsabilité. Une histoire intemporelle qui charme les lecteurs de tous âges.",
  author: "Antoine de Saint-Exupéry",
  genre: "conte philosophique",
  publisher: "Éditions Gallimard",
  publishing_year: 1943,
  EAN: "9782070362400",
  book_type: "conte",
  ratings: 4.30,
  image_url: "https://i.imgur.com/lePetitPrince.jpeg",
  thriller_score: 4,
  romance_score: 8,
  aventure_score: 5,
  jeunesse_score: 9
)

book42 = Book.create!(
  title: "Astérix chez les Pictes",
  summary: "Astérix et Obélix se lancent dans une aventure en Écosse, où ils rencontrent les Pictes, un peuple mystérieux connu pour leur bravoure et leur amour du combat. Ils doivent aider le jeune peintre Mac Oloch à prouver son courage pour épouser la fille du chef.",
  author: "Jean-Yves Ferri",
  genre: "humour",
  publisher: "Les Éditions Albert René",
  publishing_year: 2013,
  EAN: "9782864972816",
  book_type: "bande dessinée",
  ratings: 4.20,
  image_url: "https://i.imgur.com/asterixChezLesPictes.jpeg"
)

book43 = Book.create!(
  title: "Tintin au Tibet",
  summary: "Tintin part au Tibet à la recherche de son ami Tchang, dont l'avion s'est écrasé en montagne. Malgré les obstacles et les dangers, Tintin est déterminé à retrouver son ami vivant. Une histoire d'amitié et de courage dans les hauteurs de l'Himalaya.",
  author: "Hergé",
  genre: "aventure",
  publisher: "Casterman",
  publishing_year: 1960,
  EAN: "9782203001143",
  book_type: "bande dessinée",
  ratings: 4.39,
  image_url: "https://i.imgur.com/tintinAuTibet.jpeg"
)

book44 = Book.create!(
  title: "Maus",
  summary: "Une bande dessinée autobiographique qui raconte l'histoire de l'auteur, Art Spiegelman, et de son père, survivants de l'Holocauste. Les personnages sont représentés sous forme d'animaux, les Juifs étant des souris et les Nazis des chats.",
  author: "Art Spiegelman",
  genre: "biographie",
  publisher: "Pantheon Books",
  publishing_year: 1986,
  EAN: "9780394747231",
  book_type: "bande dessinée",
  ratings: 4.55,
  image_url: "https://i.imgur.com/maus.jpeg"
)

book45 = Book.create!(
  title: "Persepolis",
  summary: "Une bande dessinée autobiographique qui raconte l'histoire de Marjane Satrapi, une jeune fille iranienne, pendant et après la Révolution islamique. À travers ses yeux, nous découvrons les défis de grandir dans un pays en proie à la guerre et à la répression.",
  author: "Marjane Satrapi",
  genre: "autobiographie",
  publisher: "L'Association",
  publishing_year: 2000,
  EAN: "9780375714382",
  book_type: "bande dessinée",
  ratings: 4.25,
  image_url: "https://i.imgur.com/persepolis.jpeg"
)

book46 = Book.create!(
  title: "Batman: Year One",
  summary: "Une réinterprétation des origines de Batman, écrite par Frank Miller et illustrée par David Mazzucchelli. Nous suivons le parcours de Bruce Wayne alors qu'il devient le Chevalier Noir et commence sa croisade contre le crime dans les rues sombres de Gotham City.",
  author: "Frank Miller",
  genre: "super-héros",
  publisher: "DC Comics",
  publishing_year: 1987,
  EAN: "9781401207526",
  book_type: "bande dessinée",
  ratings: 4.26,
  image_url: "https://i.imgur.com/batmanYearOne.jpeg"
)

book47 = Book.create!(
  title: "Sandman: Preludes & Nocturnes",
  summary: "Le premier volume de la série Sandman, créée par Neil Gaiman. Nous suivons les aventures de Dream, l'une des Éternelles, alors qu'il s'échappe de sa captivité et tente de récupérer ses artefacts volés pour restaurer l'équilibre du rêve et de la réalité.",
  author: "Neil Gaiman",
  genre: "fantastique",
  publisher: "Vertigo",
  publishing_year: 1989,
  EAN: "9781563890116",
  book_type: "bande dessinée",
  ratings: 4.24,
  image_url: "https://i.imgur.com/sandmanPreludesNocturnes.jpeg"
)

book48 = Book.create!(
  title: "Watchmen",
  summary: "Une bande dessinée de super-héros révolutionnaire, créée par Alan Moore et Dave Gibbons. Dans un monde dystopique où les super-héros sont traités comme des parias, une enquête sur le meurtre d'un ancien justicier dévoile un complot qui pourrait changer le cours de l'histoire.",
  author: "Alan Moore",
  genre: "super-héros",
  publisher: "DC Comics",
  publishing_year: 1986,
  EAN: "9781401245252",
  book_type: "bande dessinée",
  ratings: 4.37,
  image_url: "https://i.imgur.com/watchmen.jpeg"
)

book49 = Book.create!(
  title: "Asterix: Le Tour de Gaule d'Astérix",
  summary: "Astérix et Obélix entreprennent un voyage à travers la Gaule pour livrer une potion magique au chef Abraracourcix. En chemin, ils affrontent les Romains et rencontrent une série de personnages hauts en couleur.",
  author: "René Goscinny",
  genre: "humour",
  publisher: "Les Éditions Albert René",
  publishing_year: 1965,
  EAN: "9782864970003",
  book_type: "bande dessinée",
  ratings: 4.15,
  image_url: "https://i.imgur.com/asterixLeTourDeGaule.jpeg"
)

book50 = Book.create!(
  title: "Spider-Man: Blue",
  summary: "Une histoire émouvante de Spider-Man, écrite par Jeph Loeb et illustrée par Tim Sale. Peter Parker se remémore son premier amour, Gwen Stacy, à travers une série de flashbacks alors qu'il enregistre des messages audio pour elle après sa mort.",
  author: "Jeph Loeb",
  genre: "super-héros",
  publisher: "Marvel Comics",
  publishing_year: 2002,
  EAN: "9780785110713",
  book_type: "bande dessinée",
  ratings: 4.28,
  image_url: "https://i.imgur.com/spiderManBlue.jpeg"
)

book51 = Book.create!(
  title: "Calvin et Hobbes: La Saison des floraisons",
  summary: "Une collection des bandes dessinées hilarantes de Calvin et Hobbes, créées par Bill Watterson. Suivez les aventures imaginatives et souvent farfelues de Calvin, un jeune garçon inventif, et de son tigre en peluche, Hobbes.",
  author: "Bill Watterson",
  genre: "humour",
  publisher: "Andrews McMeel Publishing",
  publishing_year: 1986,
  EAN: "9780836218251",
  book_type: "bande dessinée",
  ratings: 4.74,
  image_url: "https://i.imgur.com/calvinEtHobbes.jpeg"
)

book52 = Book.create!(
  title: "Les Fleurs du Mal",
  summary: "Un recueil de poésie majeur de Charles Baudelaire, qui explore des thèmes tels que l'amour, la beauté, la mélancolie et la corruption de la société moderne. Ces poèmes, souvent considérés comme provocateurs à leur époque, sont maintenant reconnus comme des chefs-d'œuvre de la littérature française.",
  author: "Charles Baudelaire",
  genre: "poésie",
  publisher: "n/a",
  publishing_year: 1857,
  EAN: "9782253099627",
  book_type: "recueil de poésie",
  ratings: 4.09,
  image_url: "https://images-na.ssl-images-amazon.com/images/I/51bKYjNwk1L._SX320_BO1,204,203,200_.jpg"
)

book53 = Book.create!(
  title: "Le Parfum",
  summary: "L'histoire de Jean-Baptiste Grenouille, un jeune homme doté d'un sens de l'odorat extraordinaire mais dénué d'odeur propre, qui se lance dans une quête obsessionnelle pour créer le parfum ultime en utilisant les essences de jeunes filles.",
  author: "Patrick Süskind",
  genre: "romance",
  publisher: "Fischer Verlag",
  publishing_year: 1985,
  EAN: "9780330243759",
  book_type: "roman",
  ratings: 4.06,
  image_url: "https://images-na.ssl-images-amazon.com/images/I/41gM5PGVUfL._SX304_BO1,204,203,200_.jpg"
)

book54 = Book.create!(
  title: "Voyage au bout de la nuit",
  summary: "L'histoire de Ferdinand Bardamu, un jeune homme désillusionné qui s'engage dans l'armée pendant la Première Guerre mondiale et part ensuite à la dérive à travers le monde, cherchant désespérément un sens à sa vie.",
  author: "Louis-Ferdinand Céline",
  genre: "romance",
  publisher: "Gallimard",
  publishing_year: 1932,
  EAN: "9782070373734",
  book_type: "roman",
  ratings: 4.10,
  image_url: "https://images-na.ssl-images-amazon.com/images/I/51UOZvHJy3L._SX324_BO1,204,203,200_.jpg"
)

book55 = Book.create!(
  title: "Le Portrait de Dorian Gray",
  summary: "L'histoire de Dorian Gray, un jeune homme d'une beauté exceptionnelle dont le portrait vieillit et se dégrade tandis que lui reste jeune éternellement. Dorian se lance dans une vie de débauche et de péché, ignorant les conséquences tragiques de ses actes.",
  author: "Oscar Wilde",
  genre: "romance",
  publisher: "Lippincott's Monthly Magazine",
  publishing_year: 1890,
  EAN: "9780141199498",
  book_type: "roman",
  ratings: 4.07,
  image_url: "https://images-na.ssl-images-amazon.com/images/I/51O-AwXHoRL._SX316_BO1,204,203,200_.jpg"
)

book56 = Book.create!(
  title: "Les Liaisons dangereuses",
  summary: "L'histoire de la marquise de Merteuil et du vicomte de Valmont, deux aristocrates manipulateurs du XVIIIe siècle qui se lancent dans un jeu pervers de séduction et de trahison. Le roman explore les thèmes de l'amour, de la vengeance et de la moralité.",
  author: "Pierre Choderlos de Laclos",
  genre: "romance",
  publisher: "Durand Neveu",
  publishing_year: 1782,
  EAN: "9782253160289",
  book_type: "roman",
  ratings: 4.07,
  image_url: "https://images-na.ssl-images-amazon.com/images/I/51LTFFB6AAL._SX324_BO1,204,203,200_.jpg"
)

book57 = Book.create!(
  title: "Le Rouge et le Noir",
  summary: "L'histoire de Julien Sorel, un jeune homme ambitieux et intelligent qui cherche à échapper à sa condition sociale en gravissant les échelons de la société française au XIXe siècle. Le roman explore les thèmes de l'ambition, de la passion et de la classe sociale.",
  author: "Stendhal",
  genre: "romance",
  publisher: "Levasseur",
  publishing_year: 1830,
  EAN: "9782070383030",
  book_type: "roman",
  ratings: 3.87,
  image_url: "https://images-na.ssl-images-amazon.com/images/I/51XG5r3wUEL._SX314_BO1,204,203,200_.jpg"
)

book58 = Book.create!(
  title: "La Nausée",
  summary: "L'histoire d'Antoine Roquentin, un homme qui se sent envahi par un sentiment de malaise et de dégoût face à l'absurdité de la vie et à l'existence humaine. Le roman explore les thèmes de l'existentialisme et de l'angoisse de l'existence.",
  author: "Jean-Paul Sartre",
  genre: "philosophie",
  publisher: "Gallimard",
  publishing_year: 1938,
  EAN: "9782070368222",
  book_type: "roman",
  ratings: 3.93,
  image_url: "https://images-na.ssl-images-amazon.com/images/I/516q6JfgrwL._SX322_BO1,204,203,200_.jpg"
)

book59 = Book.create!(
  title: "Les Trois Mousquetaires",
  summary: "L'histoire de d'Artagnan, un jeune homme ambitieux qui se rend à Paris pour devenir mousquetaire du roi. Il se lie d'amitié avec trois mousquetaires, Athos, Porthos et Aramis, et se lance dans une série d'aventures pour défendre l'honneur de la reine Anne d'Autriche.",
  author: "Alexandre Dumas",
  genre: "romance",
  publisher: "Baudry",
  publishing_year: 1844,
  EAN: "9782253010224",
  book_type: "roman",
  ratings: 4.13,
  image_url: "https://images-na.ssl-images-amazon.com/images/I/51bUm8deBLL._SX325_BO1,204,203,200_.jpg"
)

book60 = Book.create!(
  title: "Crime et Châtiment",
  summary: "L'histoire de Rodion Raskolnikov, un jeune étudiant russe tourmenté par la pauvreté et l'aliénation sociale, qui se lance dans un plan pour commettre un meurtre et justifier ainsi son droit de transcender les lois morales pour le bien de l'humanité.",
  author: "Fyodor Dostoevsky",
  genre: "romance",
  publisher: "The Russian Messenger",
  publishing_year: 1866,
  EAN: "9782253082421",
  book_type: "roman",
  ratings: 4.22,
  image_url: "https://images-na.ssl-images-amazon.com/images/I/51ic+3zT9qL._SX314_BO1,204,203,200_.jpg"
)

book61 = Book.create!(
  title: "Madame Bovary",
  summary: "L'histoire d'Emma Bovary, une jeune femme insatisfaite de sa vie provinciale et de son mariage avec Charles Bovary, un médecin de campagne. Elle se lance dans une série d'aventures amoureuses et de dépenses extravagantes pour échapper à sa vie ennuyeuse.",
  author: "Gustave Flaubert",
  genre: "romance",
  publisher: "Revue de Paris",
  publishing_year: 1856,
  EAN: "9780141394674",
  book_type: "roman",
  ratings: 3.64,
  image_url: "https://images-na.ssl-images-amazon.com/images/I/51T7Kv8dMFL._SX314_BO1,204,203,200_.jpg"
)

book62 = Book.create!(
  title: "Faust",
  summary: "L'histoire du docteur Faust, un savant allemand qui vend son âme au diable en échange de la connaissance et du pouvoir terrestre. Cette tragédie de Goethe explore les thèmes de l'ambition, de la morale et de la quête de sens.",
  author: "Johann Wolfgang von Goethe",
  genre: "philosophie",
  publisher: "n/a",
  publishing_year: 1808,
  EAN: "9782253160289",
  book_type: "tragédie",
  ratings: 4.03,
  image_url: "https://images-na.ssl-images-amazon.com/images/I/51V22rxGc9L._SX304_BO1,204,203,200_.jpg"
)

book63 = Book.create!(
  title: "La Divine Comédie",
  summary: "Une œuvre épique majeure de Dante Alighieri, qui décrit son voyage à travers l'enfer, le purgatoire et le paradis. À travers ses rencontres avec une série de personnages historiques et mythologiques, Dante explore les concepts de péché, de rédemption et de la nature divine de l'homme.",
  author: "Dante Alighieri",
  genre: "philosophie",
  publisher: "n/a",
  publishing_year: 1320,
  EAN: "9781857150178",
  book_type: "poésie",
  ratings: 4.06,
  image_url: "https://images-na.ssl-images-amazon.com/images/I/51MKMbPFeoL._SX321_BO1,204,203,200_.jpg"
)

book64 = Book.create!(
  title: "Les Contemplations",
  summary: "Un recueil de poésie majeur de Victor Hugo, qui explore des thèmes tels que l'amour, la mort, la nature et la religion. Ces poèmes, écrits pendant une période de deuil après la mort de sa fille Léopoldine, sont parmi les plus célèbres de la littérature française.",
  author: "Victor Hugo",
  genre: "poésie",
  publisher: "n/a",
  publishing_year: 1856,
  EAN: "9782070368178",
  book_type: "recueil de poésie",
  ratings: 4.22,
  image_url: "https://images-na.ssl-images-amazon.com/images/I/51WTUJZ66-L._SX327_BO1,204,203,200_.jpg"
)

# Vous pouvez ajouter d'autres bandes dessinées si vous le souhaitez...


puts 'Livres créés'

Reading.destroy_all

puts "Création des readings"

reading1 = Reading.create!(
  user: user1,
  book: book1
)

reading2 = Reading.create!(
  user: user1,
  book: book2
)

reading3 = Reading.create!(
  user: user1,
  book: book3
)

reading4 = Reading.create!(
  user: user1,
  book: book4
)
reading5 = Reading.create!(
  user: user1,
  book: book5
)

reading6 = Reading.create!(
  user: user2,
  book: book6
)

reading7 = Reading.create!(
  user: user2,
  book: book7
)

reading8 = Reading.create!(
  user: user2,
  book: book8
)

reading9 = Reading.create!(
  user: user2,
  book: book9
)

reading10 = Reading.create!(
  user: user2,
  book: book10
)

reading11 = Reading.create!(
  user: user3,
  book: book11
)

reading12 = Reading.create!(
  user: user3,
  book: book12
)

reading13 = Reading.create!(
  user: user3,
  book: book13
)

reading14 = Reading.create!(
  user: user3,
  book: book14
)

reading15 = Reading.create!(
  user: user3,
  book: book15
)

reading16 = Reading.create!(
  user: user4,
  book: book16
)

reading17 = Reading.create!(
  user: user4,
  book: book17
)

reading18 = Reading.create!(
  user: user4,
  book: book18
)

reading19 = Reading.create!(
  user: user4,
  book: book19
)

reading20 = Reading.create!(
  user: user4,
  book: book20
)

puts 'Readings créés'

Review.destroy_all

puts 'Création des reviews'

review1 = Review.create!(
  user: user1,
  book: book1,
  rating: 5,
  title: "Excellent",
  content: "J'ai adoré ce bouquin, je le recommande à tous mes proches"
)

review2 = Review.create!(
  user: user2,
  book: book1,
  rating: 4,
  title: "Génial",
  content: "Une lecture passionnante"
)

puts 'Reviews créées'

puts 'Création des friends'

friend1 = FriendRelationship.create!(
  user: user1,
  friend: user2
)

friend2 = FriendRelationship.create!(
  user: user1,
  friend: user3
)

friend3 = FriendRelationship.create!(
  user: user1,
  friend: user4
)

friend4 = FriendRelationship.create!(
  user: user1,
  friend: user5
)

friend5 = FriendRelationship.create!(
  user: user1,
  friend: user6
)

friend6 = FriendRelationship.create!(
  user: user1,
  friend: user7
)

friend7 = FriendRelationship.create!(
  user: user1,
  friend: user8
)

friend8 = FriendRelationship.create!(
  user: user1,
  friend: user9
)

puts 'Friends créés'

BookStore.destroy_all

puts 'Création des libraries'

book_store1 = BookStore.create!(
  store_type: "généraliste",
  name: "Mollat",
  address: "15 rue Vital-Carles, 33080 Bordeaux",
  details: "du lundi au samedi de 9h30 à 19h30",
  phone_number: "05 56 56 40 40",
  webpage: "https://www.mollat.com/"
)

book_store2 = BookStore.create!(
  store_type: "généraliste",
  name: "La Mauvaise Réputation",
  address: "19 rue des Argentiers, 33000 Bordeaux",
  details: "du lundi au samedi de 10h ou 14h à 19h",
  phone_number: "05 56 79 73 54",
  webpage: "http://lamauvaisereputation.free.fr/accueil"
)

book_store3 = BookStore.create!(
  store_type: "généraliste",
  name: "La Machine à lire",
  address: "8 place du Parlement, 33000 Bordeaux",
  details: "le lundi de 14h à 20h et du mardi au samedi de 10h à 20h",
  phone_number: "05 56 48 03 87",
  webpage: "http://www.lamachinealire.com/"
)

book_store4 = BookStore.create!(
  store_type: "littérature anglophone",
  name: "Bradley’s bookshop",
  address: "1 rue de la Merci, 33000 Bordeaux",
  details: "du mardi au samedi de 10h à 19h",
  phone_number: "05 56 52 10 57",
  webpage: "http://www.bradleys-bookshop.com/"
)

book_store5 = BookStore.create!(
  store_type: "café librairie",
  name: "Librairie Georges Talence",
  address: "300 cours de la Libération, 33400 Talence",
  details: "le lundi de 14h à 19h et du mardi au samedi de 9h30 à 19h30",
  phone_number: "05 56 04 68 00",
  webpage: "http://www.librairiegeorges.com/"
)

book_store6 = BookStore.create!(
  store_type: "littérature jeunesse",
  name: "Librairie comptines",
  address: "5 rue Duffour Dubergier, 33000 Bordeaux",
  details: "du mardi au vendredi de 10h30 à 19h et le samedi de 10h à 19h",
  phone_number: "05 56 44 55 56",
  webpage: "http://librairiecomptines.hautetfort.com/"
)

book_store7 = BookStore.create!(
  store_type: "généraliste",
  name: "Gibert Joseph Toulouse",
  address: "3 Rue du Taur, 31000 Toulouse",
  details: "du lundi au samedi de 10h à 19h",
  phone_number: "05 61 11 17 77",
  webpage: "https://www.gibert.com/stores/toulouse-gibert-joseph-librairie"
)

book_store8 = BookStore.create!(
  store_type: "généraliste",
  name: "Ombres Blanches",
  address: "50 Rue Léon Gambetta, 31000 Toulouse",
  details: "du lundi au samedi de 10h à 19h",
  phone_number: "05 34 45 53 33",
  webpage: "https://www.ombres-blanches.fr/"
)

puts 'Librairies créées'
