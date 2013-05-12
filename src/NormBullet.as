package  
{
	import org.flixel.FlxSprite;

	/**
	 * ...
	 * @author Snkz
	 */
	public class NormBullet extends FlxSprite implements Bullet
	{
		[Embed(source = '../assets/bullet.png')] private var normbulletPNG:Class;
		
		public var damage:int = 1;
		public var speed:int = 300;
		private var bulletDelay:int = 75;
		
		public function NormBullet() 
		{
			super(0, 0, normbulletPNG);
			
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