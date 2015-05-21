package Construct
{
	import flash.display.Stage;
	import flash.events.Event;
	import flash.geom.Point;
	
	import GameObjects.Player;
	
	import Handlers.KeyMap;
	import Handlers.PlayerOneKeyMap;
	import Handlers.PlayerTwoKeyMap;

	public class GameStage
	{
		private var gameBoard:GameBoard;
		private var keyboardHandler:PlayerOneKeyMap;
		private var dt:Number = 1;
		private var keyboard1:PlayerOneKeyMap;
		private var keyboard2:PlayerTwoKeyMap;
		private var player1:Player;
		private var player2:Player;
		
		public function GameStage(mainStage:Stage)
		{
			keyboard1 = new PlayerOneKeyMap(mainStage);
			keyboard2 = new PlayerTwoKeyMap(mainStage);
			player1 = new Player(keyboard1 as KeyMap,null,new Point(150,200));
			player2 = new Player(keyboard2 as KeyMap,null,new Point(325,200));
			gameBoard = new GameBoard(mainStage.stageWidth,mainStage.stageHeight,player1,player2);
			mainStage.addChild(gameBoard);
			mainStage.addEventListener(Event.ENTER_FRAME,update);
		}
		
		protected function update(event:Event):void
		{
			gameBoard.update(dt);
			
		}
	}
}