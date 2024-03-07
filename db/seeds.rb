User.destroy_all

puts "Création des utilisateurs"

user1 = User.create!(nickname: "Admin",
  email: "admin@mail.fr",
  password: 'password',
  password_confirmation: 'password',
  avatar: "https://i.imgur.com/WdjuE7y.jpeg",
  city: "Paris",
  age: 30)
user2 = User.create!(nickname: "Thomas",
  email: "thomas@mail.fr",
  password: 'password',
  password_confirmation: 'password',
  avatar: "https://i.imgur.com/6VpQxPy.jpeg",
  city: "Bordeaux",
  age: 30)
user3 = User.create!(nickname: "Bastien",
  email: "bastien@mail.fr",
  password: 'password',
  password_confirmation: 'password',
  avatar: "https://i.imgur.com/Mr2E09v.png",
  city: "Bayonne",
  age: 26)
user4 = User.create!(nickname: "Camille",
  email: "camille@mail.fr",
  password: 'password',
  password_confirmation: 'password',
  avatar: "https://i.imgur.com/7VtAuwV.jpeg",
  city: "Toulouse",
  age: 25)

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
  image_url: "https://i.imgur.com/TJhapDH.jpeg"
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
  image_url: "https://i.imgur.com/5bcIyNE.jpeg"
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
  image_url: "https://i.imgur.com/vBFMVs9.jpeg"
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
  ratings: 4.34
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
  image_url: "https://i.imgur.com/gcxaF5l.jpeg"
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
  image_url: "https://imgur.com/9I2ySb7"
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
  image_url: "https://imgur.com/eOEM3KZ"
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
  image_url: "https://imgur.com/7SwaMMf"
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
  image_url: "https://imgur.com/AHFjmGb"
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
  image_url: "https://imgur.com/xdpKREB"
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
  image_url: "https://i.imgur.com/Tmkfv7p.jpeg"
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
  image_url: "https://i.imgur.com/nhpv5LI.jpeg"
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
  image_url: "https://i.imgur.com/2AYS7l1.jpeg"
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
  image_url: "https://i.imgur.com/WaIuTTw.jpeg"
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
  image_url: "https://i.imgur.com/LtLmRRY.jpeg"
)

book16 = Book.create!(
  title: "Lou !, tome 1 : Journal infime",
  summary: "Sous le regard émerveillé de leur fils, ils dansent sur «Mr. Bojangles» de Nina Simone. Leur amour est magique, vertigineux, une fête perpétuelle. Chez eux, il n’y a de place que pour le plaisir, la fantaisie et les amis.
  Celle qui donne le ton, qui mène le bal, c’est la mère, feu follet imprévisible et extravagant. C’est elle qui a adopté le quatrième membre de la famille, Mlle Superfétatoire, un grand oiseau exotique qui déambule dans l’appartement. C’est elle qui n’a de cesse de les entraîner dans un tourbillon de poésie et de chimères.
  Un jour, pourtant, elle va trop loin. Et père et fils feront tout pour éviter l’inéluctable, pour que la fête continue, coûte que coûte.
  L’amour fou n’a jamais si bien porté son nom.",
  author: "Julien Neel",
  genre: "jeunesse",
  publisher: "Glénat",
  publishing_year: 2004,
  EAN: "9782723442756",
  book_type: "bande dessinée",
  ratings: 4.25,
  image_url: "https://i.imgur.com/WeoluBq.jpeg"
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
  image_url: "https://i.imgur.com/0M8n2EQ.jpeg"
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
  image_url: "https://i.imgur.com/1FRuJ6D.jpeg"
)

book19 = Book.create!(
  title: "En finir avec Eddy Bellegueule",
  summary: "« Je suis parti en courant, tout à coup. Juste le temps d'entendre ma mère dire Qu'est-ce qui fait le débile là? Je ne voulais pas rester à leur côté, je refusais de partager ce moment avec eux. J'étais déjà loin, je n'appartenais plus à leur monde désormais, la lettre le disait.»",
  author: "Édouard Louis",
  genre: "contemporain",
  publisher: "Éditions du Seuil",
  publishing_year: 2014,
  EAN: "9782021117707",
  book_type: "pièce de théâtre",
  ratings: 3.72,
  image_url: "https://i.imgur.com/DwL3RQe.jpeg"
)

book20 = Book.create!(
  title: "Astérix, tome 40 : L'Iris Blanc",
  summary: "L’Iris Blanc est le nom d’une nouvelle école de pensée positive, venue de Rome qui commence à se propager dans les grandes villes, de Rome à Lutèce. César décide que cette méthode peut avoir un effet bénéfique sur les camps qui se trouvent autour du célèbre village gaulois. Mais les préceptes de cette école exercent aussi une influence sur les villageois qui croisent son chemin…
  Qu’est-il arrivé à notre chef Gaulois préféré et pourquoi cette mine renfrognée ?",
  author: "René Goscinny, Didier Conrad, Albert Uderzo, Fabcaro",
  genre: "jeunesse",
  publisher: "Les Éditions Albert René",
  publishing_year: 2023,
  EAN: "9782014001334",
  book_type: "bande dessinée",
  ratings: 3.82,
  image_url: "https://i.imgur.com/Jxfuvu4.png"
)

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
  rating: 3,
  title: "super",
  content: "j'ai adoré"
)

review1 = Review.create!(
  user: user2,
  book: book1,
  rating: 4,
  title: "génial",
  content: "j'ai vraiment adoré"
)

review1 = Review.create!(
  user: user3,
  book: book1,
  rating: 2,
  title: "nul",
  content: "je n'ai pas adoré"
)

review1 = Review.create!(
  user: user4,
  book: book1,
  rating: 5,
  title: "chef d'oeuvre",
  content: "pépite !"
)
puts 'Reviews créées'
