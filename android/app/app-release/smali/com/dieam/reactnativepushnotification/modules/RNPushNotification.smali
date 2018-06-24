.class public Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNPushNotification.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "RNPushNotification"


# instance fields
.field private mJsDelivery:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;

.field private mRNPushNotificationHelper:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;

.field private final mRandomNumberGenerator:Ljava/util/Random;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 4
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 32
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->mRandomNumberGenerator:Ljava/util/Random;

    .line 38
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 40
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 42
    .local v0, "applicationContext":Landroid/app/Application;
    new-instance v1, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;

    invoke-direct {v1, v0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;-><init>(Landroid/app/Application;)V

    iput-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->mRNPushNotificationHelper:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;

    .line 44
    new-instance v1, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;

    invoke-direct {v1, p1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->mJsDelivery:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;

    .line 46
    invoke-direct {p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->registerNotificationsRegistration()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;)Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;
    .locals 1
    .param p0, "x0"    # Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->mJsDelivery:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;

    return-object v0
.end method

.method private registerNotificationsReceiveNotificationActions(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 5
    .param p1, "actions"    # Lcom/facebook/react/bridge/ReadableArray;

    .prologue
    .line 86
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 89
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    new-instance v4, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification$2;

    invoke-direct {v4, p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification$2;-><init>(Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;)V

    invoke-virtual {v3, v4, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method private registerNotificationsRegistration()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".RNPushNotificationRegisteredToken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    new-instance v2, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification$1;

    invoke-direct {v2, p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification$1;-><init>(Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;)V

    invoke-virtual {v1, v2, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    return-void
.end method


# virtual methods
.method public cancelAllLocalNotifications()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->mRNPushNotificationHelper:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;

    invoke-virtual {v0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->cancelAllScheduledNotifications()V

    .line 181
    iget-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->mRNPushNotificationHelper:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;

    invoke-virtual {v0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->clearNotifications()V

    .line 182
    return-void
.end method

.method public cancelLocalNotifications(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .param p1, "userInfo"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->mRNPushNotificationHelper:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;

    invoke-virtual {v0, p1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->cancelScheduledNotification(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 195
    return-void
.end method

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
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v0, "constants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-object v0
.end method

.method public getInitialNotification(Lcom/facebook/react/bridge/Promise;)V
    .locals 7
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    .line 141
    .local v4, "params":Lcom/facebook/react/bridge/WritableMap;
    invoke-virtual {p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 142
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 144
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "notification"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 145
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 146
    const-string v5, "foreground"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    iget-object v5, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->mJsDelivery:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;

    invoke-virtual {v5, v1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;->convertJSON(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "bundleString":Ljava/lang/String;
    const-string v5, "dataJSON"

    invoke-interface {v4, v5, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "bundleString":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "RNPushNotification"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 167
    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 161
    invoke-virtual {p0, p2, p3, p4}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->onActivityResult(IILandroid/content/Intent;)V

    .line 162
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "foreground"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    const-string v1, "notification"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->mJsDelivery:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;

    invoke-virtual {v1, v0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;->notifyNotification(Landroid/os/Bundle;)V

    .line 68
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public presentLocalNotification(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .param p1, "details"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 120
    invoke-static {p1}, Lcom/facebook/react/bridge/Arguments;->toBundle(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 123
    const-string v1, "id"

    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->mRandomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->mRNPushNotificationHelper:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;

    invoke-virtual {v1, v0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->sendToNotificationCentre(Landroid/os/Bundle;)V

    .line 126
    return-void
.end method

.method public registerNotificationActions(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "actions"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->registerNotificationsReceiveNotificationActions(Lcom/facebook/react/bridge/ReadableArray;)V

    .line 200
    return-void
.end method

.method public requestPermissions(Ljava/lang/String;)V
    .locals 3
    .param p1, "senderID"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    .line 112
    .local v1, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationRegistrationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v0, "GCMService":Landroid/content/Intent;
    const-string v2, "senderID"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {v1, v0}, Lcom/facebook/react/bridge/ReactContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 116
    return-void
.end method

.method public scheduleLocalNotification(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .param p1, "details"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 130
    invoke-static {p1}, Lcom/facebook/react/bridge/Arguments;->toBundle(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object v0

    .line 132
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 133
    const-string v1, "id"

    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->mRandomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->mRNPushNotificationHelper:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;

    invoke-virtual {v1, v0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->sendNotificationScheduled(Landroid/os/Bundle;)V

    .line 136
    return-void
.end method

.method public setApplicationIconBadgeNumber(I)V
    .locals 2
    .param p1, "number"    # I
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 156
    sget-object v0, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->INSTANCE:Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;

    invoke-virtual {p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->setApplicationIconBadgeNumber(Landroid/content/Context;I)V

    .line 157
    return-void
.end method
