package starling.display
{
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	
	import starling.display.Image;
	import starling.display.QuadBatch;
	import starling.display.Sprite;
	import starling.textures.Texture;

	public class Scale9Image extends Sprite
	{
		private var texture:Texture;
		private var rect:Rectangle;
		
		private var imgVec:Vector.<Image>;
		private var quadBatch:QuadBatch;
		
		private var matrix:Matrix;
		private var i:int;
		
		private var lastWidth:Number;
		private var lastHeight:Number;
		
		public function Scale9Image(_texture:Texture,_rect:Rectangle)
		{
			super();
			
			texture = _texture;
			rect = _rect;
			
			matrix = new Matrix;
			
			quadBatch = new QuadBatch;
			
			addChild(quadBatch);
			
			imgVec = new Vector.<Image>(9,true);
			
			initImgVec();
		}
		
		private function initImgVec():void{
			
			var img:Image = new Image(texture);
			
			img.width = rect.left;
			img.height = rect.top;
			
			img.x = -rect.left - rect.width * 0.5;
			img.y = -rect.top - rect.height * 0.5;
			
			img.setTexCoordsTo(0,0,0);
			img.setTexCoordsTo(1,rect.left / texture.width,0);
			img.setTexCoordsTo(2,0,rect.top / texture.height);
			img.setTexCoordsTo(3,rect.left / texture.width,rect.top / texture.height);
			
			imgVec[0] = img;
			quadBatch.addImage(img);
			
			img = new Image(texture);
			
			img.width = rect.width;
			img.height = rect.top;
			
			img.x = -rect.width * 0.5;
			img.y = -rect.top - rect.height * 0.5;
			
			img.setTexCoordsTo(0,rect.left / texture.width,0);
			img.setTexCoordsTo(1,rect.right / texture.width,0);
			img.setTexCoordsTo(2,rect.left / texture.width,rect.top / texture.height);
			img.setTexCoordsTo(3,rect.right / texture.width,rect.top / texture.height);
			
			imgVec[1] = img;
			quadBatch.addImage(img);
			
			img = new Image(texture);
			
			img.width = texture.width - rect.right;
			img.height = rect.top;
			
			img.x = rect.width * 0.5;
			img.y = -rect.top - rect.height * 0.5;
			
			img.setTexCoordsTo(0,rect.right / texture.width,0);
			img.setTexCoordsTo(1,1,0);
			img.setTexCoordsTo(2,rect.right / texture.width,rect.top / texture.height);
			img.setTexCoordsTo(3,1,rect.top / texture.height);
			
			imgVec[2] = img;
			quadBatch.addImage(img);
			
			img = new Image(texture);
			
			img.width = rect.left;
			img.height = rect.height;
			
			img.x = -rect.left - rect.width * 0.5;
			img.y = -rect.height * 0.5;
			
			img.setTexCoordsTo(0,0,rect.top / texture.height);
			img.setTexCoordsTo(1,rect.left / texture.width,rect.top / texture.height);
			img.setTexCoordsTo(2,0,rect.bottom / texture.height);
			img.setTexCoordsTo(3,rect.left / texture.width,rect.bottom / texture.height);
			
			imgVec[3] = img;
			quadBatch.addImage(img);
			
			img = new Image(texture);
			
			img.width = rect.width;
			img.height = rect.height;
			
			img.x = -rect.width * 0.5;
			img.y = -rect.height * 0.5;
			
			img.setTexCoordsTo(0,rect.left / texture.width,rect.top / texture.height);
			img.setTexCoordsTo(1,rect.right / texture.width,rect.top / texture.height);
			img.setTexCoordsTo(2,rect.left / texture.width,rect.bottom / texture.height);
			img.setTexCoordsTo(3,rect.right / texture.width,rect.bottom / texture.height);
			
			imgVec[4] = img;
			quadBatch.addImage(img);
			
			img = new Image(texture);
			
			img.width = texture.width - rect.right;
			img.height = rect.height;
			
			img.x = rect.width * 0.5;
			img.y = -rect.height * 0.5;
			
			img.setTexCoordsTo(0,rect.right / texture.width,rect.top / texture.height);
			img.setTexCoordsTo(1,1,rect.top / texture.height);
			img.setTexCoordsTo(2,rect.right / texture.width,rect.bottom / texture.height);
			img.setTexCoordsTo(3,1,rect.bottom / texture.height);
			
			imgVec[5] = img;
			quadBatch.addImage(img);
			
			img = new Image(texture);
			
			img.width = rect.left;
			img.height = texture.height - rect.bottom;
			
			img.x = -rect.left - rect.width * 0.5;
			img.y = rect.height * 0.5;
			
			img.setTexCoordsTo(0,0,rect.bottom / texture.height);
			img.setTexCoordsTo(1,rect.left / texture.width,rect.bottom / texture.height);
			img.setTexCoordsTo(2,0,1);
			img.setTexCoordsTo(3,rect.left / texture.width,1);
			
			imgVec[6] = img;
			quadBatch.addImage(img);
			
			img = new Image(texture);
			
			img.width = rect.width;
			img.height = texture.height - rect.bottom;
			
			img.x = -rect.width * 0.5;
			img.y = rect.height * 0.5;
			
			img.setTexCoordsTo(0,rect.left / texture.width,rect.bottom / texture.height);
			img.setTexCoordsTo(1,rect.right / texture.width,rect.bottom / texture.height);
			img.setTexCoordsTo(2,rect.left / texture.width,1);
			img.setTexCoordsTo(3,rect.right / texture.width,1);
			
			imgVec[7] = img;
			quadBatch.addImage(img);
			
			img = new Image(texture);
			
			img.width = texture.width - rect.right;
			img.height = texture.height - rect.bottom;
			
			img.x = rect.width * 0.5;
			img.y = rect.height * 0.5;
			
			img.setTexCoordsTo(0,rect.right / texture.width,rect.bottom / texture.height);
			img.setTexCoordsTo(1,1,rect.bottom / texture.height);
			img.setTexCoordsTo(2,rect.right / texture.width,1);
			img.setTexCoordsTo(3,1,1);
			
			imgVec[8] = img;
			quadBatch.addImage(img);
			
			lastWidth = rect.width;
			lastHeight = rect.height;
			
			quadBatch.x = rect.left + lastWidth * 0.5;
			quadBatch.y = rect.top + lastHeight * 0.5;
			
			
		}
		
		override public function set width(value:Number):void{
			
			matrix.identity();
			
			matrix.translate((lastWidth - (value - (texture.width - rect.width))) * 0.5,0);
			
			quadBatch.transformQuad(0,matrix);
			quadBatch.transformQuad(3,matrix);
			quadBatch.transformQuad(6,matrix);
			
			matrix.identity();
			
			matrix.scale((value - (texture.width - rect.width)) / lastWidth,1);
			
			quadBatch.transformQuad(1,matrix);
			quadBatch.transformQuad(4,matrix);
			quadBatch.transformQuad(7,matrix);
			
			matrix.identity();
			
			matrix.translate(((value - (texture.width - rect.width)) - lastWidth) * 0.5,0);
			
			quadBatch.transformQuad(2,matrix);
			quadBatch.transformQuad(5,matrix);
			quadBatch.transformQuad(8,matrix);
			
			
			lastWidth = value - (texture.width - rect.width);
			quadBatch.x = rect.left + lastWidth * 0.5;
			
			super.width = value;
		}
		
		override public function set height(value:Number):void{
			
			matrix.identity();
			
			matrix.translate(0,(lastHeight - (value - (texture.height - rect.height))) * 0.5);
			
			quadBatch.transformQuad(0,matrix);
			quadBatch.transformQuad(1,matrix);
			quadBatch.transformQuad(2,matrix);
			
			matrix.identity();
			
			matrix.scale(1,(value - (texture.height - rect.height)) / lastHeight);
			
			quadBatch.transformQuad(3,matrix);
			quadBatch.transformQuad(4,matrix);
			quadBatch.transformQuad(5,matrix);
			
			matrix.identity();
			
			matrix.translate(0,((value - (texture.height - rect.height)) - lastHeight) * 0.5);
			
			quadBatch.transformQuad(6,matrix);
			quadBatch.transformQuad(7,matrix);
			quadBatch.transformQuad(8,matrix);
			
			
			lastHeight = value - (texture.height - rect.height);
			quadBatch.y = rect.top + lastHeight * 0.5;
			
			super.height = value;
		}
	}
}