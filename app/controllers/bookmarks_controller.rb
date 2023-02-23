class BookmarksController < ApplicationController



  # See all restaurants
  # See details about one restaurant
  # Create a restaurant
  # Update a restaurant
  # Destroy a restaurant

  # un utilisateur peut voir toute les listes
  # Un utilisateur peut voir les détails d’une liste donnée et son nom
  # Un utilisateur peut créer une nouvelle liste

  # Un utilisateur peut ajouter un nouveau signet (association film/liste) à une liste existante
  # Un utilisateur peut supprimer un signet d’une liste. Comment crée-t-on un lien de suppression ?

  # Un signet (bookmark) ajoute un film à une liste
  # (par ex. : Wonder Woman a été ajouté à la watch-list “Girl Power”).
  # Chaque signet fait référence à un film et une liste, avec un commentaire.
  # Le champ commentaire permet à l’utilisateur d’ajouter une remarquer au signet (par ex. : Alan Turing a recommandé ce film).


  def new
    @bookmark = Bookmark.new
  end

end
