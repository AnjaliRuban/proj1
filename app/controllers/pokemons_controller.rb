class PokemonsController < ApplicationController

  def capture
    @poke = Pokemon.find_by(id: params[:id])

    if @poke.update(trainer: current_trainer)
      redirect_to(:root)
    end

  end

  def damage
    @poke = Pokemon.find_by(id: params[:id])
    @health = @poke[:health] - 10

    if @poke.update(health: @health)
      if @poke[:health] <= 0
        @poke.destroy
      end
      redirect_to controller: 'trainers', action: 'show', id: @poke[:trainer]
    end

  end

  def new
    @poke = Pokemon.create(level: 1, trainer: current_trainer, health: 100)
  end

  def create
    @poke = Pokemon.new(name: params[:name], level: 1, trainer: current_trainer, ndex: params[:ndex], health: 100)
    if @poke.save
      redirect_to controller: 'trainers', action: 'show', id: @poke[:trainer]
    else
      redirect_to controller: 'pokemons', action: 'new'
    end
  end



end
