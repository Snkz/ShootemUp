package  
{
	/**
	 * ...
	 * @author Snkz
	 */
	public class FireBullet extends Bullet
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
		
	}

}