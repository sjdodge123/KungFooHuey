package
{
	import flash.display.Sprite;
	import Construct.GameStage;
	
	public class KungFooHuey extends Sprite
	{
		private var gameStage:GameStage;
		public function KungFooHuey()
		{
			gameStage = new GameStage(stage);
		}
	}
}