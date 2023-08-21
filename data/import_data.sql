BEGIN;

--
-- Déchargement des données de la table "quiz"
--

INSERT INTO "question" ("id", "titre", "description", "lien_image", "user_id") VALUES
(1, 'Pourquoi on ne voit les étoiles que la nuit ?', `Imagine que l'univers est un gigantesque spectacle de lumière. Les étoiles sont les vedettes de ce spectacle, et la Terre est le spectateur chanceux qui a une place au premier rang. Mais voici la chose amusante : même si les étoiles brillent jour et nuit, nous ne les voyons que lorsque le soleil se repose et que la nuit tombe. Pourquoi ? Eh bien, c'est un peu comme si les étoiles jouaient à cache-cache avec la lumière du soleil !

Imagine-toi dans une pièce avec une grande fenêtre. Lorsque le soleil brille dehors, il illumine la pièce et rend difficile de voir les petites lumières, comme les ampoules d'une guirlande scintillante que tu pourrais allumer à l'intérieur. C'est à peu près ce qui se passe avec les étoiles. Le soleil est notre étoile locale, et il brille si fort qu'il noie presque toutes les autres lumières dans le ciel pendant la journée.

Mais dès que le soleil se couche et que la nuit arrive, la pièce (ou plutôt, l'espace) devient sombre. C'est comme si quelqu'un avait éteint les lumières. C'est à ce moment-là que les petites étoiles commencent à briller de toutes leurs forces. Elles aiment bien jouer à cache-cache avec le soleil : quand il part se coucher, elles sortent pour nous émerveiller.

De plus, la Terre tourne sur elle-même comme une toupie en train de tourner. Cela signifie que pendant la journée, notre côté du monde fait face au soleil, ce qui nous empêche de voir les étoiles. C'est comme si tu te cachais derrière un grand panneau pendant que le soleil fait son spectacle lumineux. Mais quand la Terre tourne et que nous nous retrouvons du côté opposé, le soleil ne nous bloque plus la vue, et c'est là que le spectacle des étoiles commence !

Cependant, il y a aussi quelque chose de magique appelé "la pollution lumineuse". Imagine que quelqu'un allume une lumière super brillante dans la pièce où tu essaies de regarder les ampoules scintillantes. Cette lumière brillante va rendre les ampoules plus difficiles à voir, n'est-ce pas ? Eh bien, la pollution lumineuse, c'est un peu comme ça. Les lumières artificielles des villes, des maisons et des bâtiments rendent les étoiles plus faibles et moins visibles. C'est pourquoi il est parfois préférable d'aller dans un endroit sombre, comme la campagne, pour profiter pleinement de la beauté des étoiles.

En résumé, les étoiles brillent jour et nuit, mais le soleil est tellement lumineux qu'il les cache pendant la journée. C'est seulement lorsque le soleil se repose et que la nuit arrive que les étoiles sortent pour jouer. Alors, la prochaine fois que tu te retrouves à regarder le ciel étoilé, souviens-toi de ce jeu amusant de cache-cache entre le soleil et les étoiles. Et n'oublie pas que parfois, s'éloigner des lumières brillantes de la ville peut te permettre de profiter encore plus du spectacle scintillant du cosmos !`, '/img/stars.jpg'),
(2, 'Pourquoi les enfants commencent par demander pourquoi ?', `Imagine-toi en train de grandir comme un petit explorateur de l'univers, mais au lieu d'utiliser un sac à dos, tu portes un sac à questions. Et devine quoi ? Ton sac à questions est sans fond, ce qui signifie que tu peux y ajouter autant de "pourquoi" que tu veux, et il n'en sera jamais trop lourd !

Au tout début, quand tu es encore un bébé tout mignon, le monde tout autour de toi est un mystère coloré et bruyant. Tu observes tout avec tes grands yeux curieux et tes petites mains qui veulent toucher tout ce qui bouge. Tu commences à découvrir comment fonctionnent les choses : en touchant, en goûtant et en explorant. Et bien sûr, quand quelque chose te surprend, la question "pourquoi" surgit magiquement de ta bouche.

Imagine que tu vois un oiseau voler dans le ciel. C'est quelque chose de tout à fait nouveau pour toi. Tu te demandes pourquoi cet oiseau peut voler alors que toi, tu ne peux pas. Et paf ! La première question "pourquoi" est posée. C'est comme si tu avais trouvé un trésor dans le monde des mots, et tu veux l'utiliser encore et encore pour déchiffrer les mystères.

À mesure que tu grandis, tu apprends que les adultes autour de toi sont comme des encyclopédies vivantes. Ils connaissent plein de choses et peuvent t'expliquer des tas de réponses aux "pourquoi". Alors tu poses des questions, non seulement pour découvrir comment les choses fonctionnent, mais aussi pour partager un moment de connexions avec les adultes. C'est un peu comme si les questions étaient des ponts qui te rapprochent de tes parents, grands-parents et autres adultes bienveillants.

Mais ce n'est pas tout. Les "pourquoi" sont aussi comme des escaliers qui te mènent toujours plus haut dans la tour du savoir. À chaque nouvelle réponse, tu réalises qu'il y a encore plus à apprendre. Par exemple, si tu demandes pourquoi le ciel est bleu, tu apprends non seulement pourquoi il est bleu, mais aussi comment les rayons de lumière interagissent avec l'air pour créer des couleurs. C'est un peu comme résoudre un casse-tête qui te mène à un autre casse-tête encore plus amusant.

Finalement, les "pourquoi" sont une partie essentielle de ton super-pouvoir de découverte. Ils te permettent de rester curieux et d'explorer le monde qui t'entoure. Ils te poussent à poser des questions, à chercher des réponses et à grandir en sachant de plus en plus de choses.

Alors, la prochaine fois que tu entendras un petit explorateur poser des "pourquoi" à la chaîne, souviens-toi qu'ils construisent un chemin d'aventures et d'apprentissage. Ils sont comme les étoiles du ciel de la curiosité, toujours là pour te guider vers de nouvelles découvertes. Et n'oublie jamais que les plus grandes aventures commencent souvent par un simple "pourquoi" !`, '/img/children-ask-why.jpg'),
(3, `Pourquoi on met des bougies sur les gateaux d'anniversaire ?`, `Imagine-toi dans un monde rempli de rires, de chansons et de gâteaux délicieux. C'est l'anniversaire d'une personne spéciale, et tout le monde est excité. Mais pourquoi donc met-on des bougies qui brillent sur le gâteau ? Attache ta ceinture de fête, car nous allons explorer cette tradition pétillante !

Il y a très, très longtemps, bien avant les jeux vidéo et les jouets high-tech, les anciens pensaient que le feu avait des pouvoirs magiques. Ils croyaient que le feu était un lien entre le monde des humains et le monde des dieux. Ils se disaient que si on allumait une flamme, elle pourrait emporter les vœux, les prières et les souhaits vers le ciel, où les dieux pourraient les entendre.

Maintenant, imagine que c'est ton anniversaire. Les gens te sourient et te chantent "Joyeux anniversaire !" en agitant des ballons colorés. Mais comment ajouter une touche magique à cette journée spéciale ? Eh bien, c'est là que les bougies entrent en scène ! Les bougies symbolisent la lumière qui guide nos rêves et nos souhaits vers le ciel.

Le gâteau d'anniversaire, avec ses couches moelleuses et son glaçage sucré, devient alors une sorte d'autel de célébration. On y plante des bougies comme autant de petits feux magiques, prêts à emporter nos vœux et nos espoirs. Imagine que chaque bougie est comme une étoile miniature dans le ciel de ton anniversaire, attendant de briller de tout son éclat.

Mais ce n'est pas tout ! Il y a une tradition secrète qui fait partie de la magie des bougies d'anniversaire : faire un vœu. Lorsque les bougies scintillent, juste avant de souffler, tu peux faire un vœu secret. Imagine que ton vœu monte avec la fumée des bougies et se dirige vers les étoiles. C'est comme si les étoiles, qui sont aussi des lumières brillantes dans le ciel, entendaient ton vœu et te donnaient une petite dose de leur magie.

Alors, quand tu souffles sur les bougies, c'est comme si tu libérais ton vœu dans l'univers. Et même si nous ne savons pas si les dieux des anciens entendent encore nos vœux, le simple fait de croire en quelque chose de magique rend cet instant spécial. En un souffle, tu éteins les bougies tout en allumant l'étincelle de ton souhait.

En résumé, les bougies sur les gâteaux d'anniversaire sont comme des étoiles brillantes qui transmettent nos vœux vers le ciel. Elles symbolisent la magie, l'espoir et la lumière qui accompagnent chaque année de notre vie. Alors, la prochaine fois que tu verras un gâteau d'anniversaire scintiller de bougies, rappelle-toi que chaque petite flamme porte un souhait qui attend d'être libéré dans le vaste ciel de l'imagination et de la célébration.`, '/img/birthday.jpg'),
(4, 'Pourquoi les vagues ?', `Imagine-toi sur une plage ensoleillée, le sable chatouillant tes orteils. Devant toi, l'océan s'étend à perte de vue, et soudain, tu vois apparaître une vague qui se soulève comme si elle voulait te dire bonjour. Mais comment ces vagues magiques se forment-elles et pourquoi dansent-elles ainsi ? Attache ta ceinture de plage, car nous allons explorer le spectacle éclaboussant des vagues !

Tout commence avec le vent, le grand chef d'orchestre de l'océan. Le vent souffle sur la surface de l'eau, lui donnant un petit coup de pouce pour commencer à bouger. Imagine que c'est comme si le vent chatouillait l'océan pour le faire rire et le faire danser. Plus le vent est fort, plus les chatouilles sont intenses, et plus les vagues deviennent grandes et énergiques.

Maintenant, imagine que l'océan est un immense tapis roulant. Lorsque le vent souffle, il crée des bosses sur le tapis roulant. Ces bosses sont comme les débuts de nos vagues. À mesure que le vent continue de souffler, les bosses se transforment en vagues en mouvement. C'est comme si l'océan mettait son chapeau de danseur et commençait à virevolter sur le tapis roulant de vagues.

Cependant, les vagues ne restent pas toutes proches de la plage. Elles se propagent en cercles. Imagine que tu as jeté un caillou dans une mare d'eau. Les petites vagues qui se forment autour du point d'impact se déplacent en cercles de plus en plus grands. C'est pareil avec les vagues de l'océan, mais à une échelle bien plus gigantesque !

Les vagues se propagent depuis l'endroit où le vent les a créées jusqu'à ce qu'elles atteignent le rivage. C'est là que les vagues deviennent encore plus amusantes. Quand elles sentent que la plage approche, elles ralentissent parce que le fond de la mer est plus proche. C'est comme si elles faisaient une pirouette finale avant de se reposer sur le sable. C'est pourquoi les vagues semblent plus hautes et se brisent en éclats d'écume.

Maintenant, imagine que tu sautes dans l'eau et que tu commences à sauter dans les vagues. Tes mouvements créent des ondulations dans l'eau, n'est-ce pas ? Eh bien, c'est ce qui se passe quand les vagues atteignent le rivage. Elles rebondissent et se mélangent avec l'eau qui arrive déjà du large. C'est comme une grande fête où les vagues se serrent la main, se font des câlins et dansent ensemble.

En résumé, les vagues sont des danseurs océaniques qui commencent leur spectacle grâce au vent. Le vent chatouille la surface de l'eau, créant des bosses qui se transforment en vagues. Ces vagues se propagent en cercles depuis leur point de naissance et dansent en direction de la plage, où elles se brisent en éclats d'écume joyeuse. Alors, la prochaine fois que tu seras sur la plage, regarde ces vagues comme les stars de leur propre ballet aquatique, et n'hésite pas à te joindre à leur danse éclaboussante !`, '/img/waves.jpg'),
(5, 'Pourquoi on a des bleus quand on se cogne ?', `Imagine que ton corps est un château fort, avec de vaillantes petites troupes qui travaillent dur pour te garder en bonne santé. Parfois, même les châteaux forts subissent des attaques, et c'est là que nos petits héros, les bleus, entrent en jeu !

Imagine que ton corps est un terrain de bataille miniature. À l'intérieur, il y a des milliards de soldats appelés "plaquettes sanguines" qui patrouillent dans tes vaisseaux sanguins. Ces plaquettes sont un peu comme les super-héros qui portent des capes, mais à la place, elles portent des protéines spéciales pour aider à arrêter les saignements.

Maintenant, imagine que tu te cognes quelque part. Les vaisseaux sanguins, ces petits tuyaux qui transportent ton sang, peuvent être endommagés par le choc. C'est un peu comme si une petite brèche apparaissait dans les murs de ton château fort. Mais ne t'inquiète pas, nos vaillantes plaquettes sanguines sont là pour sauver la situation !

Dès que le choc se produit, tes plaquettes super-héros reçoivent un signal d'alarme. Elles se précipitent vers la zone endommagée et commencent à former une sorte de barrière protectrice. C'est comme si elles empilaient des briques pour réparer le mur du château. Elles collent ensemble pour former un petit bouchon temporaire pour stopper le saignement.

Le truc rigolo, c'est que ces plaquettes se mettent un peu en mode supercollant. Elles libèrent des petites molécules magiques qui rendent les autres plaquettes attirées les unes vers les autres, formant ainsi une sorte de tampon de protection. Ce tampon est un peu comme un pansement intérieur qui permet aux vaisseaux sanguins de guérir tranquillement sous la surface.

Mais voilà pourquoi tu as des bleus ! Quand tes plaquettes sanguines se précipitent pour réparer le vaisseau sanguin endommagé, elles peuvent parfois créer un petit désordre. Elles peuvent endommager les tout petits vaisseaux sanguins autour de la zone de l'impact. Ces petits vaisseaux sanguins, appelés capillaires, sont si minuscules qu'ils ne peuvent pas être vus à l'œil nu. Lorsqu'ils sont endommagés, ils laissent s'échapper un peu de sang qui se glisse sous ta peau.

C'est là que les bleus entrent en scène ! Le sang qui s'est échappé des capillaires forme une petite tache sous la peau, ce qui crée cette couleur bleuâtre ou violette. C'est comme si ton château fort avait un petit tatouage temporaire pour montrer où le combat a eu lieu.

Ainsi, quand tu te cognes, c'est une bataille silencieuse et courageuse qui se déroule à l'intérieur de toi. Tes plaquettes sanguines, comme de véritables super-héros, viennent à la rescousse pour réparer les dégâts. Et les petits bleus sont comme des souvenirs colorés de ces aventures intérieures. Alors, la prochaine fois que tu auras un petit bleu, rappelle-toi que c'est la preuve que ton corps est rempli de héros en action, travaillant dur pour te garder en sécurité et en bonne santé !`, '/img/bruise.jpg'),
(6, 'Pourquoi la Première Guerre Mondiale ?', `Imagine-toi dans une grande fête, avec plusieurs pays invités. Chacun de ces pays est comme un personnage avec sa propre personnalité, sa culture et ses intérêts. Tout le monde danse et s'amuse, mais sous la surface, il y a des tensions qui commencent à gronder.

Le monde était un peu comme un puzzle géant, avec des pièces de territoires, de ressources et de puissance. Certains pays voulaient plus de pièces pour agrandir leur propre puzzle, et d'autres ne voulaient pas que leur puzzle soit démonté. La situation était un peu comme un jeu de Monopoly, où chacun essayait de rassembler le plus de propriétés possibles.

Maintenant, imagine qu'un événement imprévu se produise. C'est comme si quelqu'un avait renversé la table de Monopoly ! Cet événement est l'assassinat de l'archiduc François-Ferdinand, l'héritier du trône d'Autriche-Hongrie. Cela s'est passé en 1914 à Sarajevo, une ville aujourd'hui en Bosnie. Cet assassinat a été la goutte d'eau qui a fait déborder le vase des tensions accumulées entre les pays.

L'Autriche-Hongrie a accusé la Serbie, un autre pays des Balkans, d'être derrière l'assassinat. C'était comme si la fête se transformait soudainement en une dispute bruyante. Les pays étaient divisés en groupes d'amis, et ils se sont soutenus mutuellement. L'Allemagne, l'Autriche-Hongrie et l'Italie étaient un peu comme une bande de copains, tout comme la France, la Russie et le Royaume-Uni formaient leur propre groupe.

Avant que tu ne le saches, la fête avait viré au cauchemar. Les pays commençaient à se déclarer la guerre les uns aux autres. C'était comme si les gens se lançaient des confettis explosifs au lieu de sourires. Les troupes étaient mobilisées, les armes étaient sorties des placards et la Première Guerre mondiale avait commencé.

Imagine que la guerre était comme une partie de cache-cache où les soldats se cachaient dans des tranchées, ces sortes de fossés creusés dans le sol pour se protéger. Les tranchées étaient leur maison pendant de longues périodes, et les batailles étaient comme de grosses bagarres dans la cour de récré.

La guerre a duré quatre longues années, avec des combats féroces, des soldats courageux et des changements dans la manière de faire la guerre. Il y avait des avions pour la première fois, des tanks étranges qui ressemblaient à des tortues métalliques et même des lettres d'amour échangées entre les tranchées.

Finalement, en 1918, la guerre s'est terminée avec une trêve. C'était comme si quelqu'un avait finalement dit "Assez !" et avait décidé de mettre fin à la bataille. Les pays ont signé un accord pour arrêter les combats et ont essayé de mettre les morceaux du puzzle mondial de nouveau en place.

La Première Guerre mondiale a laissé des cicatrices profondes dans l'histoire, mais elle a aussi apporté des leçons importantes. Elle a montré que la coopération entre les pays est essentielle pour éviter de telles catastrophes à l'avenir. La fête qui a mal tourné a inspiré les générations suivantes à travailler ensemble pour maintenir la paix et à ne pas oublier les horreurs de la guerre.

Alors, la prochaine fois que tu verras une vieille photo en noir et blanc de cette époque, rappelle-toi que c'était une période où le monde jouait un drôle de jeu de puzzle géant, mais qu'il en a appris des leçons précieuses pour construire un avenir plus paisible et uni.`, '/img/ww1.png'),
(7, 'Pourquoi le feu brûle ?', `Imagine-toi dans une forêt enchantée où chaque arbre est une source de chaleur magique. C'est là que vit le grand chef cuisinier du monde, le Feu. Mais pourquoi donc le feu brûle-t-il ? Attache ta toque de cuisinier, car nous allons plonger dans le monde flamboyant du feu !

Tout commence avec des petits bouts de choses appelés "combustibles". Ce sont des choses comme le bois, le papier et même les cônes de pin qui tombent des arbres. Imagine que ces combustibles sont comme des ingrédients secrets que le Feu utilise pour cuisiner sa magie. Mais le Feu ne peut pas cuisiner tout seul. Il a besoin d'un ami spécial appelé "oxygène".

L'oxygène est l'air que nous respirons, mais c'est aussi le meilleur ami du Feu. Quand le Feu et l'oxygène se rencontrent, c'est comme si deux danseurs se rejoignaient pour une danse incroyablement énergique. L'oxygène donne au Feu l'énergie nécessaire pour brûler.

Imagine que les combustibles sont comme des morceaux de bois dans une cheminée. Le Feu, tout excité, saute sur les combustibles et commence à danser. Mais cette danse n'est pas comme celle que tu pourrais voir à la télévision. C'est une danse de chaleur, de lumière et de transformations incroyables.

Quand le Feu danse sur les combustibles, il libère des choses appelées "chaleur" et "lumière". C'est comme si le Feu partageait un câlin chaleureux avec les morceaux de bois et leur disait : "Je vais te transformer en quelque chose de différent, mais ne t'inquiète pas, ce sera génial !". La chaleur et la lumière que nous voyons sont le résultat de cette danse énergique.

Le Feu utilise l'énergie de l'oxygène pour décomposer les combustibles en petites pièces appelées "particules". Ces particules, ou morceaux plus petits, s'assemblent ensuite pour créer de nouvelles choses. C'est comme si le Feu avait un superpouvoir de transformer les choses en quelque chose de totalement différent.

Pendant que le Feu danse, il crée également des gaz qui montent dans les airs. Ces gaz sont comme les fumées parfumées qui s'échappent de ta cuisine quand tu cuisines quelque chose de délicieux. Ils peuvent être colorés et brillants, ajoutant encore plus de magie au spectacle.

Cependant, il y a une règle importante dans le monde du Feu : pour danser, il a besoin de combustibles et d'oxygène. Si tu prives le Feu d'oxygène, il s'éteint. C'est comme si les deux danseurs ne pouvaient pas bouger s'ils ne se tiennent pas la main.

En résumé, le feu brûle grâce à une danse énergique entre les combustibles, comme le bois, et l'oxygène, l'air que nous respirons. Cette danse crée de la chaleur, de la lumière et des transformations magiques. Le Feu est comme un chef cuisinier qui mélange les ingrédients pour créer un spectacle flamboyant. Alors, la prochaine fois que tu verras des flammes danser, souviens-toi que c'est une fête chaleureuse et lumineuse orchestrée par le Feu et son meilleur ami, l'oxygène !`, '/img/fire.jpg'),
(8, 'Pourquoi on mange ?', `Imagine-toi dans une fête géante où les plats dansent, les saveurs chantent et les fourchettes jouent de la musique. C'est là que se déroule le festival des ventres affamés. Mais pourquoi donc on mange ? Attache ta serviette comme une cape, car nous allons plonger dans les saveurs et les mystères de la nourriture !

Imagine que ton corps est comme une voiture super géniale. Mais cette voiture n'a pas d'essence spéciale, elle a besoin de carburant pour fonctionner. Ce carburant, c'est la nourriture ! Chaque morceau que tu manges est comme une petite goutte d'essence qui permet à ton corps de bouger, penser et jouer.

Tout commence dans ton ventre, où se trouve un étrange atelier de cuisine. Imagine que ton ventre est un laboratoire secret où des chefs imaginaires, appelés "enzymes", se mettent au travail. Ces enzymes sont comme les maîtres de la cuisine, transformant les aliments en petites molécules que ton corps peut utiliser.

Pendant que les enzymes travaillent, ton estomac gronde parfois. C'est comme si les chefs invisibles faisaient un peu de bruit pour montrer qu'ils sont en train de concocter un festin intérieur. C'est un peu comme si ta cuisine personnelle était en pleine ébullition.

Mais pourquoi la nourriture est-elle si importante ? Eh bien, imagine que tu es un super-héros en mission. Pour accomplir des tâches incroyables, tu as besoin de super-pouvoirs spéciaux. Ces super-pouvoirs sont comme les nutriments que tu trouves dans la nourriture. Les nutriments sont comme les morceaux magiques qui te donnent de l'énergie, renforcent tes muscles et rendent tes os super forts.

Imagine que les nutriments sont comme les ingrédients magiques dans une potion magique. Les vitamines, les protéines, les glucides et les graisses sont comme les gouttes magiques qui te rendent plus fort, plus intelligent et plus rapide. Ils sont nécessaires pour que ton corps fonctionne correctement et que tu puisses être un super-héros de tous les jours.

Cependant, il y a aussi des aliments qui ne sont pas si bons pour ton corps. Imagine que ce sont des méchants qui veulent te jouer des tours. Les bonbons sucrés et les gâteaux délicieux peuvent sembler amusants, mais s'ils sont consommés en excès, ils peuvent causer des problèmes comme les caries et l'excès de poids. C'est un peu comme si les méchants tentaient de te piéger, mais tu peux les vaincre en choisissant des aliments plus sains !

En résumé, on mange pour donner à notre corps le carburant dont il a besoin pour fonctionner comme une machine géniale. La nourriture est comme une potion magique qui nous fournit des nutriments super-puissants pour rester forts, en bonne santé et remplis d'énergie. Les enzymes dans notre ventre travaillent dur pour transformer les aliments en petites molécules utiles. Alors, la prochaine fois que tu t'assois pour un repas, souviens-toi que tu te prépares pour une aventure intérieure dans le laboratoire de ton corps, où les chefs invisibles préparent un festin de super-pouvoirs !`, '/img/eat.jpg'),
(9, 'Pourquoi on utilise le Voice Over plutôt que le doublage ?', `Imagine-toi dans un studio de cinéma magique où les mots dansent et les voix se baladent comme des papillons. C'est là que réside le mystère du Voice Over, une technique qui ajoute une touche spéciale à nos films et nos émissions préférées. Mais pourquoi choisit-on le Voice Over plutôt que le doublage ? Installe-toi dans ton fauteuil confortable, car nous allons explorer cette décision pleine de saveurs sonores !

Le Voice Over, c'est comme une émission de radio qui se faufile dans nos films et nos émissions télévisées. Imagine que c'est comme un narrateur secret qui chuchote dans ton oreille pour te raconter une histoire. Mais pourquoi cette astuce est-elle parfois préférée au doublage, où les acteurs parlent directement dans une autre langue ?

Imagine que tu es dans un film qui se déroule dans une ville exotique. Les rues sont animées, les marchés sont colorés, et tout le monde parle une langue étrange que tu ne comprends pas. Si tu choisis le doublage, les voix des acteurs seront changées pour correspondre à une autre langue. Mais il y a un petit problème : les expressions faciales, les mouvements des lèvres et les intonations originales des acteurs ne correspondent plus aux nouvelles voix. C'est comme si les personnages faisaient du playback étrange.

C'est là que le Voice Over arrive à la rescousse ! Imagine que le Voice Over est un guide touristique sympa qui traduit ce que les gens disent dans tes écouteurs. Il chuchote dans ton oreille, expliquant ce qui se passe sans que les acteurs aient à synchroniser leurs mouvements de lèvres. C'est comme si les personnages parlaient dans leur langue, tandis que ton guide personnel te raconte tout en direct.

De plus, le Voice Over peut ajouter une touche d'intimité et de connexion. Imagine que tu entres dans l'esprit d'un personnage et entends ses pensées secrètes. C'est comme si tu avais un accès VIP à leurs sentiments les plus profonds. Cette technique est parfaite pour les moments où les pensées intérieures sont plus importantes que ce que les personnages disent à voix haute.

Mais n'oublions pas le côté pratique du Voice Over ! Imagine que tu es en train de regarder un documentaire passionnant sur la vie des girafes. Les experts expliquent tout ce que tu veux savoir, mais si le doublage était utilisé, les voix des experts ne colleraient pas bien avec leurs visages. Le Voice Over permet aux experts de parler dans leur propre langue, donnant ainsi aux téléspectateurs une expérience d'apprentissage authentique.

Cependant, le doublage a aussi son charme. Imagine que tu es fan d'une série étrangère avec des acteurs géniaux. Le doublage peut te permettre de les entendre dans ta propre langue, tout en synchronisant leurs mouvements de lèvres. C'est un peu comme si les personnages parlaient juste pour toi, dans une langue que tu comprends parfaitement.

En résumé, le Voice Over est comme un guide personnel qui te raconte l'histoire tandis que les personnages continuent de parler dans leur langue. Cela permet de garder l'authenticité des expressions faciales et des mouvements des lèvres tout en offrant une traduction subtile. Le doublage, quant à lui, est comme une version personnalisée où les acteurs parlent dans ta langue. Les deux techniques ont leur propre charme et sont utilisées selon le contexte et les préférences des créateurs et des spectateurs. Alors, la prochaine fois que tu entendras une voix mystérieuse derrière l'action à l'écran, rappelle-toi que c'est peut-être le Voice Over qui te guide à travers les aventures cinématographiques !`, '/img/voice-over.jpg'),
(10, `Pourquoi on change d'heure ?`, `Imagine-toi dans un monde où les horloges sont un peu taquines et décident de jouer à cache-cache avec le soleil. Attache ta ceinture temporelle, car nous allons explorer pourquoi on change d'heure !

Tout commence dans un endroit appelé "le pays des fuseaux horaires". Imagine que la Terre est divisée en tranches de gâteau, chacune ayant son propre fuseau horaire. Quand le soleil se lève dans une partie du monde, c'est comme si une tranche de gâteau était illuminée par la lumière du jour.

Maintenant, imagine que le pays des fuseaux horaires décide de faire un peu de magie. Deux fois par an, il joue avec les aiguilles des horloges pour créer une illusion étonnante : changer l'heure. C'est comme si le pays des fuseaux horaires avait un jeu secret de "lève-toi plus tôt" et "dors plus longtemps".

En été, le pays des fuseaux horaires décide de jouer avec l'heure du coucher du soleil. Imagine que le soleil est comme une bougie géante qui éclaire le monde. En avançant l'heure, c'est comme si le pays des fuseaux horaires poussait légèrement la bougie vers l'avant, ce qui rend les journées plus longues. C'est comme si on ajoutait une potion de lumière magique à chaque journée.

En hiver, le pays des fuseaux horaires fait l'inverse. Il décide de reculer l'heure pour que le soleil se couche plus tôt. Imagine que c'est comme si la bougie du soleil était repoussée un peu en arrière, rapprochant les soirées plus tôt. C'est comme si on dégustait un délicieux chocolat chaud enroulé dans une couverture douillette.

Mais pourquoi donc jouer à ce jeu avec le temps ? Eh bien, imagine que c'est un peu comme un grand tour de manège pour le monde entier. En avançant l'heure en été, on peut profiter de la lumière du jour plus longtemps, ce qui est génial pour les activités en plein air et les soirées de jeux. En hiver, reculer l'heure permet d'utiliser la lumière du jour plus tôt le matin, ce qui est utile pour les journées de travail.

Cependant, ce jeu de changement d'heure n'est pas aimé de tout le monde. Imagine que certaines personnes préfèrent des horaires constants pour ne pas perturber leur routine. C'est comme si elles préféraient que la bougie du soleil reste à la même place tout le temps.

Alors, pourquoi joue-t-on à ce jeu de changement d'heure ? C'est un peu comme une baguette magique qui ajuste nos journées pour mieux s'adapter à la lumière du soleil. Le pays des fuseaux horaires donne un petit coup de pouce à l'horloge pour créer des journées plus longues ou plus courtes, en fonction de la saison.

En résumé, on change d'heure pour ajuster nos journées à la lumière du soleil. Le pays des fuseaux horaires joue avec les aiguilles des horloges pour faire des journées plus longues en été et des soirées plus tôt en hiver. C'est un peu comme un spectacle magique pour donner à chaque saison sa propre touche spéciale. Alors, la prochaine fois que tu changeras l'heure de tes horloges, rappelle-toi que c'est le pays des fuseaux horaires qui organise ce tour de manège temporel pour rendre nos journées encore plus éclatantes !`, '/img/change-time.jpg'),
(11, 'Linux - II', 'Non, ce n''est pas un pingouin!', 3),
(12, 'Linux - III', 'Non, ce n''est pas un pingouin!', 3),
(13, 'Star Wars - II', 'La légende continue.', 1),
(14, 'Star Wars - III', 'La légende continue.', 1),
(15, 'Les bières belges - II', 'Patrimoine exporté dans le monde entier', 3),
(16, 'Les bières belges - III', 'Patrimoine exporté dans le monde entier', 3),
(17, 'Les fromages de France - II', 'Près de 1000 fromages différents', 3),
(18, 'Les fromages de France - III', 'Près de 1000 fromages différents', 3);
(19, 'Animaux célèbres - I', 'Tantôt effrayants, tdropantôt drôles.', 1),
(20, 'Le chocolat - I', 'Bon pour le moral, un peu moins pour le foie.', 1),
(21, 'Linux - I', 'Non, ce n''est pas un pingouin!', 1),
(22, 'Star Wars - I', 'La légende continue.', 1),
(23, 'Les bières belges - I', 'Patrimoine exporté dans le monde entier', 3),
(24, 'Les fromages de France - I', 'Près de 1000 fromages différents', 3),
(25, 'Animaux célèbres - II', 'Tantôt effrayants, tantôt drôles.', 1),
(26, 'Animaux célèbres - III', 'Tantôt effrayants, tantôt drôles.', 1),
(27, 'Le chocolat - II', 'Bon pour le moral, un peu moins pour le foie.', 3),
(28, 'Le chocolat - III', 'Bon pour le moral, un peu moins pour le foie.', 1),
(29, 'Linux - II', 'Non, ce n''est pas un pingouin!', 3),
(30, 'Linux - III', 'Non, ce n''est pas un pingouin!', 3),
(31, 'Star Wars - II', 'La légende continue.', 1),
(32, 'Star Wars - III', 'La légende continue.', 1),
(33, 'Les bières belges - II', 'Patrimoine exporté dans le monde entier', 3),
(34, 'Les bières belges - III', 'Patrimoine exporté dans le monde entier', 3),
(35, 'Les fromages de France - II', 'Près de 1000 fromages différents', 3),
(36, 'Les fromages de France - III', 'Près de 1000 fromages différents', 3);
(37, 'Animaux célèbres - I', 'Tantôt effrayants, tdropantôt drôles.', 1),
(38, 'Le chocolat - I', 'Bon pour le moral, un peu moins pour le foie.', 1),
(39, 'Linux - I', 'Non, ce n''est pas un pingouin!', 1),
(40, 'Star Wars - I', 'La légende continue.', 1),
(41, 'Les bières belges - I', 'Patrimoine exporté dans le monde entier', 3),
(42, 'Les fromages de France - I', 'Près de 1000 fromages différents', 3),
(43, 'Animaux célèbres - II', 'Tantôt effrayants, tantôt drôles.', 1),
(44, 'Animaux célèbres - III', 'Tantôt effrayants, tantôt drôles.', 1),
(45, 'Le chocolat - II', 'Bon pour le moral, un peu moins pour le foie.', 3),
(46, 'Le chocolat - III', 'Bon pour le moral, un peu moins pour le foie.', 1),
(47, 'Linux - II', 'Non, ce n''est pas un pingouin!', 3),
(48, 'Linux - III', 'Non, ce n''est pas un pingouin!', 3),
(49, 'Star Wars - II', 'La légende continue.', 1),
(50, 'Star Wars - III', 'La légende continue.', 1),
(51, 'Les bières belges - II', 'Patrimoine exporté dans le monde entier', 3),
(52, 'Les bières belges - III', 'Patrimoine exporté dans le monde entier', 3),
(53, 'Les fromages de France - II', 'Près de 1000 fromages différents', 3),
(54, 'Les fromages de France - III', 'Près de 1000 fromages différents', 3);

--
-- Déchargement des données de la table "tag"
--

INSERT INTO "categorie" ("id", "nom") VALUES
(1, 'Anatomie'),
(2, 'Astronomie'),
(3, 'Biologie'),
(4, 'Chimie'),
(5, 'Cinéma'),
(6, 'Culture Geek'),
(7, 'Géologie'),
(8, 'Histoire'),
(9, 'Sciences Physiques'),
(10, 'Physique Quantique'),
(11, 'Psychologie'),
(12, 'Religion'),
(13, 'Sociologie');

INSERT INTO "question_has_categorie" ("question_id", "categorie_id") VALUES
(1, 2),
(2, 11),
(3, 8),
(4, 9),
(5, 1),
(6, 8),
(7, 9),
(8, 1),
(9, 5),


COMMIT;

SELECT setval('question_id_seq', (SELECT MAX(id) from "question"));
SELECT setval('categorie_id_seq', (SELECT MAX(id) from "categorie"));

COMMIT;
