utilisateur(id, prénom, nom, email, mot de passe)
question(id, titre, description, #utilisateur(id))
categorie(id, nom)

question AVOIR categorie (#question(id), #categorie(id))