package  
{
	import org.flixel.FlxGroup;
	public class Registry
	{
		public static var stars:Starfield = new Starfield;
		public static var player:Player = new Player;
		public static var bullets:BulletManager = new BulletManager;
		public static var enemies:EnemyManager = new EnemyManager;
		public static var fx:Fx = new Fx;
		
		public static var currgun:Bullet;
		public static var currgroup:FlxGroup;
		
		public static var firegroup:FlxGroup = new FlxGroup();
		public static var bulletgroup:FlxGroup = new FlxGroup();
		public static var beamgroup:FlxGroup = new FlxGroup();
		
		public static var FIRECOUNT:int = 20;
		public static var BULLETCOUNT:int = 40;
		public static var BEAMCOUNT:int = 2;
		
		public static var gungroups:Array = [firegroup, bulletgroup, beamgroup];
		
		public function Registry() {}
		
		public static function init():void 
		{
			// Bullet Group
			for (var i:int = 0; i < BULLETCOUNT; i++) { bulletgroup.add(new NormBullet); }
			// Fire Group
			for (var j:int = 0; j < FIRECOUNT; j++) { firegroup.add(new FireBullet); }
			// Beam Group
			for (var k:int = 0; k < BEAMCOUNT; k++) { beamgroup.add(new BeamBullet); }
			
			// Set the default group (not sure if gun default is needed or makes sense anymore)
			currgroup = bulletgroup;
		}
		
	}

}