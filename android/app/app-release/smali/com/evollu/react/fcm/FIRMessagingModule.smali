.class public Lcom/evollu/react/fcm/FIRMessagingModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "FIRMessagingModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;
.implements Lcom/facebook/react/bridge/ActivityEventListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field initIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/evollu/react/fcm/FIRMessagingModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evollu/react/fcm/FIRMessagingModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 36
    invoke-virtual {p0}, Lcom/evollu/react/fcm/FIRMessagingModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 37
    invoke-virtual {p0}, Lcom/evollu/react/fcm/FIRMessagingModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 38
    invoke-direct {p0}, Lcom/evollu/react/fcm/FIRMessagingModule;->registerTokenRefreshHandler()V

    .line 39
    invoke-direct {p0}, Lcom/evollu/react/fcm/FIRMessagingModule;->registerMessageHandler()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/evollu/react/fcm/FIRMessagingModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1
    .param p0, "x0"    # Lcom/evollu/react/fcm/FIRMessagingModule;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/evollu/react/fcm/FIRMessagingModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/evollu/react/fcm/FIRMessagingModule;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/evollu/react/fcm/FIRMessagingModule;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/evollu/react/fcm/FIRMessagingModule;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/evollu/react/fcm/FIRMessagingModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1
    .param p0, "x0"    # Lcom/evollu/react/fcm/FIRMessagingModule;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/evollu/react/fcm/FIRMessagingModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    return-object v0
.end method

.method private parseIntent(Landroid/content/Intent;)Lcom/facebook/react/bridge/WritableMap;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 121
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 123
    :try_start_0
    invoke-static {v1}, Lcom/facebook/react/bridge/Arguments;->fromBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 131
    .local v3, "params":Lcom/facebook/react/bridge/WritableMap;
    :goto_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 132
    .local v2, "fcm":Lcom/facebook/react/bridge/WritableMap;
    const-string v4, "action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v4, "fcm"

    invoke-interface {v3, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 135
    const-string v4, "opened_from_tray"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 136
    return-object v3

    .line 124
    .end local v2    # "fcm":Lcom/facebook/react/bridge/WritableMap;
    .end local v3    # "params":Lcom/facebook/react/bridge/WritableMap;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/evollu/react/fcm/FIRMessagingModule;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 127
    .restart local v3    # "params":Lcom/facebook/react/bridge/WritableMap;
    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "params":Lcom/facebook/react/bridge/WritableMap;
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .restart local v3    # "params":Lcom/facebook/react/bridge/WritableMap;
    goto :goto_0
.end method

.method private registerMessageHandler()V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.evollu.react.fcm.ReceiveNotification"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/evollu/react/fcm/FIRMessagingModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    new-instance v2, Lcom/evollu/react/fcm/FIRMessagingModule$2;

    invoke-direct {v2, p0}, Lcom/evollu/react/fcm/FIRMessagingModule$2;-><init>(Lcom/evollu/react/fcm/FIRMessagingModule;)V

    invoke-virtual {v1, v2, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    return-void
.end method

.method private registerTokenRefreshHandler()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.evollu.react.fcm.FCMRefreshToken"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/evollu/react/fcm/FIRMessagingModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    new-instance v2, Lcom/evollu/react/fcm/FIRMessagingModule$1;

    invoke-direct {v2, p0}, Lcom/evollu/react/fcm/FIRMessagingModule$1;-><init>(Lcom/evollu/react/fcm/FIRMessagingModule;)V

    invoke-virtual {v1, v2, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void
.end method

.method private sendEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/Object;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/evollu/react/fcm/FIRMessagingModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 75
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 76
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    return-void
.end method


# virtual methods
.method public getConstants()Ljava/util/Map;
    .locals 1
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
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v0, "constants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-object v0
.end method

.method public getFCMToken(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/evollu/react/fcm/FIRMessagingModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firebase token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "RNFIRMessaging"

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 160
    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public onHostPause()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public onHostResume()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/evollu/react/fcm/FIRMessagingModule;->initIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/evollu/react/fcm/FIRMessagingModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 144
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "FCMInitData"

    invoke-direct {p0, v0}, Lcom/evollu/react/fcm/FIRMessagingModule;->parseIntent(Landroid/content/Intent;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/evollu/react/fcm/FIRMessagingModule;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    iput-object v0, p0, Lcom/evollu/react/fcm/FIRMessagingModule;->initIntent:Landroid/content/Intent;

    .line 147
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    const-string v0, "FCMNotificationReceived"

    invoke-direct {p0, p1}, Lcom/evollu/react/fcm/FIRMessagingModule;->parseIntent(Landroid/content/Intent;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/evollu/react/fcm/FIRMessagingModule;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method public requestPermissions()V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 55
    return-void
.end method

.method public subscribeToTopic(Ljava/lang/String;)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public unsubscribeFromTopic(Ljava/lang/String;)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->unsubscribeFromTopic(Ljava/lang/String;)V

    .line 71
    return-void
.end method
