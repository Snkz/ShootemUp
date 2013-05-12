package  
{
	import org.flixel.FlxSprite;

	/**
	 * ...
	 * @author Snkz
	 */
	public class BeamBullet extends FlxSprite implements Bullet
	{
		[Embed(source = '../assets/beam.png')] private var beambulletPNG:Class;
		
		public var damage:int = 1;
		public var speed:int = 200;
		private var bulletDelay:int = 0;
		
		public function BeamBullet() 
		{
			super(0, 0, beambulletPNG);
			
			//	We do this so it's ready for pool allocation straight away
			exists = false;
		}
		
		public function fire(bx:int, by:int):void
		{
			x = bx;
			y = by;
			velocity.y = -speed;
			exists = true;
		}
		
		override public function update():void
		{
			super.update();
			
			//	Bullet off the top of the screen?
			if (exists && y < -height)
			{
				exists = false;
			}
		}
		
		public function getBulletDelay():int 
		{
			return bulletDelay;
		}
		
		public function doesVanish():Boolean 
		{
			return true;
		}
		
	}

}