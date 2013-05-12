package  
{
	import org.flixel.*;
	
	import flash.utils.getTimer;

	public class Player extends FlxSprite
	{
		[Embed(source = '../assets/player.png')] private var playerPNG:Class;
		
		private var lastFired:int;
		private var xSpeed:uint = 200;
		private var ySpeed:uint = 100;
		
		public var fireType:int = 1;
		
		public function Player() 
		{
			super(FlxG.width / 2, FlxG.height - 16, playerPNG);
		}
		
		override public function update():void
		{
			super.update();
			
			velocity.x = 0;
			velocity.y = 0;
				
			//	Need to adds bound checking to these (as it can probably go too far left right now)
			if (FlxG.keys.LEFT && x > 0)
			{
				velocity.x -= xSpeed;
			}
			
			if (FlxG.keys.RIGHT && x < FlxG.width - width)
			{
				velocity.x += xSpeed;
			}
			
			if (FlxG.keys.UP && y >= 100)
			{
				velocity.y -= ySpeed;
				
				if (y < 100)
				{
					y = 100;
				}
			}
			
			if (FlxG.keys.DOWN && y < FlxG.height - height)
			{
				velocity.y += ySpeed;
			}
			
			//	Keep the ship on the screen at all times
			if (x < 0)
			{
				x = 0;
			}
			else if (x > FlxG.width - width)
			{
				x = FlxG.width - width;
			}
			
			//	Fire!
			if (FlxG.keys.CONTROL && getTimer() > lastFired + Registry.currgun.getBulletDelay())
			{
				switch (fireType)
				{
					case Registry.NORMBULLET:
						// Regular shot
						Registry.bullets.fire(x + 5, y);
						break;
						
					case Registry.FIREBULLET:
						//	Fire shot
						Registry.bullets.fire(x - 10, y - 30);
						break;
						
					case Registry.BEAMBULLET:
						// Beam shot
						Registry.bullets.fire(x + 5, y);
						break;
					case 4:
						//	Quad shot!
						Registry.bullets.fire(x - 8, y);
						Registry.bullets.fire(x, y - 4);
						Registry.bullets.fire(x + 10, y - 4);
						Registry.bullets.fire(x + 18, y);
						break;
				}
				
				lastFired = getTimer();
			}
			
		}
		
	}

}