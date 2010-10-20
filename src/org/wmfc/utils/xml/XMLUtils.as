package org.wmfc.utils.xml
{
	import flash.xml.XMLNode;

	public class XMLUtils
	{
		public static function getChild(xml:XMLNode, localName:String):XMLNode {
			for each(var no:XMLNode in xml.childNodes) {
				if(no.nodeName == localName) {
					return no;
				}
			}
			
			return null;
		}
		
		public static function getChildAttribute(xml:XMLNode, attribute:String):String {
			return xml.attributes[attribute] == null ? "" : xml.attributes[attribute].toString();
		}
		
		public static function getAttributesHash(node:XML):Object {
			
			if(node == null) {
				return null;
			}
			
			var hash:Object = new Object();
			
			for each(var item:XML in node.attributes()) {
				var name:String = item.localName().toString();
				
				hash[name] = node.attribute(name)[0].toString();
			}
			
			return hash;
		} 
	}
}