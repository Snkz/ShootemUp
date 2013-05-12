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
		
			Registry.init();
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
				Registry.player.fireType = Registry.NORMBULLET;
				Registry.currgroup = Registry.bulletgroup;
				Registry.currgun = Registry.normgun;
			}
			
			if (FlxG.keys.justReleased("F2"))
			{
				Registry.player.fireType = Registry.FIREBULLET;
				Registry.currgroup = Registry.firegroup;
				Registry.currgun = Registry.firegun;
			}
			
			if (FlxG.keys.justReleased("F3"))
			{
				Registry.player.fireType = Registry.BEAMBULLET;
				Registry.currgroup = Registry.beamgroup;
				Registry.currgun = Registry.beamgun;
			}
			
			if (FlxG.keys.justReleased("F4"))
			{
				Registry.player.fireType = 4;
				Registry.currgroup = Registry.bulletgroup;
				Registry.currgun = Registry.normgun;
			}
		}
		
	}

}