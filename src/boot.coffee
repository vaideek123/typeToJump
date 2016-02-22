"use strict"
define ["Phaser"], (Phaser) -> 
  exports = {}
  exports.BootState = class BootState extends Phaser.State
    preload: ->
      @game.load.image "progressBar", "assets/graphics/progressBar.png"
      return
    create: ->
      # Set a background color and the physics system
      @game.stage.backgroundColor = "#3498db"
      @game.physics.startSystem Phaser.Physics.ARCADE
      @game.state.start "load"
      return
  return exports