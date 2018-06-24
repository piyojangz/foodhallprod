.class public Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "FBLoginManagerModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule$LoginManagerCallback;
    }
.end annotation


# instance fields
.field private mCallbackManager:Lcom/facebook/CallbackManager;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/CallbackManager;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "callbackManager"    # Lcom/facebook/CallbackManager;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 80
    iput-object p2, p0, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;->mCallbackManager:Lcom/facebook/CallbackManager;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;Ljava/util/Set;)Lcom/facebook/react/bridge/WritableArray;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;->setToWritableArray(Ljava/util/Set;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    return-object v0
.end method

.method private static reactArrayToJavaStringCollection(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/Collection;
    .locals 3
    .param p0, "array"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 183
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 184
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method private setToWritableArray(Ljava/util/Set;)Lcom/facebook/react/bridge/WritableArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/react/bridge/WritableArray;"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 175
    .local v0, "array":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    .local v1, "e":Ljava/lang/String;
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    .end local v1    # "e":Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getDefaultAudience(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 115
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/DefaultAudience;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public getLoginBehavior(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginBehavior;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "FBLoginManager"

    return-object v0
.end method

.method public logInWithPublishPermissions(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .param p1, "permissions"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 164
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    .line 165
    .local v1, "loginManager":Lcom/facebook/login/LoginManager;
    iget-object v2, p0, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;->mCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v3, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule$LoginManagerCallback;

    invoke-direct {v3, p0, p2}, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule$LoginManagerCallback;-><init>(Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 166
    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 167
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 169
    invoke-static {p1}, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;->reactArrayToJavaStringCollection(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/Collection;

    move-result-object v2

    .line 168
    invoke-virtual {v1, v0, v2}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 171
    :cond_0
    return-void
.end method

.method public logInWithReadPermissions(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .param p1, "permissions"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 146
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    .line 147
    .local v1, "loginManager":Lcom/facebook/login/LoginManager;
    iget-object v2, p0, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;->mCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v3, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule$LoginManagerCallback;

    invoke-direct {v3, p0, p2}, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule$LoginManagerCallback;-><init>(Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 148
    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 149
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 151
    invoke-static {p1}, Lcom/facebook/reactnative/androidsdk/FBLoginManagerModule;->reactArrayToJavaStringCollection(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/Collection;

    move-result-object v2

    .line 150
    invoke-virtual {v1, v0, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 153
    :cond_0
    return-void
.end method

.method public logOut()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 135
    return-void
.end method

.method public setDefaultAudience(Ljava/lang/String;)V
    .locals 2
    .param p1, "defaultAudienceString"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/login/DefaultAudience;->valueOf(Ljava/lang/String;)Lcom/facebook/login/DefaultAudience;

    move-result-object v0

    .line 126
    .local v0, "defaultAudience":Lcom/facebook/login/DefaultAudience;
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/login/LoginManager;->setDefaultAudience(Lcom/facebook/login/DefaultAudience;)Lcom/facebook/login/LoginManager;

    .line 127
    return-void
.end method

.method public setLoginBehavior(Ljava/lang/String;)V
    .locals 2
    .param p1, "loginBehaviorString"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/login/LoginBehavior;->valueOf(Ljava/lang/String;)Lcom/facebook/login/LoginBehavior;

    move-result-object v0

    .line 106
    .local v0, "loginBehavior":Lcom/facebook/login/LoginBehavior;
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/login/LoginManager;->setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;

    .line 107
    return-void
.end method
