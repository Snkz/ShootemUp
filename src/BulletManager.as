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
			for each (var group:FlxGroup in Registry.gungroups) 
			{
				add(group);
			}

		}
		
		public function fire(bx:int, by:int):void
		{
			trace("her33e");
			if (Registry.currgroup.getFirstAvail())
			{
				trace("here");
				Bullet(Registry.currgroup.getFirstAvail()).fire(bx, by);
			}
			
		}
		
	}

}