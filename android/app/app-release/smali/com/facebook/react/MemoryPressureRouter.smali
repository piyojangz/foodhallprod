.class public Lcom/facebook/react/MemoryPressureRouter;
.super Ljava/lang/Object;
.source "MemoryPressureRouter.java"


# static fields
.field private static final ACTION_TRIM_MEMORY_CRITICAL:Ljava/lang/String; = "com.facebook.rnfeed.ACTION_TRIM_MEMORY_CRITICAL"

.field private static final ACTION_TRIM_MEMORY_MODERATE:Ljava/lang/String; = "com.facebook.rnfeed.ACTION_TRIM_MEMORY_MODERATE"

.field private static final ACTION_TRIM_MEMORY_UI_HIDDEN:Ljava/lang/String; = "com.facebook.rnfeed.ACTION_TRIM_MEMORY_UI_HIDDEN"


# instance fields
.field private final mCallbacks:Landroid/content/ComponentCallbacks2;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/react/bridge/MemoryPressureListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 39
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/MemoryPressureRouter;->mListeners:Ljava/util/Set;

    .line 40
    new-instance v0, Lcom/facebook/react/MemoryPressureRouter$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/MemoryPressureRouter$1;-><init>(Lcom/facebook/react/MemoryPressureRouter;)V

    iput-object v0, p0, Lcom/facebook/react/MemoryPressureRouter;->mCallbacks:Landroid/content/ComponentCallbacks2;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/MemoryPressureRouter;->mCallbacks:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/MemoryPressureRouter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/MemoryPressureRouter;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/react/MemoryPressureRouter;->trimMemory(I)V

    return-void
.end method

.method private dispatchMemoryPressure(Lcom/facebook/react/bridge/MemoryPressure;)V
    .locals 4
    .param p1, "level"    # Lcom/facebook/react/bridge/MemoryPressure;

    .prologue
    .line 108
    iget-object v2, p0, Lcom/facebook/react/MemoryPressureRouter;->mListeners:Ljava/util/Set;

    iget-object v3, p0, Lcom/facebook/react/MemoryPressureRouter;->mListeners:Ljava/util/Set;

    .line 109
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Lcom/facebook/react/bridge/MemoryPressureListener;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/bridge/MemoryPressureListener;

    .line 110
    .local v1, "listeners":[Lcom/facebook/react/bridge/MemoryPressureListener;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 111
    .local v0, "listener":Lcom/facebook/react/bridge/MemoryPressureListener;
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/MemoryPressureListener;->handleMemoryPressure(Lcom/facebook/react/bridge/MemoryPressure;)V

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "listener":Lcom/facebook/react/bridge/MemoryPressureListener;
    :cond_0
    return-void
.end method

.method public static handleDebugIntent(Landroid/app/Application;Ljava/lang/String;)Z
    .locals 4
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "action"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 57
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 70
    :goto_1
    return v0

    .line 57
    :sswitch_0
    const-string v3, "com.facebook.rnfeed.ACTION_TRIM_MEMORY_UI_HIDDEN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string v3, "com.facebook.rnfeed.ACTION_TRIM_MEMORY_MODERATE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string v3, "com.facebook.rnfeed.ACTION_TRIM_MEMORY_CRITICAL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 59
    :pswitch_0
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lcom/facebook/react/MemoryPressureRouter;->simulateTrimMemory(Landroid/app/Application;I)V

    :goto_2
    move v0, v1

    .line 70
    goto :goto_1

    .line 62
    :pswitch_1
    const/16 v0, 0x3c

    invoke-static {p0, v0}, Lcom/facebook/react/MemoryPressureRouter;->simulateTrimMemory(Landroid/app/Application;I)V

    goto :goto_2

    .line 65
    :pswitch_2
    const/16 v1, 0x50

    invoke-static {p0, v1}, Lcom/facebook/react/MemoryPressureRouter;->simulateTrimMemory(Landroid/app/Application;I)V

    goto :goto_1

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2c3c071c -> :sswitch_0
        -0x246efd70 -> :sswitch_2
        0x425287f4 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static simulateTrimMemory(Landroid/app/Application;I)V
    .locals 0
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "level"    # I

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 117
    return-void
.end method

.method private trimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 96
    const/16 v0, 0x50

    if-lt p1, v0, :cond_1

    .line 97
    sget-object v0, Lcom/facebook/react/bridge/MemoryPressure;->CRITICAL:Lcom/facebook/react/bridge/MemoryPressure;

    invoke-direct {p0, v0}, Lcom/facebook/react/MemoryPressureRouter;->dispatchMemoryPressure(Lcom/facebook/react/bridge/MemoryPressure;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const/16 v0, 0x28

    if-ge p1, v0, :cond_2

    const/16 v0, 0xf

    if-ne p1, v0, :cond_3

    .line 99
    :cond_2
    sget-object v0, Lcom/facebook/react/bridge/MemoryPressure;->MODERATE:Lcom/facebook/react/bridge/MemoryPressure;

    invoke-direct {p0, v0}, Lcom/facebook/react/MemoryPressureRouter;->dispatchMemoryPressure(Lcom/facebook/react/bridge/MemoryPressure;)V

    goto :goto_0

    .line 100
    :cond_3
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 101
    sget-object v0, Lcom/facebook/react/bridge/MemoryPressure;->UI_HIDDEN:Lcom/facebook/react/bridge/MemoryPressure;

    invoke-direct {p0, v0}, Lcom/facebook/react/MemoryPressureRouter;->dispatchMemoryPressure(Lcom/facebook/react/bridge/MemoryPressure;)V

    goto :goto_0
.end method


# virtual methods
.method public addMemoryPressureListener(Lcom/facebook/react/bridge/MemoryPressureListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/bridge/MemoryPressureListener;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/react/MemoryPressureRouter;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public destroy(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/MemoryPressureRouter;->mCallbacks:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 93
    return-void
.end method

.method public removeMemoryPressureListener(Lcom/facebook/react/bridge/MemoryPressureListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/bridge/MemoryPressureListener;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/react/MemoryPressureRouter;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method
