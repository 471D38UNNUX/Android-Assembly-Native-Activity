.include "main.inc"

.section .text
    .global ANativeActivity_onCreate

ANativeActivity_onCreate:
    stp         x29, x30, [sp, -16]!
    mov         x29, sp

    ldr         x0, [x0]
    adrp        x3, onStart
    add         x3, x3, :lo12:onStart
    str         x3, [x0]
    adrp        x3, onResume
    add         x3, x3, :lo12:onResume
    str         x3, [x0, 8]
    adrp        x3, onSaveInstanceState
    add         x3, x3, :lo12:onSaveInstanceState
    str         x3, [x0, 16]
    adrp        x3, onPause
    add         x3, x3, :lo12:onPause
    str         x3, [x0, 24]
    adrp        x3, onStop
    add         x3, x3, :lo12:onStop
    str         x3, [x0, 32]
    adrp        x3, onDestroy
    add         x3, x3, :lo12:onDestroy
    str         x3, [x0, 40]
    adrp        x3, onWindowFocusChanged
    add         x3, x3, :lo12:onWindowFocusChanged
    str         x3, [x0, 48]
    adrp        x3, onNativeWindowCreated
    add         x3, x3, :lo12:onNativeWindowCreated
    str         x3, [x0, 56]
    adrp        x3, onNativeWindowResized
    add         x3, x3, :lo12:onNativeWindowResized
    str         x3, [x0, 64]
    adrp        x3, onNativeWindowRedrawNeeded
    add         x3, x3, :lo12:onNativeWindowRedrawNeeded
    str         x3, [x0, 72]
    adrp        x3, onNativeWindowDestroyed
    add         x3, x3, :lo12:onNativeWindowDestroyed
    str         x3, [x0, 80]
    adrp        x3, onInputQueueCreated
    add         x3, x3, :lo12:onInputQueueCreated
    str         x3, [x0, 88]
    adrp        x3, onInputQueueDestroyed
    add         x3, x3, :lo12:onInputQueueDestroyed
    str         x3, [x0, 96]
    adrp        x3, onContentRectChanged
    add         x3, x3, :lo12:onContentRectChanged
    str         x3, [x0, 104]
    adrp        x3, onConfigurationChanged
    add         x3, x3, :lo12:onConfigurationChanged
    str         x3, [x0, 112]
    adrp        x3, onLowMemory
    add         x3, x3, :lo12:onLowMemory
    str         x3, [x0, 120]

    ldr         w0, =ANDROID_LOG_INFO
    adrp        x1, LOG_TAG
    add         x1, x1, :lo12:LOG_TAG
    adrp        x2, Createt
    add         x2, x2, :lo12:Createt
    bl          __android_log_print

    ldp         x29, x30, [sp], 16

    ret

onStart:
    stp         x29, x30, [sp, -16]!
    mov         x29, sp

    ldr         w0, =ANDROID_LOG_INFO
    adrp        x1, LOG_TAG
    add         x1, x1, :lo12:LOG_TAG
    adrp        x2, Startt
    add         x2, x2, :lo12:Startt
    bl          __android_log_print

    ldp         x29, x30, [sp], 16

    ret

onResume:
    stp         x29, x30, [sp, -16]!
    mov         x29, sp

    ldr         w0, =ANDROID_LOG_INFO
    adrp        x1, LOG_TAG
    add         x1, x1, :lo12:LOG_TAG
    adrp        x2, Resumet
    add         x2, x2, :lo12:Resumet
    bl          __android_log_print

    ldp         x29, x30, [sp], 16

    ret

onSaveInstanceState:
    stp         x29, x30, [sp, -16]!
    mov         x29, sp

    mov         w0, 4
    str         w0, [x1]
    bl          malloc
    mov         x19, x0

    cbz         w0, error

    ldr         w0, =ANDROID_LOG_INFO
    adrp        x1, LOG_TAG
    add         x1, x1, :lo12:LOG_TAG
    adrp        x2, SaveInstanceStatet
    add         x2, x2, :lo12:SaveInstanceStatet
    bl          __android_log_print

    mov         x0, x19

    ldp         x29, x30, [sp], 16

    ret
error:
    mov         x0, 1

    ldp         x29, x30, [sp], 16

    ret

onPause:
    stp         x29, x30, [sp, -16]!
    mov         x29, sp

    ldr         w0, =ANDROID_LOG_INFO
    adrp        x1, LOG_TAG
    add         x1, x1, :lo12:LOG_TAG
    adrp        x2, Pauset
    add         x2, x2, :lo12:Pauset
    bl          __android_log_print

    ldp         x29, x30, [sp], 16

    ret

onStop:
    stp         x29, x30, [sp, -16]!
    mov         x29, sp

    ldr         w0, =ANDROID_LOG_INFO
    adrp        x1, LOG_TAG
    add         x1, x1, :lo12:LOG_TAG
    adrp        x2, Stopt
    add         x2, x2, :lo12:Stopt
    bl          __android_log_print

    ldp         x29, x30, [sp], 16

    ret

onDestroy:
    stp         x29, x30, [sp, -16]!
    mov         x29, sp

    ldr         w0, =ANDROID_LOG_INFO
    adrp        x1, LOG_TAG
    add         x1, x1, :lo12:LOG_TAG
    adrp        x2, Destroyt
    add         x2, x2, :lo12:Destroyt
    bl          __android_log_print

    ldp         x29, x30, [sp], 16

    ret

onWindowFocusChanged:
    stp         x29, x30, [sp, -16]!
    mov         x29, sp

    ldr         w0, =ANDROID_LOG_INFO
    adrp        x1, LOG_TAG
    add         x1, x1, :lo12:LOG_TAG
    adrp        x2, WindowFocusChangedt
    add         x2, x2, :lo12:WindowFocusChangedt
    bl          __android_log_print

    ldp         x29, x30, [sp], 16

    ret

onNativeWindowCreated:
    stp         x29, x30, [sp, -16]!
    mov         x29, sp

    ldr         w0, =ANDROID_LOG_INFO
    adrp        x1, LOG_TAG
    add         x1, x1, :lo12:LOG_TAG
    adrp        x2, NativeWindowCreatedt
    add         x2, x2, :lo12:NativeWindowCreatedt
    bl          __android_log_print

    ldp         x29, x30, [sp], 16

    ret

onNativeWindowResized:
    stp         x29, x30, [sp, -16]!
    mov         x29, sp

    ldr         w0, =ANDROID_LOG_INFO
    adrp        x1, LOG_TAG
    add         x1, x1, :lo12:LOG_TAG
    adrp        x2, NativeWindowResizedt
    add         x2, x2, :lo12:NativeWindowResizedt
    bl          __android_log_print

    ldp         x29, x30, [sp], 16

    ret

onNativeWindowRedrawNeeded:
    stp         x29, x30, [sp, -16]!
    mov         x29, sp

    ldr         w0, =ANDROID_LOG_INFO
    adrp        x1, LOG_TAG
    add         x1, x1, :lo12:LOG_TAG
    adrp        x2, NativeWindowRedrawNeededt
    add         x2, x2, :lo12:NativeWindowRedrawNeededt
    bl          __android_log_print

    ldp         x29, x30, [sp], 16

    ret

onNativeWindowDestroyed:
    stp         x29, x30, [sp, -16]!
    mov         x29, sp

    ldr         w0, =ANDROID_LOG_INFO
    adrp        x1, LOG_TAG
    add         x1, x1, :lo12:LOG_TAG
    adrp        x2, NativeWindowDestroyedt
    add         x2, x2, :lo12:NativeWindowDestroyedt
    bl          __android_log_print

    ldp         x29, x30, [sp], 16

    ret

onInputQueueCreated:
    stp         x29, x30, [sp, -16]!
    mov         x29, sp

    ldr         w0, =ANDROID_LOG_INFO
    adrp        x1, LOG_TAG
    add         x1, x1, :lo12:LOG_TAG
    adrp        x2, InputQueueCreatedt
    add         x2, x2, :lo12:InputQueueCreatedt
    bl          __android_log_print

    ldp         x29, x30, [sp], 16

    ret

onInputQueueDestroyed:
    stp         x29, x30, [sp, -16]!
    mov         x29, sp

    ldr         w0, =ANDROID_LOG_INFO
    adrp        x1, LOG_TAG
    add         x1, x1, :lo12:LOG_TAG
    adrp        x2, InputQueueDestroyedt
    add         x2, x2, :lo12:InputQueueDestroyedt
    bl          __android_log_print

    ldp         x29, x30, [sp], 16

    ret

onContentRectChanged:
    stp         x29, x30, [sp, -16]!
    mov         x29, sp

    ldr         w0, =ANDROID_LOG_INFO
    adrp        x1, LOG_TAG
    add         x1, x1, :lo12:LOG_TAG
    adrp        x2, ContentRectChangedt
    add         x2, x2, :lo12:ContentRectChangedt
    bl          __android_log_print

    ldp         x29, x30, [sp], 16

    ret

onConfigurationChanged:
    stp         x29, x30, [sp, -16]!
    mov         x29, sp

    ldr         w0, =ANDROID_LOG_INFO
    adrp        x1, LOG_TAG
    add         x1, x1, :lo12:LOG_TAG
    adrp        x2, ConfigurationChangedt
    add         x2, x2, :lo12:ConfigurationChangedt
    bl          __android_log_print

    ldp         x29, x30, [sp], 16

    ret

onLowMemory:
    stp         x29, x30, [sp, -16]!
    mov         x29, sp

    ldr         w0, =ANDROID_LOG_INFO
    adrp        x1, LOG_TAG
    add         x1, x1, :lo12:LOG_TAG
    adrp        x2, LowMemoryt
    add         x2, x2, :lo12:LowMemoryt
    bl          __android_log_print

    ldp         x29, x30, [sp], 16

    ret