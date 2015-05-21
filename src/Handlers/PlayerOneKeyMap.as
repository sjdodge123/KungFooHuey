package Handlers
{
	import flash.display.Stage;
	import flash.events.EventDispatcher;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	
	import Events.MotionEvent;

	public class PlayerOneKeyMap extends EventDispatcher implements KeyMap
	{
		public function PlayerOneKeyMap(gameStage:Stage)
		{
			gameStage.addEventListener(KeyboardEvent.KEY_DOWN, keyInput);
		}
		
		public function keyInput(event:KeyboardEvent):void
		{
			switch(event.keyCode)
			{
				case Keyboard.W:
				{
					dispatchEvent(new MotionEvent(MotionEvent.UP_PRESSED,null));
					break;
				}
				case Keyboard.A:
				{
					dispatchEvent(new MotionEvent(MotionEvent.LEFT_PRESSED,null));
					break;
				}
				case Keyboard.S:
				{
					dispatchEvent(new MotionEvent(MotionEvent.DOWN_PRESSED,null));
					break;
				}
				case Keyboard.D:
				{
					dispatchEvent(new MotionEvent(MotionEvent.RIGHT_PRESSED,null));
					break;
				}
				case Keyboard.E:
				{
					dispatchEvent(new MotionEvent(MotionEvent.ATTACK_PRESSED,null));
					break;
				}
			}
			
		}
	}
}