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
