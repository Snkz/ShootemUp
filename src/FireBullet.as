package  
{
	import org.flixel.FlxSprite;

	/**
	 * ...
	 * @author Snkz
	 */
	public class FireBullet extends FlxSprite implements Bullet
	{
		[Embed(source = '../assets/firebullet.png')] private var firebulletPNG:Class;
		
		public var damage:int = 3;
		public var speed:int = 50;
		
		public function FireBullet() 
		{
			super(0, 0, firebulletPNG);
			
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
		
	}

}