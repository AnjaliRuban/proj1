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

  end

end
