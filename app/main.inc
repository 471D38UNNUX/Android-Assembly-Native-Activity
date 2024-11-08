.extern __android_log_print, malloc

.section .note.GNU-stack,"",@progbits

.section .data
LOG_TAG:
	.asciz "AssemblyNativeActivity"
.equ ANDROID_LOG_INFO, 4
Createt:
    .asciz "onCreate Called"
Startt:
    .asciz "onStart Called"
Resumet:
    .asciz "onResume Called"
SaveInstanceStatet:
    .asciz "onSaveInstanceState Called"
Pauset:
    .asciz "onPause Called"
Stopt:
    .asciz "onStop Called"
Destroyt:
    .asciz "onDestroy Called"
WindowFocusChangedt:
    .asciz "onWindowFocusChanged Called"
NativeWindowCreatedt:
    .asciz "onNativeWindowCreated Called"
NativeWindowResizedt:
    .asciz "onNativeWindowResized Called"
NativeWindowRedrawNeededt:
    .asciz "onNativeWindowRedrawNeeded Called"
NativeWindowDestroyedt:
    .asciz "onNativeWindowDestroyed Called"
InputQueueCreatedt:
    .asciz "onInputQueueCreated Called"
InputQueueDestroyedt:
    .asciz "onInputQueueDestroyed Called"
ContentRectChangedt:
    .asciz "onContentRectChanged Called"
ConfigurationChangedt:
    .asciz "onConfigurationChanged Called"
LowMemoryt:
    .asciz "onLowMemory Called"