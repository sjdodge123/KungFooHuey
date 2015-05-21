package Construct
{
	import flash.display.Sprite;
	
	import GameObjects.Maps.GrassMap;
	import GameObjects.Fighters.Stickman;
	import GameObjects.GameObject;
	import GameObjects.Player;

	public class GameBoard extends Sprite
	{
		private var map1:GrassMap;
		private var player1:Player;
		private var player2:Player;
		private var gameObjects:Vector.<GameObject> = new Vector.<GameObject>();
		private var fighter1:Stickman;
		private var fighter2:Stickman;

		public function GameBoard(stageWidth:int,stageHeight:int,player1:Player,player2:Player=null) 
		{
			this.player1 = player1;
			this.player2 = player2;
			map1 = new GrassMap();
	
			map1.addPlayer(player1);
			map1.addPlayer(player2);
			addChild(map1);
		}
		
		public function update(dt:int):void
		{
			for(var i:int=0;i<gameObjects.length;i++)
			{
				gameObjects[i].update(dt);
			}	
		}
	}
}