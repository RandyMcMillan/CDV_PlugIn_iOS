#pragma once

#include "Object.h"
#include "StringLib.h"

namespace System {
class Console : public Object
{
public:

	static void Write(char* txt);
	static void Write(int i);
	static void Write(gc_ptr<String> s);

	static void WriteLine(char* txt);
	static void WriteLine(int i);
	static void WriteLine(gc_ptr<String> s);

	static char* ReadLine();
};
}
