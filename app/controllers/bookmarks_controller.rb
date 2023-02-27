class BookmarksController < ApplicationController

  before_action :set_bookmark, only: :destroy
  before_action :set_list, only: [:new, :create]

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

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    @bookmark.save
    redirect_to list_path(@list)

  end

  def destroy
    @bookmark.destroy
    redirect_to list_path(@bookmark.list), status: :see_other
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment)
  end

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def set_list
    @list = List.find(params[:list_id])
  end

end

# t.string "comment"
# t.bigint "movie_id", null: false
# t.bigint "list_id", null: false
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
