.class public Lcom/yalantis/ucrop/util/EglUtils;
.super Ljava/lang/Object;
.source "EglUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EglUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private static getMaxTextureEgl10()I
    .locals 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 93
    .local v0, "egl":Ljavax/microedition/khronos/egl/EGL10;
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 94
    .local v1, "dpy":Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v4, 0x2

    new-array v13, v4, [I

    .line 95
    .local v13, "vers":[I
    invoke-interface {v0, v1, v13}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 97
    const/4 v4, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    .line 103
    .local v2, "configAttr":[I
    const/4 v4, 0x1

    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 104
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v4, 0x1

    new-array v5, v4, [I

    .line 105
    .local v5, "numConfig":[I
    const/4 v4, 0x1

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 106
    const/4 v4, 0x0

    aget v4, v5, v4

    if-nez v4, :cond_0

    .line 107
    const/4 v4, 0x0

    .line 132
    :goto_0
    return v4

    .line 109
    :cond_0
    const/4 v4, 0x0

    aget-object v7, v3, v4

    .line 111
    .local v7, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v4, 0x5

    new-array v12, v4, [I

    fill-array-data v12, :array_1

    .line 116
    .local v12, "surfAttr":[I
    invoke-interface {v0, v1, v7, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v11

    .line 117
    .local v11, "surf":Ljavax/microedition/khronos/egl/EGLSurface;
    const/16 v6, 0x3098

    .line 118
    .local v6, "EGL_CONTEXT_CLIENT_VERSION":I
    const/4 v4, 0x3

    new-array v9, v4, [I

    fill-array-data v9, :array_2

    .line 122
    .local v9, "ctxAttrib":[I
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v7, v4, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v8

    .line 123
    .local v8, "ctx":Ljavax/microedition/khronos/egl/EGLContext;
    invoke-interface {v0, v1, v11, v11, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 124
    const/4 v4, 0x1

    new-array v10, v4, [I

    .line 125
    .local v10, "maxSize":[I
    const/16 v4, 0xd33

    const/4 v14, 0x0

    invoke-static {v4, v10, v14}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 126
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v14, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v15, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v4, v14, v15}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 128
    invoke-interface {v0, v1, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 129
    invoke-interface {v0, v1, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 130
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 132
    const/4 v4, 0x0

    aget v4, v10, v4

    goto :goto_0

    .line 97
    :array_0
    .array-data 4
        0x303f
        0x308e
        0x3029
        0x0
        0x3033
        0x1
        0x3038
    .end array-data

    .line 111
    :array_1
    .array-data 4
        0x3057
        0x40
        0x3056
        0x40
        0x3038
    .end array-data

    .line 118
    :array_2
    .array-data 4
        0x3098
        0x1
        0x3038
    .end array-data
.end method

.method private static getMaxTextureEgl14()I
    .locals 15
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 43
    .local v0, "dpy":Landroid/opengl/EGLDisplay;
    const/4 v4, 0x2

    new-array v14, v4, [I

    .line 44
    .local v14, "vers":[I
    invoke-static {v0, v14, v2, v14, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 46
    const/16 v4, 0x9

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 53
    .local v1, "configAttr":[I
    new-array v3, v5, [Landroid/opengl/EGLConfig;

    .line 54
    .local v3, "configs":[Landroid/opengl/EGLConfig;
    new-array v6, v5, [I

    .local v6, "numConfig":[I
    move v4, v2

    move v7, v2

    .line 55
    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 57
    aget v4, v6, v2

    if-nez v4, :cond_0

    .line 86
    :goto_0
    return v2

    .line 60
    :cond_0
    aget-object v8, v3, v2

    .line 62
    .local v8, "config":Landroid/opengl/EGLConfig;
    const/4 v4, 0x5

    new-array v13, v4, [I

    fill-array-data v13, :array_1

    .line 67
    .local v13, "surfAttr":[I
    invoke-static {v0, v8, v13, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v12

    .line 69
    .local v12, "surf":Landroid/opengl/EGLSurface;
    const/4 v4, 0x3

    new-array v10, v4, [I

    fill-array-data v10, :array_2

    .line 73
    .local v10, "ctxAttrib":[I
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v8, v4, v10, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v9

    .line 75
    .local v9, "ctx":Landroid/opengl/EGLContext;
    invoke-static {v0, v12, v12, v9}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 77
    new-array v11, v5, [I

    .line 78
    .local v11, "maxSize":[I
    const/16 v4, 0xd33

    invoke-static {v4, v11, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 80
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v7, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v4, v5, v7}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 82
    invoke-static {v0, v12}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 83
    invoke-static {v0, v9}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 84
    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 86
    aget v2, v11, v2

    goto :goto_0

    .line 46
    :array_0
    .array-data 4
        0x303f
        0x308e
        0x3029
        0x0
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    .line 62
    :array_1
    .array-data 4
        0x3057
        0x40
        0x3056
        0x40
        0x3038
    .end array-data

    .line 69
    :array_2
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public static getMaxTextureSize()I
    .locals 3

    .prologue
    .line 29
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 30
    invoke-static {}, Lcom/yalantis/ucrop/util/EglUtils;->getMaxTextureEgl14()I

    move-result v1

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/yalantis/ucrop/util/EglUtils;->getMaxTextureEgl10()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "EglUtils"

    const-string v2, "getMaxTextureSize: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    const/4 v1, 0x0

    goto :goto_0
.end method
