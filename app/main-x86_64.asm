.include "main.inc"

.global ANativeActivity_onCreate

.section    .text

ANativeActivity_onCreate:
    sub         $8, %rsp

    mov         (%rdi), %rax
    lea         onStart(%rip), %rcx
    mov         %rcx, (%rax)
    lea         onResume(%rip), %rcx
    mov         %rcx, 8 (%rax)
    lea         onSaveInstanceState(%rip), %rcx
    mov         %rcx, 16 (%rax)
    lea         onPause(%rip), %rcx
    mov         %rcx, 24 (%rax)
    lea         onStop(%rip), %rcx
    mov         %rcx, 32 (%rax)
    lea         onDestroy(%rip), %rcx
    mov         %rcx, 40 (%rax)
    lea         onWindowFocusChanged(%rip), %rcx
    mov         %rcx, 48 (%rax)
    lea         onNativeWindowCreated(%rip), %rcx
    mov         %rcx, 56 (%rax)
    lea         onNativeWindowResized(%rip), %rcx
    mov         %rcx, 64 (%rax)
    lea         onNativeWindowRedrawNeeded(%rip), %rcx
    mov         %rcx, 72 (%rax)
    lea         onNativeWindowDestroyed(%rip), %rcx
    mov         %rcx, 80 (%rax)
    lea         onInputQueueCreated(%rip), %rcx
    mov         %rcx, 88 (%rax)
    lea         onInputQueueDestroyed(%rip), %rcx
    mov         %rcx, 96 (%rax)
    lea         onContentRectChanged(%rip), %rcx
    mov         %rcx, 104 (%rax)
    lea         onConfigurationChanged(%rip), %rcx
    mov         %rcx, 112 (%rax)
    lea         onLowMemory(%rip), %rcx
    mov         %rcx, 120 (%rax)

    mov         $ANDROID_LOG_INFO, %edi
    lea         LOG_TAG(%rip), %rsi
    lea         Createt(%rip), %rdx
    call        __android_log_print

    add         $8, %rsp

    ret

onStart:
    sub         $8, %rsp

    mov         $ANDROID_LOG_INFO, %edi
    lea         LOG_TAG(%rip), %rsi
    lea         Startt(%rip), %rdx
    call        __android_log_print

    add         $8, %rsp

    ret

onResume:
    sub         $8, %rsp

    mov         $ANDROID_LOG_INFO, %rdi
    lea         LOG_TAG(%rip), %rsi
    lea         Resumet(%rip), %rdx
    call        __android_log_print

    add         $8, %rsp

    ret

onSaveInstanceState:
    sub         $8, %rsp

    movq        $4, (%rsi)
    mov         (%rsi), %rdi
    call        malloc
    mov         %rax, %rbx

    test        %al, %al
    jz          error

    mov         $ANDROID_LOG_INFO, %rdi
    lea         LOG_TAG(%rip), %rsi
    lea         SaveInstanceStatet(%rip), %rdx
    call        __android_log_print

    mov         %rbx, %rax

    add         $8, %rsp

    ret
error:
    mov         $1, %eax

    add         $8, %rsp

    ret

onPause:
    sub         $8, %rsp

    mov         $ANDROID_LOG_INFO, %rdi
    lea         LOG_TAG(%rip), %rsi
    lea         Pauset(%rip), %rdx
    call        __android_log_print

    add         $8, %rsp

    ret

onStop:
    sub         $8, %rsp

    mov         $ANDROID_LOG_INFO, %rdi
    lea         LOG_TAG(%rip), %rsi
    lea         Stopt(%rip), %rdx
    call        __android_log_print

    add         $8, %rsp

    ret

onDestroy:
    sub         $8, %rsp

    mov         $ANDROID_LOG_INFO, %rdi
    lea         LOG_TAG(%rip), %rsi
    lea         Destroyt(%rip), %rdx
    call        __android_log_print

    add         $8, %rsp

    ret

onWindowFocusChanged:
    sub         $8, %rsp

    mov         $ANDROID_LOG_INFO, %rdi
    lea         LOG_TAG(%rip), %rsi
    lea         WindowFocusChangedt(%rip), %rdx
    call        __android_log_print

    add         $8, %rsp

    ret

onNativeWindowCreated:
    sub         $8, %rsp

    mov         $ANDROID_LOG_INFO, %rdi
    lea         LOG_TAG(%rip), %rsi
    lea         NativeWindowCreatedt(%rip), %rdx
    call        __android_log_print

    add         $8, %rsp

    ret

onNativeWindowResized:
    sub         $8, %rsp

    mov         $ANDROID_LOG_INFO, %rdi
    lea         LOG_TAG(%rip), %rsi
    lea         NativeWindowResizedt(%rip), %rdx
    call        __android_log_print

    add         $8, %rsp

    ret

onNativeWindowRedrawNeeded:
    sub         $8, %rsp

    mov         $ANDROID_LOG_INFO, %rdi
    lea         LOG_TAG(%rip), %rsi
    lea         NativeWindowRedrawNeededt(%rip), %rdx
    call        __android_log_print

    add         $8, %rsp

    ret

onNativeWindowDestroyed:
    sub         $8, %rsp

    mov         $ANDROID_LOG_INFO, %rdi
    lea         LOG_TAG(%rip), %rsi
    lea         NativeWindowDestroyedt(%rip), %rdx
    call        __android_log_print

    add         $8, %rsp

    ret

onInputQueueCreated:
    sub         $8, %rsp

    mov         $ANDROID_LOG_INFO, %rdi
    lea         LOG_TAG(%rip), %rsi
    lea         InputQueueCreatedt(%rip), %rdx
    call        __android_log_print

    add         $8, %rsp

    ret

onInputQueueDestroyed:
    sub         $8, %rsp

    mov         $ANDROID_LOG_INFO, %rdi
    lea         LOG_TAG(%rip), %rsi
    lea         InputQueueDestroyedt(%rip), %rdx
    call        __android_log_print

    add         $8, %rsp

    ret

onContentRectChanged:
    sub         $8, %rsp

    mov         $ANDROID_LOG_INFO, %rdi
    lea         LOG_TAG(%rip), %rsi
    lea         ContentRectChangedt(%rip), %rdx
    call        __android_log_print

    add         $8, %rsp

    ret

onConfigurationChanged:
    sub         $8, %rsp

    mov         $ANDROID_LOG_INFO, %rdi
    lea         LOG_TAG(%rip), %rsi
    lea         ConfigurationChangedt(%rip), %rdx
    call        __android_log_print

    add         $8, %rsp

    ret

onLowMemory:
    sub         $8, %rsp

    mov         $ANDROID_LOG_INFO, %rdi
    lea         LOG_TAG(%rip), %rsi
    lea         LowMemoryt(%rip), %rdx
    call        __android_log_print

    add         $8, %rsp

    ret
