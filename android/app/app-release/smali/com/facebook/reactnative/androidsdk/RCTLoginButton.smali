.class public Lcom/facebook/reactnative/androidsdk/RCTLoginButton;
.super Lcom/facebook/login/widget/LoginButton;
.source "RCTLoginButton.java"


# instance fields
.field private mAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

.field private mCallbackManager:Lcom/facebook/CallbackManager;


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/CallbackManager;)V
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;
    .param p2, "callbackManager"    # Lcom/facebook/CallbackManager;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/LoginButton;-><init>(Landroid/content/Context;)V

    .line 51
    sget-object v0, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->NEVER_DISPLAY:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    invoke-virtual {p0, v0}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->setToolTipMode(Lcom/facebook/login/widget/LoginButton$ToolTipMode;)V

    .line 52
    iput-object p2, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->mCallbackManager:Lcom/facebook/CallbackManager;

    .line 53
    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->init()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;Ljava/util/Set;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/reactnative/androidsdk/RCTLoginButton;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->setToStringArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setToStringArray(Ljava/util/Set;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 131
    .local v0, "array":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 132
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    .local v1, "e":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aput-object v1, v0, v2

    move v2, v3

    .line 134
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 135
    .end local v1    # "e":Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$1;

    invoke-direct {v0, p0}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$1;-><init>(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;)V

    iput-object v0, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->mAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

    .line 73
    iget-object v0, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->mCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v1, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;

    invoke-direct {v1, p0}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;-><init>(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 127
    return-void
.end method
