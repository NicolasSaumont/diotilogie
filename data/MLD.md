utilisateur(id, prenom, nom, email, mot de passe)
question(id, titre, description, lien_image, #utilisateur(id))
categorie(id, nom)

question AVOIR categorie (#question(id), #categorie(id))