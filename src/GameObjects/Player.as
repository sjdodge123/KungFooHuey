package GameObjects
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.geom.Point;
	
	import Events.MotionEvent;
	
	import GameObjects.Fighters.Fighter;
	import GameObjects.Fighters.Stickman;
	
	import Handlers.KeyMap;

	public class Player
	{
		public var fighter:Fighter;
		public var spawnLoc:Point;
		public var inputHandler:KeyMap;
		public function Player(inputHandler:KeyMap,fighter:Fighter=null,spawnLoc:Point=null)
		{
			this.inputHandler = inputHandler;
			if(spawnLoc == null){spawnLoc = new Point(325,200);}
			if(fighter == null){this.fighter = new Stickman(spawnLoc.x,spawnLoc.y);}
			else{this.fighter = fighter;}
			EventDispatcher(this.inputHandler).addEventListener(MotionEvent.UP_PRESSED,upPressed);
			EventDispatcher(this.inputHandler).addEventListener(MotionEvent.DOWN_PRESSED,downPressed);
			EventDispatcher(this.inputHandler).addEventListener(MotionEvent.LEFT_PRESSED,leftPressed);
			EventDispatcher(this.inputHandler).addEventListener(MotionEvent.RIGHT_PRESSED,rightPressed);
		}
		
		protected function upPressed(event:Event):void
		{
			fighter.moveUp();			
		}	
		protected function downPressed(event:Event):void
		{
			fighter.moveDown();			
		}
		protected function leftPressed(event:Event):void
		{
			fighter.moveLeft();			
		}
		protected function rightPressed(event:Event):void
		{
			fighter.moveRight();			
		}
	}
}