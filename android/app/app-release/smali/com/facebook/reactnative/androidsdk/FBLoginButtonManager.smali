.class public Lcom/facebook/reactnative/androidsdk/FBLoginButtonManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "FBLoginButtonManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager",
        "<",
        "Lcom/facebook/reactnative/androidsdk/RCTLoginButton;",
        ">;"
    }
.end annotation


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "RCTFBLoginButton"


# instance fields
.field private mCallbackManager:Lcom/facebook/CallbackManager;

.field private mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/CallbackManager;)V
    .locals 0
    .param p1, "reactApplicationContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "callbackManager"    # Lcom/facebook/CallbackManager;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/facebook/reactnative/androidsdk/FBLoginButtonManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 46
    iput-object p2, p0, Lcom/facebook/reactnative/androidsdk/FBLoginButtonManager;->mCallbackManager:Lcom/facebook/CallbackManager;

    .line 47
    return-void
.end method

.method private static reactArrayToJavaStringCollection(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;
    .locals 3
    .param p0, "array"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 88
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-object v1
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/facebook/reactnative/androidsdk/FBLoginButtonManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    move-result-object v0

    return-object v0
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/reactnative/androidsdk/RCTLoginButton;
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .prologue
    .line 56
    new-instance v0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/FBLoginButtonManager;->mCallbackManager:Lcom/facebook/CallbackManager;

    invoke-direct {v0, p1, v1}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/CallbackManager;)V

    .line 57
    .local v0, "button":Lcom/facebook/reactnative/androidsdk/RCTLoginButton;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "RCTFBLoginButton"

    return-object v0
.end method

.method public setDefaultAudience(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;Ljava/lang/String;)V
    .locals 1
    .param p1, "loginButton"    # Lcom/facebook/reactnative/androidsdk/RCTLoginButton;
    .param p2, "defaultAudience"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "defaultAudience"
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/login/DefaultAudience;->valueOf(Ljava/lang/String;)Lcom/facebook/login/DefaultAudience;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->setDefaultAudience(Lcom/facebook/login/DefaultAudience;)V

    .line 69
    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;Ljava/lang/String;)V
    .locals 1
    .param p1, "loginButton"    # Lcom/facebook/reactnative/androidsdk/RCTLoginButton;
    .param p2, "loginBehavior"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "loginBehaviorAndroid"
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/login/LoginBehavior;->valueOf(Ljava/lang/String;)Lcom/facebook/login/LoginBehavior;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->setLoginBehavior(Lcom/facebook/login/LoginBehavior;)V

    .line 64
    return-void
.end method

.method public setPublishPermissions(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "loginButton"    # Lcom/facebook/reactnative/androidsdk/RCTLoginButton;
    .param p2, "publishPermissions"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "publishPermissions"
    .end annotation

    .prologue
    .line 75
    invoke-static {p2}, Lcom/facebook/reactnative/androidsdk/FBLoginButtonManager;->reactArrayToJavaStringCollection(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->setPublishPermissions(Ljava/util/List;)V

    .line 76
    return-void
.end method

.method public setReadPermissions(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "loginButton"    # Lcom/facebook/reactnative/androidsdk/RCTLoginButton;
    .param p2, "readPermissions"    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "readPermissions"
    .end annotation

    .prologue
    .line 82
    invoke-static {p2}, Lcom/facebook/reactnative/androidsdk/FBLoginButtonManager;->reactArrayToJavaStringCollection(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->setReadPermissions(Ljava/util/List;)V

    .line 83
    return-void
.end method
