import SomeClass;

class Main {
	static var target =
		#if js
		"Javascript";
		#elseif java
			#if jvm
			"JVM Bytecode";
			#else
			"Java";
			#end
		#elseif cpp
		"C++";
		#elseif cs
		"C#.NET";		
		#elseif python
		"Python";
		#elseif php
		"PHP";
		#elseif neko
		"Neko";
		#elseif lua
		"Lua";	
		#elseif swf
		"Flash";					
		#else
		"?????";
		#end

	public static function sayhello() : Void {
		trace("\n\n############################\nHello, world from "+target+"!\n############################\n\n");
	}

	static function main() {
		Main.sayhello();
		final c = new SomeClass(777);
	}
}
