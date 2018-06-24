.class public Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationBootEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RNPushNotificationBootEventReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    const-string v8, "RNPushNotification"

    const-string v9, "RNPushNotificationBootEventReceiver loading scheduled notifications"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 24
    const-string v8, "rn_push_notification"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 25
    .local v7, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 27
    .local v3, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 28
    .local v0, "applicationContext":Landroid/app/Application;
    new-instance v6, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;

    invoke-direct {v6, v0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;-><init>(Landroid/app/Application;)V

    .line 30
    .local v6, "rnPushNotificationHelper":Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    .local v2, "id":Ljava/lang/String;
    const/4 v9, 0x0

    :try_start_0
    invoke-interface {v7, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, "notificationAttributesJson":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 34
    invoke-static {v5}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->fromJson(Ljava/lang/String;)Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;

    move-result-object v4

    .line 36
    .local v4, "notificationAttributes":Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;
    invoke-virtual {v4}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->getFireDate()D

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-double v12, v12

    cmpg-double v9, v10, v12

    if-gez v9, :cond_1

    .line 37
    const-string v9, "RNPushNotification"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RNPushNotificationBootEventReceiver: Showing notification for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 38
    invoke-virtual {v4}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 37
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {v4}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->sendToNotificationCentre(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    .end local v4    # "notificationAttributes":Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;
    .end local v5    # "notificationAttributesJson":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "RNPushNotification"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Problem with boot receiver loading notification "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 41
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "notificationAttributes":Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;
    .restart local v5    # "notificationAttributesJson":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v9, "RNPushNotification"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RNPushNotificationBootEventReceiver: Scheduling notification for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 42
    invoke-virtual {v4}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 41
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {v4}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->sendNotificationScheduledCore(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 51
    .end local v0    # "applicationContext":Landroid/app/Application;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "notificationAttributes":Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;
    .end local v5    # "notificationAttributesJson":Ljava/lang/String;
    .end local v6    # "rnPushNotificationHelper":Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;
    .end local v7    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_2
    return-void
.end method
