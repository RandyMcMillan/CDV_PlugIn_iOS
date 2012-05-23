#include "Console.h"
#include <iostream>

#ifdef ANDROID
#include <android/log.h>
#define DEBUG_TAG "CONSOLE"
#endif

namespace System {

void Console::Write(char* txt) {
#ifdef ANDROID
	__android_log_print(ANDROID_LOG_DEBUG, DEBUG_TAG, txt);
#endif
	std::cout << txt;
}

void Console::Write(int i) {
#ifdef ANDROID
	__android_log_print(ANDROID_LOG_DEBUG, DEBUG_TAG,"%d", i);
#endif
	std::cout << i;
}

void Console::Write(gc_ptr<String> s) {
#ifdef ANDROID
	__android_log_print(ANDROID_LOG_DEBUG, DEBUG_TAG,s->Data);
#endif
	std::cout << s->Data;
}

void Console::WriteLine(char* txt) {
#ifdef ANDROID
	__android_log_print(ANDROID_LOG_DEBUG, DEBUG_TAG,txt);
#endif
	std::cout << txt << std::endl;
}

void Console::WriteLine(int i) {
#ifdef ANDROID
	__android_log_print(ANDROID_LOG_DEBUG, DEBUG_TAG,"%d", i);
#endif
	std::cout << i << std::endl;
}

void Console::WriteLine(gc_ptr<String> s) {
#ifdef ANDROID
	__android_log_print(ANDROID_LOG_DEBUG, DEBUG_TAG,s->Data);
#endif
	std::cout << s->Data << std::endl;
}

char* Console::ReadLine() {
	gc_ptr<String> s (new(gc) String());
	s->Length=256;
	s->Data = new char[s->Length];
	std::cin.getline (s->Data,256);
	return s->Data;
}

}
