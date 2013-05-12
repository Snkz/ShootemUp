package  
{
	import org.flixel.*;
	
	// if there is ammo available 
	// for the current gun (find gun in use in registry) call its fire method. 
	// So everything implements a gun clas and it fires.
	// Bullet class gets removed and its features like bullet manager get changed to
	// gunmanager

	public class BulletManager extends FlxGroup
	{
		
		public function BulletManager() 
		{
			super();
			
			//	There are 40 bullets in our pool
			for (var i:int = 0; i < 40; i++)
			{
				add(new Bullet);
			}
		}
		
		public function fire(bx:int, by:int):void
		{
			if (getFirstAvail())
			{
				Bullet(getFirstAvail()).fire(bx, by);
			}
			
		}
		
	}

}