package org.wmfc.utils.crypto.secret.aes
{
	import com.hurlant.crypto.Crypto;
	import com.hurlant.crypto.prng.Random;
	import com.hurlant.crypto.symmetric.ICipher;
	import com.hurlant.crypto.symmetric.IPad;
	import com.hurlant.crypto.symmetric.IVMode;
	import com.hurlant.crypto.symmetric.NullPad;
	import com.hurlant.util.Hex;
	
	import flash.utils.ByteArray;

	public class AESHelper
	{
		private var _keySize:int = 128;
		
		public function get keySize():int
		{
			return _keySize;
		}
		
		public function set keySize(value:int):void
		{
			_keySize = value;
		}
		
		public function encrypt(value:String):Array 
		{
			var retorno:Array = new Array();
			var key:String = "";
			
			var rnd:Random = new Random();
			var buf:ByteArray = new ByteArray();
			
			rnd.nextBytes(buf, _keySize / 8);
			
			key = Hex.fromArray(buf);
			
			var bchave:ByteArray = Hex.toArray(key);
			var data:ByteArray = Hex.toArray(Hex.fromString(value));
			var alg:String = "aes" + _keySize + "-cbc";
			var pad:IPad = new NullPad();
			var mode:ICipher = Crypto.getCipher(alg, bchave, pad);
			
			pad.setBlockSize(mode.getBlockSize());
			
			mode.encrypt(data);
			
			var retEnc:String = "";
			retEnc = Hex.fromArray(data);
			
			var ivmode:IVMode = mode as IVMode;
			var retVec:String = "";
			
			retVec = Hex.fromArray(ivmode.IV);
			
			retorno.push(retEnc);
			retorno.push(key);
			retorno.push(retVec);
			
			return retorno;
		}
		
		public function decrypt(value:String, key:String, vector:String):String {
			var retorno:String = "";
			
			var kdata:ByteArray = Hex.toArray(key);
			var data:ByteArray = Hex.toArray(value);
			
			var alg:String = "aes-cbc";
			var pad:IPad = new NullPad();
			var mode:ICipher = Crypto.getCipher(alg, kdata, pad);
			
			pad.setBlockSize(mode.getBlockSize());
			
			var ivmode:IVMode = mode as IVMode;
			ivmode.IV = Hex.toArray(vector);
			
			mode.decrypt(data);
			
			retorno = Hex.toString(Hex.fromArray(data));
			
			return retorno;
		}
	}
}