package GameObjects.Fighters
{
	import flash.display.Shape;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import GameObjects.GameObject;
	
	public class Stickman extends GameObject implements Fighter
	{
		private var body:Shape;
		private var initialY:int;
		private var attackTimer:Timer;
		private var punch:Shape;
		public function Stickman(x:int,y:int)
		{
			this.x = x;
			this.y = y;
			attackTimer = new Timer(300,1);
			attackTimer.addEventListener(TimerEvent.TIMER,endAttack);
			initialY = y;
			body = new Shape();
			body.graphics.beginFill(0x000000);
			body.graphics.drawRect(0,0,20,-50);
			body.graphics.endFill();
			addChild(body);
		}
		
	
		public override function update(dt:Number):void
		{
			if(y < initialY)
			{
				y = y+2;
			}
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
			y -= 20;
		}
		public function attack():void
		{
			if(punch == null)
			{
				attackTimer.start();
				punch = new Shape();
				punch.graphics.beginFill(0x000000);
				punch.graphics.drawRect(body.x+20,body.y-30,15,10);
				punch.graphics.endFill();
				addChild(punch);
			}
		}
		protected function endAttack(event:TimerEvent):void
		{
			attackTimer.reset();
			removeChild(punch);
			punch = null;
		}
	}
}