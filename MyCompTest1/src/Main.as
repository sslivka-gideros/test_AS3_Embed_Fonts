package 
{
	import flash.display.Sprite;
	import flash.display.StageScaleMode;
	import flash.text.*;
	
	/**
	 * ...
	 * @author sslivka
	 */
	public class Main extends Sprite 
	{
		
		[Embed(source="../bin/FontLibrary.swf", fontFamily="consola")]
		private var Consola:Class;
		
		[Embed(source="../bin/FontLibrary.swf", fontFamily="consolab", fontWeight = 'bold')]
		private var Consolab:Class;
		
		[Embed(source="../bin/FontLibrary.swf", fontFamily="consolai", fontStyle = 'italic')]
		private var Consolai:Class;
		
		[Embed(source="../bin/FontLibrary.swf", fontFamily="consolaz", fontStyle = 'italic', fontWeight = 'bold')]
		private var Consolaz:Class;
		
		public function Main():void 
		{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.stageFocusRect = false;
			
			var myFont:Font = new Consola();
			var txtField:TextField = new TextField();
			txtField.multiline = true;
			txtField.wordWrap = true;
			txtField.type = TextFieldType.INPUT;
			txtField.embedFonts = true;
			var txtFormat:TextFormat = new TextFormat();
			txtFormat.font = myFont.fontName;
			txtFormat.size = 14;
			txtField.defaultTextFormat = txtFormat;
			addChild(txtField);
			txtField.width = stage.stageWidth;
			txtField.text = "local verts = {\n\t{x = 0.26, y = 0.54},\n\t{x = 0.32, y = 0.71}\n}";
			txtField.autoSize = TextFieldAutoSize.LEFT;
		}
		
	}
	
}