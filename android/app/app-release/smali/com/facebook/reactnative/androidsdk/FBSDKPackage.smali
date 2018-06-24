.class public Lcom/facebook/reactnative/androidsdk/FBSDKPackage;
.super Ljava/lang/Object;
.source "FBSDKPackage.java"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# static fields
.field public static final VERSION_TO_RELEASE:Ljava/lang/String; = "ReactNative-v0.6.1"


# instance fields
.field private mCallbackManager:Lcom/facebook/CallbackManager;


# direct methods
.method public constructor <init>(Lcom/facebook/CallbackManager;)V
    .locals 0
    .param p1, "callbackManager"    # Lcom/facebook/CallbackManager;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/facebook/reactnative/androidsdk/FBSDKPackage;->mCallbackManager:Lcom/facebook/CallbackManager;

    .line 42
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
    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 4
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
    .line 47
    const-string v0, "ReactNative-v0.6.1"

    invoke-static {v0}, Lcom/facebook/internal/InternalSettings;->setCustomUserAgent(Ljava/lang/String;)V

    .line 48
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/facebook/react/bridge/NativeModule;

    const/4 v1, 0x0

    new-instance v2, Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule;

    invoke-direct {v2, p1}, Lcom/facebook/reactnative/androidsdk/FBAccessTokenModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/facebook/reactnative/androidsdk/FBAppEventsLoggerModule;

    invoke-direct {v2, p1}, Lcom/facebook/reactnative/androidsdk/FBAppEventsLoggerModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/facebook/reactnative/androidsdk/FBAppInviteDialogModule;

    iget-object v3, p0, Lcom/facebook/reactnative/androidsdk/FBSDKPackage;->mCallbackManager:Lcom/facebook/CallbackManager;

    invoke-direct {v2, p1, v3}, Lcom/facebook/reactnative/androidsdk/FBAppInviteDialogModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/CallbackManager;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/facebook/reactnative/androidsdk/FBGameRequestDialogModule;

    iget-object v3, p0, Lcom/facebook/reactnative/androidsdk/FBSDKPackage;->mCallbackManager:Lcom/facebook/CallbackManager;

    invoke-direct {v2, p1, v3}, Lcom/facebook/reactnative/androidsdk/FBGameRequestDialogModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/CallbackManager;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;

    invoke-direct {v2, p1}, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;

    iget-object v3, p0, Lcom/facebook/reactnative/androidsdk/FBSDKPackage;->mCallbackManager:Lcom/facebook/CallbackManager;

    invoke-direct {v2, p1, v3}, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/CallbackManager;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule;

    iget-object v3, p0, Lcom/facebook/reactnative/androidsdk/FBSDKPackage;->mCallbackManager:Lcom/facebook/CallbackManager;

    invoke-direct {v2, p1, v3}, Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/CallbackManager;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/facebook/reactnative/androidsdk/FBShareAPIModule;

    invoke-direct {v2, p1}, Lcom/facebook/reactnative/androidsdk/FBShareAPIModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;

    iget-object v3, p0, Lcom/facebook/reactnative/androidsdk/FBSDKPackage;->mCallbackManager:Lcom/facebook/CallbackManager;

    invoke-direct {v2, p1, v3}, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/CallbackManager;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 4
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
    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/react/uimanager/ViewManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/facebook/reactnative/androidsdk/FBLikeViewManager;

    invoke-direct {v2}, Lcom/facebook/reactnative/androidsdk/FBLikeViewManager;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/facebook/reactnative/androidsdk/FBLoginButtonManager;

    iget-object v3, p0, Lcom/facebook/reactnative/androidsdk/FBSDKPackage;->mCallbackManager:Lcom/facebook/CallbackManager;

    invoke-direct {v2, p1, v3}, Lcom/facebook/reactnative/androidsdk/FBLoginButtonManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/CallbackManager;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/facebook/reactnative/androidsdk/FBSendButtonManager;

    invoke-direct {v2}, Lcom/facebook/reactnative/androidsdk/FBSendButtonManager;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/facebook/reactnative/androidsdk/FBShareButtonManager;

    invoke-direct {v2}, Lcom/facebook/reactnative/androidsdk/FBShareButtonManager;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
