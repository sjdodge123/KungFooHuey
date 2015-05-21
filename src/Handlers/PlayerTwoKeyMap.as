package Handlers
{
	import flash.display.Stage;
	import flash.events.EventDispatcher;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	
	import Events.MotionEvent;

	public class PlayerTwoKeyMap extends EventDispatcher implements KeyMap
	{
		public function PlayerTwoKeyMap(gameStage:Stage)
		{
			gameStage.addEventListener(KeyboardEvent.KEY_DOWN, keyInput);
		}
		
		public function keyInput(event:KeyboardEvent):void
		{
			switch(event.keyCode)
			{
				case Keyboard.I:
				{
					dispatchEvent(new MotionEvent(MotionEvent.UP_PRESSED,null));
					break;
				}
				case Keyboard.J:
				{
					dispatchEvent(new MotionEvent(MotionEvent.LEFT_PRESSED,null));
					break;
				}
				case Keyboard.K:
				{
					dispatchEvent(new MotionEvent(MotionEvent.DOWN_PRESSED,null));
					break;
				}
				case Keyboard.L:
				{
					dispatchEvent(new MotionEvent(MotionEvent.RIGHT_PRESSED,null));
					break;
				}
				case Keyboard.U:
				{
					dispatchEvent(new MotionEvent(MotionEvent.ATTACK_PRESSED,null));
					break;
				}
			}
			
		}
	}
}