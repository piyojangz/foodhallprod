.class public Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;
.super Lcom/google/android/gms/gcm/GcmListenerService;
.source "RNPushNotificationListenerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmListenerService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;
    .param p1, "x1"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;->handleRemotePushNotification(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/os/Bundle;)V

    return-void
.end method

.method private getPushData(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 82
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleRemotePushNotification(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 91
    const-string v5, "id"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 92
    new-instance v4, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 93
    .local v4, "randomNumberGenerator":Ljava/util/Random;
    const-string v5, "id"

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v4    # "randomNumberGenerator":Ljava/util/Random;
    :cond_0
    invoke-direct {p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;->isApplicationInForeground()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 98
    .local v1, "isForeground":Ljava/lang/Boolean;
    new-instance v2, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;

    invoke-direct {v2, p1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 99
    .local v2, "jsDelivery":Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;
    const-string v5, "foreground"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    const-string v5, "userInteraction"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    invoke-virtual {v2, p2}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;->notifyNotification(Landroid/os/Bundle;)V

    .line 104
    const-string v5, "contentAvailable"

    const-string v6, "false"

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    invoke-virtual {v2, p2}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;->notifyRemoteFetch(Landroid/os/Bundle;)V

    .line 108
    :cond_1
    const-string v5, "RNPushNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendNotification: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    .line 111
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 112
    .local v0, "applicationContext":Landroid/app/Application;
    new-instance v3, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;

    invoke-direct {v3, v0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;-><init>(Landroid/app/Application;)V

    .line 113
    .local v3, "pushNotificationHelper":Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;
    invoke-virtual {v3, p2}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->sendToNotificationCentre(Landroid/os/Bundle;)V

    .line 115
    .end local v0    # "applicationContext":Landroid/app/Application;
    .end local v3    # "pushNotificationHelper":Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;
    :cond_2
    return-void
.end method

.method private isApplicationInForeground()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 118
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 119
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 120
    .local v3, "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_1

    .line 121
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 122
    .local v2, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 123
    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_0

    .line 124
    iget-object v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v7, v6

    if-ge v4, v7, :cond_0

    aget-object v1, v6, v4

    .line 125
    .local v1, "d":Ljava/lang/String;
    const/4 v4, 0x1

    .line 131
    .end local v1    # "d":Ljava/lang/String;
    .end local v2    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return v4
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 29
    const-string v3, "data"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;->getPushData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 30
    .local v1, "data":Lorg/json/JSONObject;
    if-eqz v1, :cond_4

    .line 31
    const-string v3, "message"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 32
    const-string v3, "message"

    const-string v4, "alert"

    const-string v5, "Notification received"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    const-string v3, "title"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 35
    const-string v3, "title"

    const-string v4, "title"

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_1
    const-string v3, "sound"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 38
    const-string v3, "soundName"

    const-string v4, "sound"

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_2
    const-string v3, "color"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 41
    const-string v3, "color"

    const-string v4, "color"

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_3
    const-string v3, "badge"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 45
    .local v0, "badge":I
    if-ltz v0, :cond_4

    .line 46
    sget-object v3, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->INSTANCE:Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;

    invoke-virtual {v3, p0, v0}, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->setApplicationIconBadgeNumber(Landroid/content/Context;I)V

    .line 50
    .end local v0    # "badge":I
    :cond_4
    const-string v3, "RNPushNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMessageReceived: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 56
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1;

    invoke-direct {v3, p0, p2}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1;-><init>(Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method
