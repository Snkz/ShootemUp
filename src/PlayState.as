package  
{
	import org.flixel.*;

	public class PlayState extends FlxState
	{
		private var debug:FlxText;
		
		public function PlayState() 
		{
			super();
		}
		
		override public function create():void
		{
			super.create();
			
			debug = new FlxText(0, 0, 200, "");
			
			add(Registry.stars);
			add(Registry.fx);
			add(Registry.enemies);
			add(Registry.bullets);
			add(Registry.player);
			add(debug);
		}
		
		override public function update():void
		{
			super.update();
			
			FlxU.overlap(Registry.bullets, Registry.enemies, Registry.enemies.bulletHitEnemy);
			
			debug.text = "Score: " + FlxG.score.toString() + " Press F1-F3";
			
			//	Debug Testing - these will come from power-ups at some stage
			if (FlxG.keys.justReleased("F1"))
			{
				Registry.player.fireType = 1;
			}
			
			if (FlxG.keys.justReleased("F2"))
			{
				Registry.player.fireType = 2;
			}
			
			if (FlxG.keys.justReleased("F3"))
			{
				Registry.player.fireType = 3;
			}
		}
		
	}

}