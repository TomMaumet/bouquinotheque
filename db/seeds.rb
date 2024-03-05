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

puts "Création des livres"

book1 = Book.create!(title: "Dune",
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
image_url: "https://i.imgur.com/TJhapDH.jpeg")

book2 = Book.create!(title: "Huis clos",
  summary: "Un publiciste adultère fusillé pour avoir déserté, une jeune bourgeoise qui a noyé son enfant et poussé son amant au suicide, une employée des postes lesbienne qui a peut-être une mort sur la conscience : les trois se retrouvent en Enfer. Contrairement à ce qu’ils croyaient, l’Enfer n’est pas une chambre de torture mais un salon Second Empire où ils vont – éternellement – s’épier, se provoquer, tenter de se séduire et surtout se déchirer.",
  author: "Jean-Paul Sartre",
  genre: "théâtre",
  publisher: "Gallimard",
  publishing_year: 1947,
  EAN: "9782070368075",
  book_type: "roman",
  ratings: 3.97,
image_url: "https://i.imgur.com/5bcIyNE.jpeg")

book3 = Book.create!(title: "L'étranger",
  summary: "Meursault reçoit un télégramme annonçant que sa mère, qu'il a placée à l’hospice de Marengo, vient de mourir. Il se rend en autocar à l’asile de vieillards, situé près d’Alger. Veillant la morte toute la nuit, il assiste le lendemain à la mise en bière et aux funérailles, sans avoir l'attitude attendue d’un fils endeuillé ; le protagoniste ne pleure pas, il ne veut pas simuler un chagrin qu'il ne ressent pas.",
  author: "Albert Camus",
  genre: "absurde",
  publisher: "Gallimard",
  publishing_year: 1042,
  EAN: "9782070360024",
  book_type: "roman",
  ratings: 3.98,
image_url: "https://i.imgur.com/vBFMVs9.jpeg")

book4 = Book.create!(title: "L'Assassin royal, tome 1 : L'Apprenti assassin",
  summary: "Au château de Castelcerf le roi Subtil Loinvoyant règne sur les Six Duchés ; il est aidé dans sa lourde tâche par son fils Chevalerie qui, comme son père et tous les nobles du royaume, porte le nom de la qualité que ses parents espéraient le voir développer. Ainsi le frère du Roi-servant s'appelle-t-il Vérité et leur demi-frère, né d'un second lit, Royal. Suite à une aventure restée inconnue de tous, Chevalerie donne à la lignée un nouveau descendant : un bâtard, dont la simple existence va bouleverser le fragile équilibre qu'avait établi le roi pour contrôler ses turbulents fils. Ce héros malgré lui, nommé Fitz, voit son avenir s'assombrir au fil du temps. Alors que les autres enfants ont déjà leur place à la cour et dans ses intrigues, lui devra la mériter et servir la couronne en devenant ce que personne ne voulait être : l'Assassin royal. Au service de son roi, il apprendra les poisons, le meurtre et la trahison...",
  author: "Robin Hobb",
  genre: "fantasy",
  publisher: "Pygmalion",
  publishing_year: 1998,
  EAN: "9782290352625",
  book_type: "roman",
  image_url: "https://i.imgur.com/qHlk143.jpeg",
  ratings: 4.34,)

book5 = Book.create!(title: "La Crise de la culture",
  summary: "L'homme se tient sur une brèche, dans l'intervalle entre le passé révolu et l'avenir inconnaissable. Il ne peut s'y tenir que dans la mesure où il pense, brisant ainsi, par sa résistance aux forces du passé infini et du futur infini, le flux du temps indifférent.
  Chaque génération nouvelle, chaque homme nouveau doit redécouvrir laborieusement l'activité de pensée. Longtemps, pour ce faire, on put recourir à la tradition. Or nous vivons, à l'âge moderne, l'usure de la tradition, la crise de la culture.",
  author: "Hannah Arendt",
  genre: "philosophie",
  publisher: "Gallimard",
  publishing_year: 1972,
  EAN: "9782070325030",
  book_type: "essai",
  ratings: 3.98,
image_url: "https://i.imgur.com/gcxaF5l.jpeg")
