.class public Lcom/magus/fblogin/FacebookLoginModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "FacebookLoginModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;


# instance fields
.field private final CALLBACK_TYPE_CANCEL:Ljava/lang/String;

.field private final CALLBACK_TYPE_ERROR:Ljava/lang/String;

.field private final CALLBACK_TYPE_SUCCESS:Ljava/lang/String;

.field private mCallbackManager:Lcom/facebook/CallbackManager;

.field private mLogoutCallback:Lcom/facebook/react/bridge/Callback;

.field private mTokenCallback:Lcom/facebook/react/bridge/Callback;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 3
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 40
    const-string v0, "success"

    iput-object v0, p0, Lcom/magus/fblogin/FacebookLoginModule;->CALLBACK_TYPE_SUCCESS:Ljava/lang/String;

    .line 41
    const-string v0, "error"

    iput-object v0, p0, Lcom/magus/fblogin/FacebookLoginModule;->CALLBACK_TYPE_ERROR:Ljava/lang/String;

    .line 42
    const-string v0, "cancel"

    iput-object v0, p0, Lcom/magus/fblogin/FacebookLoginModule;->CALLBACK_TYPE_CANCEL:Ljava/lang/String;

    .line 51
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 53
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/magus/fblogin/FacebookLoginModule;->mCallbackManager:Lcom/facebook/CallbackManager;

    .line 57
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magus/fblogin/FacebookLoginModule;->mCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/magus/fblogin/FacebookLoginModule$1;

    invoke-direct {v2, p0}, Lcom/magus/fblogin/FacebookLoginModule$1;-><init>(Lcom/magus/fblogin/FacebookLoginModule;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/magus/fblogin/FacebookLoginModule;)Lcom/facebook/react/bridge/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/magus/fblogin/FacebookLoginModule;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/magus/fblogin/FacebookLoginModule;->mTokenCallback:Lcom/facebook/react/bridge/Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/magus/fblogin/FacebookLoginModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/magus/fblogin/FacebookLoginModule;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/facebook/react/bridge/WritableMap;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/magus/fblogin/FacebookLoginModule;->consumeCallback(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/magus/fblogin/FacebookLoginModule;Lcom/facebook/AccessToken;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1
    .param p0, "x0"    # Lcom/magus/fblogin/FacebookLoginModule;
    .param p1, "x1"    # Lcom/facebook/AccessToken;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/magus/fblogin/FacebookLoginModule;->getCredentialsFromToken(Lcom/facebook/AccessToken;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/magus/fblogin/FacebookLoginModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/magus/fblogin/FacebookLoginModule;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/magus/fblogin/FacebookLoginModule;->handleError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private consumeCallback(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "map"    # Lcom/facebook/react/bridge/WritableMap;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 142
    iget-object v1, p0, Lcom/magus/fblogin/FacebookLoginModule;->mTokenCallback:Lcom/facebook/react/bridge/Callback;

    if-eqz v1, :cond_0

    .line 143
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 144
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    const-string v1, "type"

    invoke-interface {p2, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "provider"

    const-string v2, "facebook"

    invoke-interface {p2, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "declinedPermissions"

    invoke-direct {p0, v0}, Lcom/magus/fblogin/FacebookLoginModule;->getDeclinedPermissions(Lcom/facebook/AccessToken;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 148
    const-string v1, "success"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/magus/fblogin/FacebookLoginModule;->mTokenCallback:Lcom/facebook/react/bridge/Callback;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 154
    :goto_0
    iput-object v3, p0, Lcom/magus/fblogin/FacebookLoginModule;->mTokenCallback:Lcom/facebook/react/bridge/Callback;

    .line 156
    .end local v0    # "accessToken":Lcom/facebook/AccessToken;
    :cond_0
    return-void

    .line 151
    .restart local v0    # "accessToken":Lcom/facebook/AccessToken;
    :cond_1
    iget-object v1, p0, Lcom/magus/fblogin/FacebookLoginModule;->mTokenCallback:Lcom/facebook/react/bridge/Callback;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v4

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getCredentialsFromToken(Lcom/facebook/AccessToken;)Lcom/facebook/react/bridge/WritableMap;
    .locals 6
    .param p1, "currentAccessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 335
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 336
    .local v1, "map":Lcom/facebook/react/bridge/WritableMap;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 337
    .local v0, "array":Lcom/facebook/react/bridge/WritableArray;
    if-eqz p1, :cond_1

    .line 338
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 339
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 340
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_0

    .line 344
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 345
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    const-string v4, "token"

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v4, "userId"

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v4, "tokenExpirationDate"

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v4, "permissions"

    invoke-interface {v1, v4, v0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 351
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    return-object v1
.end method

.method private getDeclinedPermissions(Lcom/facebook/AccessToken;)Lcom/facebook/react/bridge/WritableArray;
    .locals 4
    .param p1, "currentAccessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 355
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 356
    .local v0, "array":Lcom/facebook/react/bridge/WritableArray;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 357
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 358
    .local v1, "value":Ljava/lang/String;
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_0

    .line 362
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getLoginBehaviorMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v0, "LoginBehaviourMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Native"

    sget-object v2, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    invoke-virtual {v2}, Lcom/facebook/login/LoginBehavior;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v1, "NativeOnly"

    sget-object v2, Lcom/facebook/login/LoginBehavior;->NATIVE_ONLY:Lcom/facebook/login/LoginBehavior;

    invoke-virtual {v2}, Lcom/facebook/login/LoginBehavior;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "SystemAccount"

    sget-object v2, Lcom/facebook/login/LoginBehavior;->DEVICE_AUTH:Lcom/facebook/login/LoginBehavior;

    invoke-virtual {v2}, Lcom/facebook/login/LoginBehavior;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "Web"

    sget-object v2, Lcom/facebook/login/LoginBehavior;->WEB_ONLY:Lcom/facebook/login/LoginBehavior;

    invoke-virtual {v2}, Lcom/facebook/login/LoginBehavior;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "WebView"

    sget-object v2, Lcom/facebook/login/LoginBehavior;->WEB_VIEW_ONLY:Lcom/facebook/login/LoginBehavior;

    invoke-virtual {v2}, Lcom/facebook/login/LoginBehavior;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "Katana"

    sget-object v2, Lcom/facebook/login/LoginBehavior;->KATANA_ONLY:Lcom/facebook/login/LoginBehavior;

    invoke-virtual {v2}, Lcom/facebook/login/LoginBehavior;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-object v0
.end method

.method private getPermissions(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;
    .locals 6
    .param p1, "permissions"    # Lcom/facebook/react/bridge/ReadableArray;
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
    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v0, "_permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 300
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 301
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReadableType;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "String"

    if-ne v3, v4, :cond_0

    .line 302
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "permission":Ljava/lang/String;
    const-string v3, "FBLoginPermissions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adding permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    .end local v2    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private handleError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "onPermissionsMissing"    # Ljava/lang/String;
    .param p3, "callbackType"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 135
    .local v0, "map":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "message"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "eventName"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, p3, v0}, Lcom/magus/fblogin/FacebookLoginModule;->consumeCallback(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 139
    return-void
.end method

.method private login(Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 8
    .param p1, "permissions"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p2, "loginType"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/facebook/react/bridge/Callback;

    .prologue
    const/4 v5, 0x1

    .line 235
    iget-object v4, p0, Lcom/magus/fblogin/FacebookLoginModule;->mTokenCallback:Lcom/facebook/react/bridge/Callback;

    if-eqz v4, :cond_0

    .line 236
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 238
    .local v1, "accessToken":Lcom/facebook/AccessToken;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 240
    .local v3, "map":Lcom/facebook/react/bridge/WritableMap;
    if-eqz v1, :cond_2

    .line 241
    const-string v4, "credentials"

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/magus/fblogin/FacebookLoginModule;->getCredentialsFromToken(Lcom/facebook/AccessToken;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 242
    const-string v4, "eventName"

    const-string v6, "onLoginFound"

    invoke-interface {v3, v4, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v4, "cache"

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    const-string v4, "success"

    invoke-direct {p0, v4, v3}, Lcom/magus/fblogin/FacebookLoginModule;->consumeCallback(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 252
    .end local v1    # "accessToken":Lcom/facebook/AccessToken;
    .end local v3    # "map":Lcom/facebook/react/bridge/WritableMap;
    :cond_0
    :goto_0
    iput-object p3, p0, Lcom/magus/fblogin/FacebookLoginModule;->mTokenCallback:Lcom/facebook/react/bridge/Callback;

    .line 254
    invoke-direct {p0, p1}, Lcom/magus/fblogin/FacebookLoginModule;->getPermissions(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object v0

    .line 255
    .local v0, "_permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 256
    const-string v4, "FBLoginPermissions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p0}, Lcom/magus/fblogin/FacebookLoginModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 260
    .local v2, "currentActivity":Landroid/app/Activity;
    if-eqz v2, :cond_3

    .line 261
    const-string v4, "FBLoginBehavior"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using for login: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/login/LoginManager;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/login/LoginBehavior;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v4, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 272
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 281
    .end local v2    # "currentActivity":Landroid/app/Activity;
    :goto_2
    return-void

    .line 246
    .end local v0    # "_permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "accessToken":Lcom/facebook/AccessToken;
    .restart local v3    # "map":Lcom/facebook/react/bridge/WritableMap;
    :cond_2
    const-string v4, "message"

    const-string v6, "Cannot register multiple callbacks"

    invoke-interface {v3, v4, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v4, "eventName"

    const-string v6, "onCancel"

    invoke-interface {v3, v4, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v4, "cancel"

    invoke-direct {p0, v4, v3}, Lcom/magus/fblogin/FacebookLoginModule;->consumeCallback(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 263
    .end local v1    # "accessToken":Lcom/facebook/AccessToken;
    .end local v3    # "map":Lcom/facebook/react/bridge/WritableMap;
    .restart local v0    # "_permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "currentActivity":Landroid/app/Activity;
    :sswitch_0
    const-string v5, "logInWithReadPermissions"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v6, "logInWithPublishPermissions"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    goto :goto_1

    .line 265
    :pswitch_0
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_2

    .line 268
    :pswitch_1
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_2

    .line 276
    :cond_3
    const-string v4, "Activity doesn\'t exist"

    const-string v5, "onError"

    const-string v6, "error"

    invoke-direct {p0, v4, v5, v6}, Lcom/magus/fblogin/FacebookLoginModule;->handleError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 279
    .end local v2    # "currentActivity":Landroid/app/Activity;
    :cond_4
    const-string v4, "Insufficient permissions"

    const-string v5, "onPermissionsMissing"

    const-string v6, "error"

    invoke-direct {p0, v4, v5, v6}, Lcom/magus/fblogin/FacebookLoginModule;->handleError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 263
    :sswitch_data_0
    .sparse-switch
        0x5ce6e11f -> :sswitch_0
        0x6af6f244 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private mapBehavior()Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .prologue
    .line 197
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 198
    .local v1, "map":Lcom/facebook/react/bridge/WritableMap;
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/login/LoginManager;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v0

    .line 199
    .local v0, "loginBehavior":Lcom/facebook/login/LoginBehavior;
    const-string v2, "name"

    invoke-virtual {v0}, Lcom/facebook/login/LoginBehavior;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v2, "ordinal"

    invoke-virtual {v0}, Lcom/facebook/login/LoginBehavior;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 201
    return-object v1
.end method


# virtual methods
.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 166
    .local v0, "constants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "LoginBehaviors"

    invoke-direct {p0}, Lcom/magus/fblogin/FacebookLoginModule;->getLoginBehaviorMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-object v0
.end method

.method public getCredentials(Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .param p1, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 317
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 318
    .local v0, "currentAccessToken":Lcom/facebook/AccessToken;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 319
    .local v1, "map":Lcom/facebook/react/bridge/WritableMap;
    if-eqz v0, :cond_0

    .line 320
    const-string v2, "credentials"

    invoke-direct {p0, v0}, Lcom/magus/fblogin/FacebookLoginModule;->getCredentialsFromToken(Lcom/facebook/AccessToken;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 321
    const-string v2, "type"

    const-string v3, "success"

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v2, "eventName"

    const-string v3, "onLoginFound"

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :goto_0
    const-string v2, "provider"

    const-string v3, "facebook"

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v2, "declinedPermissions"

    invoke-direct {p0, v0}, Lcom/magus/fblogin/FacebookLoginModule;->getDeclinedPermissions(Lcom/facebook/AccessToken;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 331
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 332
    return-void

    .line 324
    :cond_0
    const-string v2, "type"

    const-string v3, "cancel"

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v2, "eventName"

    const-string v3, "onLoginNotFound"

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v2, "message"

    const-string v3, "No user found"

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLoginBehavior(Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .param p1, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 217
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/login/LoginManager;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v0

    .line 218
    .local v0, "loginBehavior":Lcom/facebook/login/LoginBehavior;
    const-string v1, "LoginBehavior"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/login/LoginBehavior;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/magus/fblogin/FacebookLoginModule;->mapBehavior()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "MFBLoginManager"

    return-object v0
.end method

.method public logInWithPublishPermissions(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "permissions"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p2, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 230
    const-string v0, "logInWithPublishPermissions"

    .line 231
    .local v0, "loginType":Ljava/lang/String;
    invoke-direct {p0, p1, v0, p2}, Lcom/magus/fblogin/FacebookLoginModule;->login(Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    .line 232
    return-void
.end method

.method public loginWithPermissions(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "permissions"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p2, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 224
    const-string v0, "loginWithPermissions"

    .line 225
    .local v0, "loginType":Ljava/lang/String;
    invoke-direct {p0, p1, v0, p2}, Lcom/magus/fblogin/FacebookLoginModule;->login(Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    .line 226
    return-void
.end method

.method public logout(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 285
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 287
    .local v0, "map":Lcom/facebook/react/bridge/WritableMap;
    iput-object p1, p0, Lcom/magus/fblogin/FacebookLoginModule;->mTokenCallback:Lcom/facebook/react/bridge/Callback;

    .line 288
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 290
    const-string v1, "message"

    const-string v2, "Facebook Logout executed"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v1, "eventName"

    const-string v2, "onLogout"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v1, "success"

    invoke-direct {p0, v1, v0}, Lcom/magus/fblogin/FacebookLoginModule;->consumeCallback(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 294
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/magus/fblogin/FacebookLoginModule;->mCallbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 367
    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/magus/fblogin/FacebookLoginModule;->mCallbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p2, p3, p4}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 371
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 375
    return-void
.end method

.method public setLoginBehavior(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .param p1, "loginBehavior"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 206
    const-string v1, "LoginBehavior"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-eqz p1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/facebook/login/LoginBehavior;->valueOf(Ljava/lang/String;)Lcom/facebook/login/LoginBehavior;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/login/LoginBehavior;->valueOf(Ljava/lang/String;)Lcom/facebook/login/LoginBehavior;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/login/LoginManager;->setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;

    .line 210
    :cond_0
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/login/LoginManager;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->name()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "currentLoginBehaviorName":Ljava/lang/String;
    const-string v1, "LoginBehavior"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0}, Lcom/magus/fblogin/FacebookLoginModule;->mapBehavior()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 213
    return-void
.end method
