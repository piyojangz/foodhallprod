.class public Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridgePackage;
.super Ljava/lang/Object;
.source "GoogleAnalyticsBridgePackage.java"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# instance fields
.field private _trackingId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridgePackage;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackingId"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridgePackage;->_trackingId:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public createJSModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/react/bridge/JavaScriptModule;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 3
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, "modules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/NativeModule;>;"
    new-instance v1, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;

    iget-object v2, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridgePackage;->_trackingId:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;

    invoke-direct {v1, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleTagManagerBridge;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-object v0
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/react/uimanager/ViewManager;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
