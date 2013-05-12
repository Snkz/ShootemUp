package  
{
	import org.flixel.*;

	public class Enemy extends FlxSprite
	{
		[Embed(source = '../assets/space-baddie.png')] private var enemyPNG:Class;
		
		public function Enemy() 
		{
			super(0, 0, enemyPNG);
			
			exists = false;
		}
		
		public function launch():void
		{
			x = 64 + int(Math.random() * (FlxG.width - 128));
			y = -16;
			velocity.x = -50 + int(Math.random() * 100);
			velocity.y = 100;
			
			health = 4;
			exists = true;
		}
		
		override public function kill():void
		{
			super.kill();
			
			FlxG.score += 20;
		}
		
		override public function update():void
		{
			super.update();
			
			if (y > FlxG.height)
			{
				exists = false;
			}
		}
		
	}

}