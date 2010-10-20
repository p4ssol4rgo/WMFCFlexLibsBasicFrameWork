package org.wmfc.utils.modules
{
	import flash.system.ApplicationDomain;
	
	import mx.modules.ModuleLoader;
	
	public class ModuleLoader extends mx.modules.ModuleLoader
	{
		public function ModuleLoader()
		{
			super();
			this.applicationDomain = ApplicationDomain.currentDomain;
		}
	}
}