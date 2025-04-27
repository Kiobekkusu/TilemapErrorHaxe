package;

import flixel.FlxState;
import flixel.addons.editors.ogmo.FlxOgmo3Loader;
import flixel.tile.FlxTilemap;

class PlayState extends FlxState
{
	var map:FlxOgmo3Loader;
	var walls:FlxTilemap;

	override public function create()
	{
		super.create();

		map = new FlxOgmo3Loader("assets/data/four_map.ogmo", "assets/data/four_map.json");
		walls = map.loadTilemap("assets/images/ground_beta.png", "walls");
		walls.follow();
		walls.setTileProperties(1, NONE);
		walls.setTileProperties(2, ANY); 
		add(walls);
		
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}