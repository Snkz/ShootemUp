package  
{
	
	/**
	 * ...
	 * @author Snkz
	 */
	public interface Bullet 
	{
		function fire(bx:int, by:int):void;
		function getBulletDelay():int;
		function kill():void;
		function doesVanish():Boolean;
	}
	
}