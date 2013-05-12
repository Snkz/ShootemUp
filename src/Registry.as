package  
{
	import org.flixel.FlxGroup;
	public class Registry
	{
		public static var stars:Starfield = new Starfield;
		public static var player:Player = new Player;
		public static var bullets:BulletManager; 
		public static var enemies:EnemyManager = new EnemyManager;
		public static var fx:Fx = new Fx;
		
		public static var currgun:Bullet;
		public static var currgroup:FlxGroup;
		
		public static var firegroup:FlxGroup = new FlxGroup();
		public static var bulletgroup:FlxGroup = new FlxGroup();
		public static var beamgroup:FlxGroup = new FlxGroup();
		
		public static var normgun:NormBullet = new NormBullet();
		public static var firegun:FireBullet = new FireBullet();
		public static var beamgun:BeamBullet = new BeamBullet();
		
		public static var FIRECOUNT:int = 20;
		public static var BULLETCOUNT:int = 40;
		public static var BEAMCOUNT:int = 80;
		
		public static var NORMBULLET:int = 1;
		public static var FIREBULLET:int = 2;
		public static var BEAMBULLET:int = 3;
		
		
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
			
			// Set the default group and gun type
			currgroup = bulletgroup;
			currgun = normgun;
			
			// Create the manager
			bullets = new BulletManager;
		}
		
	}

}