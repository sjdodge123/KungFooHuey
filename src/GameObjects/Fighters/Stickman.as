package GameObjects.Fighters
{
	import flash.display.Shape;
	
	import GameObjects.GameObject;
	
	public class Stickman extends GameObject implements Fighter
	{
		public function Stickman(x:int,y:int)
		{
			this.x = x;
			this.y = y;
			var body:Shape = new Shape();
			body.graphics.beginFill(0x000000);
			body.graphics.drawRect(0,0,20,-50);
			body.graphics.endFill();
			addChild(body);
		}
		public override function update(dt:Number):void
		{
			
		}
		public function moveDown():void
		{
						
		}
		public function moveLeft():void
		{
			x -= 10;
		}
		public function moveRight():void
		{
			x += 10;			
		}
		public function moveUp():void
		{
			
		}
	}
}