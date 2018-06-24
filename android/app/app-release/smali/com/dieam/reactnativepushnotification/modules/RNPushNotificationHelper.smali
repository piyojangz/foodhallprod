.class public Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;
.super Ljava/lang/Object;
.source "RNPushNotificationHelper.java"


# static fields
.field private static final DEFAULT_VIBRATION:J = 0x12cL

.field private static final ONE_DAY:J = 0x5265c00L

.field private static final ONE_HOUR:J = 0x36ee80L

.field private static final ONE_MINUTE:I = 0xea60

.field public static final PREFERENCES_KEY:Ljava/lang/String; = "rn_push_notification"


# instance fields
.field private context:Landroid/content/Context;

.field private final scheduledNotificationsPersistence:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Application;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    .line 46
    const-string v0, "rn_push_notification"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->scheduledNotificationsPersistence:Landroid/content/SharedPreferences;

    .line 47
    return-void
.end method

.method private cancelScheduledNotification(Ljava/lang/String;)V
    .locals 6
    .param p1, "notificationIDString"    # Ljava/lang/String;

    .prologue
    .line 434
    const-string v3, "RNPushNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancelling notification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 438
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "id"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-direct {p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->toScheduleNotificationIntent(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 441
    iget-object v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->scheduledNotificationsPersistence:Landroid/content/SharedPreferences;

    invoke-interface {v3, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 443
    iget-object v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->scheduledNotificationsPersistence:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 444
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 445
    invoke-static {v1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->commit(Landroid/content/SharedPreferences$Editor;)V

    .line 451
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-direct {p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->notificationManager()Landroid/app/NotificationManager;

    move-result-object v2

    .line 453
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 454
    return-void

    .line 447
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    const-string v3, "RNPushNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static commit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 461
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 462
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 466
    :goto_0
    return-void

    .line 464
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    return-object v0
.end method

.method private notificationManager()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private scheduleNextNotificationIfRepeating(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 352
    const-string v8, "repeatType"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 353
    .local v6, "repeatType":Ljava/lang/String;
    const-string v8, "repeatTime"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-long v4, v8

    .line 355
    .local v4, "repeatTime":J
    if-eqz v6, :cond_0

    .line 356
    const-string v8, "fireDate"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-long v0, v8

    .line 358
    .local v0, "fireDate":J
    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "time"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "week"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "day"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "hour"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "minute"

    aput-object v10, v8, v9

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 361
    .local v7, "validRepeatType":Z
    if-nez v7, :cond_1

    .line 362
    const-string v8, "RNPushNotification"

    const-string v9, "Invalid repeatType specified as %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v0    # "fireDate":J
    .end local v7    # "validRepeatType":Z
    :cond_0
    :goto_0
    return-void

    .line 366
    .restart local v0    # "fireDate":J
    .restart local v7    # "validRepeatType":Z
    :cond_1
    const-string v8, "time"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gtz v8, :cond_2

    .line 367
    const-string v8, "RNPushNotification"

    const-string v9, "repeatType specified as time but no repeatTime has been mentioned"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    :cond_2
    const-wide/16 v2, 0x0

    .line 374
    .local v2, "newFireDate":J
    const/4 v8, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 393
    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_0

    .line 394
    const-string v8, "RNPushNotification"

    const-string v9, "Repeating notification with id %s at time %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "id"

    .line 395
    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 394
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v8, "fireDate"

    long-to-double v10, v2

    invoke-virtual {p1, v8, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 397
    invoke-virtual {p0, p1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->sendNotificationScheduled(Landroid/os/Bundle;)V

    goto :goto_0

    .line 374
    :sswitch_0
    const-string v9, "time"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v8, 0x0

    goto :goto_1

    :sswitch_1
    const-string v9, "week"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :sswitch_2
    const-string v9, "day"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v8, 0x2

    goto :goto_1

    :sswitch_3
    const-string v9, "hour"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v8, 0x3

    goto :goto_1

    :sswitch_4
    const-string v9, "minute"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v8, 0x4

    goto :goto_1

    .line 376
    :pswitch_0
    add-long v2, v0, v4

    .line 377
    goto :goto_2

    .line 379
    :pswitch_1
    const-wide/32 v8, 0x240c8400

    add-long v2, v0, v8

    .line 380
    goto :goto_2

    .line 382
    :pswitch_2
    const-wide/32 v8, 0x5265c00

    add-long v2, v0, v8

    .line 383
    goto :goto_2

    .line 385
    :pswitch_3
    const-wide/32 v8, 0x36ee80

    add-long v2, v0, v8

    .line 386
    goto :goto_2

    .line 388
    :pswitch_4
    const-wide/32 v8, 0xea60

    add-long v2, v0, v8

    goto :goto_2

    .line 374
    :sswitch_data_0
    .sparse-switch
        -0x400459ec -> :sswitch_4
        0x1839c -> :sswitch_2
        0x30f5e4 -> :sswitch_3
        0x3652cd -> :sswitch_0
        0x379ff4 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private toScheduleNotificationIntent(Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 66
    const-string v2, "id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 68
    .local v0, "notificationID":I
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    const-class v3, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationPublisher;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v1, "notificationIntent":Landroid/content/Intent;
    const-string v2, "notificationId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 72
    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public cancelAllScheduledNotifications()V
    .locals 3

    .prologue
    .line 410
    const-string v1, "RNPushNotification"

    const-string v2, "Cancelling all notifications"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->scheduledNotificationsPersistence:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 413
    .local v0, "id":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->cancelScheduledNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 415
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public cancelScheduledNotification(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 8
    .param p1, "userInfo"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 418
    iget-object v4, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->scheduledNotificationsPersistence:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 420
    .local v1, "id":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->scheduledNotificationsPersistence:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, "notificationAttributesJson":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 422
    invoke-static {v3}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->fromJson(Ljava/lang/String;)Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;

    move-result-object v2

    .line 423
    .local v2, "notificationAttributes":Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;
    invoke-virtual {v2, p1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->matches(Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 424
    invoke-direct {p0, v1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->cancelScheduledNotification(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 427
    .end local v2    # "notificationAttributes":Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;
    .end local v3    # "notificationAttributesJson":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "RNPushNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem dealing with scheduled notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 431
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public clearNotifications()V
    .locals 3

    .prologue
    .line 403
    const-string v1, "RNPushNotification"

    const-string v2, "Clearing alerts from the notification centre"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-direct {p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->notificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    .line 406
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 407
    return-void
.end method

.method public getMainActivityClass()Ljava/lang/Class;
    .locals 5

    .prologue
    .line 50
    iget-object v4, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 52
    .local v2, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 57
    :goto_0
    return-object v4

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 57
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public sendNotificationScheduled(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->getMainActivityClass()Ljava/lang/Class;

    move-result-object v4

    .line 77
    .local v4, "intentClass":Ljava/lang/Class;
    if-nez v4, :cond_0

    .line 78
    const-string v7, "RNPushNotification"

    const-string v8, "No activity class found for the scheduled notification"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 82
    :cond_0
    const-string v7, "message"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 83
    const-string v7, "RNPushNotification"

    const-string v8, "No message specified for the scheduled notification"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_1
    const-string v7, "id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    .line 88
    const-string v7, "RNPushNotification"

    const-string v8, "No notification ID specified for the scheduled notification"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_2
    const-string v7, "fireDate"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 93
    .local v2, "fireDate":D
    const-wide/16 v8, 0x0

    cmpl-double v7, v2, v8

    if-nez v7, :cond_3

    .line 94
    const-string v7, "RNPushNotification"

    const-string v8, "No date specified for the scheduled notification"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_3
    new-instance v6, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;

    invoke-direct {v6, p1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;-><init>(Landroid/os/Bundle;)V

    .line 99
    .local v6, "notificationAttributes":Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;
    invoke-virtual {v6}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->getId()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "id":Ljava/lang/String;
    const-string v7, "RNPushNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Storing push notification with id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v7, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->scheduledNotificationsPersistence:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v6}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-static {v0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->commit(Landroid/content/SharedPreferences$Editor;)V

    .line 107
    iget-object v7, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->scheduledNotificationsPersistence:Landroid/content/SharedPreferences;

    invoke-interface {v7, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    .line 108
    .local v5, "isSaved":Z
    if-nez v5, :cond_4

    .line 109
    const-string v7, "RNPushNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to save "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_4
    invoke-virtual {p0, p1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->sendNotificationScheduledCore(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public sendNotificationScheduledCore(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 116
    const-string v3, "fireDate"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-long v0, v4

    .line 120
    .local v0, "fireDate":J
    invoke-direct {p0, p1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->toScheduleNotificationIntent(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 122
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    const-string v3, "RNPushNotification"

    const-string v4, "Setting a notification with id %s at time %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "id"

    .line 123
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 122
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v3

    invoke-virtual {v3, v8, v0, v1, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v3

    invoke-virtual {v3, v8, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendToNotificationCentre(Landroid/os/Bundle;)V
    .locals 44
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 133
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->getMainActivityClass()Ljava/lang/Class;

    move-result-object v17

    .line 134
    .local v17, "intentClass":Ljava/lang/Class;
    if-nez v17, :cond_0

    .line 135
    const-string v40, "RNPushNotification"

    const-string v41, "No activity class found for the notification"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local v17    # "intentClass":Ljava/lang/Class;
    :goto_0
    return-void

    .line 139
    .restart local v17    # "intentClass":Ljava/lang/Class;
    :cond_0
    const-string v40, "message"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    if-nez v40, :cond_1

    .line 141
    const-string v40, "RNPushNotification"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Cannot send to notification centre because there is no \'message\' field in: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    .end local v17    # "intentClass":Ljava/lang/Class;
    :catch_0
    move-exception v10

    .line 347
    .local v10, "e":Ljava/lang/Exception;
    const-string v40, "RNPushNotification"

    const-string v41, "failed to send push notification"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 145
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v17    # "intentClass":Ljava/lang/Class;
    :cond_1
    :try_start_1
    const-string v40, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 146
    .local v23, "notificationIdString":Ljava/lang/String;
    if-nez v23, :cond_2

    .line 147
    const-string v40, "RNPushNotification"

    const-string v41, "No notification ID specified for the notification"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    .line 152
    .local v29, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v26

    .line 154
    .local v26, "packageName":Ljava/lang/String;
    const-string v40, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 155
    .local v37, "title":Ljava/lang/String;
    if-nez v37, :cond_3

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 157
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v37

    .line 160
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    new-instance v40, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-direct/range {v40 .. v41}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v40

    const-string v41, "ticker"

    .line 162
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v40

    const/16 v41, 0x0

    .line 163
    invoke-virtual/range {v40 .. v41}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v40

    const/16 v41, 0x1

    .line 164
    invoke-virtual/range {v40 .. v41}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v40

    const-string v41, "autoCancel"

    const/16 v42, 0x1

    .line 165
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    invoke-virtual/range {v40 .. v41}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    .line 167
    .local v21, "notification":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v40, "group"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 168
    .local v12, "group":Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 169
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 172
    :cond_4
    const-string v40, "message"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 174
    const-string v40, "largeIcon"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 176
    .local v18, "largeIcon":Ljava/lang/String;
    const-string v40, "subText"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 178
    .local v35, "subText":Ljava/lang/String;
    if-eqz v35, :cond_5

    .line 179
    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 182
    :cond_5
    const-string v40, "number"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 183
    .local v25, "numberString":Ljava/lang/String;
    if-eqz v25, :cond_6

    .line 184
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v21

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 190
    :cond_6
    const-string v40, "smallIcon"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 192
    .local v31, "smallIcon":Ljava/lang/String;
    if-eqz v31, :cond_14

    .line 193
    const-string v40, "mipmap"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v40

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v32

    .line 198
    .local v32, "smallIconResId":I
    :goto_1
    if-nez v32, :cond_7

    .line 199
    const-string v40, "ic_launcher"

    const-string v41, "mipmap"

    move-object/from16 v0, v29

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v32

    .line 201
    if-nez v32, :cond_7

    .line 202
    const v32, 0x108009b

    .line 206
    :cond_7
    if-eqz v18, :cond_15

    .line 207
    const-string v40, "mipmap"

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    move-object/from16 v2, v40

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 212
    .local v20, "largeIconResId":I
    :goto_2
    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 214
    .local v19, "largeIconBitmap":Landroid/graphics/Bitmap;
    if-eqz v20, :cond_9

    if-nez v18, :cond_8

    sget v40, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v41, 0x15

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_9

    .line 215
    :cond_8
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 218
    :cond_9
    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 219
    const-string v40, "bigText"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 221
    .local v8, "bigText":Ljava/lang/String;
    if-nez v8, :cond_a

    .line 222
    const-string v40, "message"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 225
    :cond_a
    new-instance v40, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct/range {v40 .. v40}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v40

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 227
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v16, "intent":Landroid/content/Intent;
    const/high16 v40, 0x20000000

    move-object/from16 v0, v16

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    const-string v40, "userInteraction"

    const/16 v41, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 230
    const-string v40, "notification"

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 232
    const-string v40, "playSound"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_b

    const-string v40, "playSound"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_d

    .line 233
    :cond_b
    const/16 v40, 0x2

    invoke-static/range {v40 .. v40}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v34

    .line 234
    .local v34, "soundUri":Landroid/net/Uri;
    const-string v40, "soundName"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 235
    .local v33, "soundName":Ljava/lang/String;
    if-eqz v33, :cond_c

    .line 236
    const-string v40, "default"

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_c

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v40

    const-string v41, "raw"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v40

    if-eqz v40, :cond_16

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v40

    const-string v41, "raw"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    .line 250
    .local v30, "resId":I
    :goto_3
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "android.resource://"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "/"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    .line 253
    .end local v30    # "resId":I
    :cond_c
    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 256
    .end local v33    # "soundName":Ljava/lang/String;
    .end local v34    # "soundUri":Landroid/net/Uri;
    :cond_d
    const-string v40, "ongoing"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_e

    const-string v40, "ongoing"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_f

    .line 257
    :cond_e
    const-string v40, "ongoing"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v40

    move-object/from16 v0, v21

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 260
    :cond_f
    sget v40, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v41, 0x15

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_10

    .line 261
    const-string v40, "call"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 263
    const-string v40, "color"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 264
    .local v9, "color":Ljava/lang/String;
    if-eqz v9, :cond_10

    .line 265
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v21

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 269
    .end local v9    # "color":Ljava/lang/String;
    :cond_10
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 271
    .local v22, "notificationID":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    const/high16 v41, 0x8000000

    move-object/from16 v0, v40

    move/from16 v1, v22

    move-object/from16 v2, v16

    move/from16 v3, v41

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    .line 274
    .local v28, "pendingIntent":Landroid/app/PendingIntent;
    invoke-direct/range {p0 .. p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->notificationManager()Landroid/app/NotificationManager;

    move-result-object v24

    .line 276
    .local v24, "notificationManager":Landroid/app/NotificationManager;
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 278
    const-string v40, "vibrate"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_11

    const-string v40, "vibrate"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_13

    .line 279
    :cond_11
    const-string v40, "vibration"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_17

    const-string v40, "vibration"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v40

    move-wide/from16 v0, v40

    double-to-long v0, v0

    move-wide/from16 v38, v0

    .line 280
    .local v38, "vibration":J
    :goto_4
    const-wide/16 v40, 0x0

    cmp-long v40, v38, v40

    if-nez v40, :cond_12

    .line 281
    const-wide/16 v38, 0x12c

    .line 282
    :cond_12
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [J

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-wide/16 v42, 0x0

    aput-wide v42, v40, v41

    const/16 v41, 0x1

    aput-wide v38, v40, v41

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 285
    .end local v38    # "vibration":J
    :cond_13
    const/4 v6, 0x0

    .line 287
    .local v6, "actionsArray":Lorg/json/JSONArray;
    :try_start_2
    const-string v40, "actions"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    if-eqz v40, :cond_18

    new-instance v40, Lorg/json/JSONArray;

    const-string v41, "actions"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v6, v40

    .line 292
    :goto_5
    if-eqz v6, :cond_19

    .line 294
    const/4 v14, 0x0

    .line 297
    .local v14, "icon":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    :try_start_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v40

    move/from16 v0, v40

    if-ge v13, v0, :cond_19

    .line 300
    :try_start_4
    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v4

    .line 306
    .local v4, "action":Ljava/lang/String;
    :try_start_5
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v5, "actionIntent":Landroid/content/Intent;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "."

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v40, "action"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v40, "notification"

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    const/high16 v41, 0x8000000

    move-object/from16 v0, v40

    move/from16 v1, v22

    move/from16 v2, v41

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v27

    .line 313
    .local v27, "pendingActionIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v14, v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 297
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "actionIntent":Landroid/content/Intent;
    .end local v27    # "pendingActionIntent":Landroid/app/PendingIntent;
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 195
    .end local v6    # "actionsArray":Lorg/json/JSONArray;
    .end local v8    # "bigText":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v14    # "icon":I
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v19    # "largeIconBitmap":Landroid/graphics/Bitmap;
    .end local v20    # "largeIconResId":I
    .end local v22    # "notificationID":I
    .end local v24    # "notificationManager":Landroid/app/NotificationManager;
    .end local v28    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v32    # "smallIconResId":I
    :cond_14
    const-string v40, "ic_notification"

    const-string v41, "mipmap"

    move-object/from16 v0, v29

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v32

    .restart local v32    # "smallIconResId":I
    goto/16 :goto_1

    .line 209
    :cond_15
    const-string v40, "ic_launcher"

    const-string v41, "mipmap"

    move-object/from16 v0, v29

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .restart local v20    # "largeIconResId":I
    goto/16 :goto_2

    .line 246
    .restart local v8    # "bigText":Ljava/lang/String;
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v19    # "largeIconBitmap":Landroid/graphics/Bitmap;
    .restart local v33    # "soundName":Ljava/lang/String;
    .restart local v34    # "soundUri":Landroid/net/Uri;
    :cond_16
    const/16 v40, 0x0

    const/16 v41, 0x2e

    move-object/from16 v0, v33

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v41

    move-object/from16 v0, v33

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v40

    const-string v41, "raw"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->context:Landroid/content/Context;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    .restart local v30    # "resId":I
    goto/16 :goto_3

    .line 279
    .end local v30    # "resId":I
    .end local v33    # "soundName":Ljava/lang/String;
    .end local v34    # "soundUri":Landroid/net/Uri;
    .restart local v22    # "notificationID":I
    .restart local v24    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v28    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_17
    const-wide/16 v38, 0x12c

    goto/16 :goto_4

    .line 287
    .restart local v6    # "actionsArray":Lorg/json/JSONArray;
    :cond_18
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 288
    :catch_1
    move-exception v10

    .line 289
    .local v10, "e":Lorg/json/JSONException;
    const-string v40, "RNPushNotification"

    const-string v41, "Exception while converting actions to JSON object."

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 301
    .end local v10    # "e":Lorg/json/JSONException;
    .restart local v13    # "i":I
    .restart local v14    # "icon":I
    :catch_2
    move-exception v10

    .line 302
    .restart local v10    # "e":Lorg/json/JSONException;
    const-string v40, "RNPushNotification"

    const-string v41, "Exception while getting action from actionsArray."

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 325
    .end local v10    # "e":Lorg/json/JSONException;
    .end local v13    # "i":I
    .end local v14    # "icon":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->scheduledNotificationsPersistence:Landroid/content/SharedPreferences;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    if-eqz v40, :cond_1a

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->scheduledNotificationsPersistence:Landroid/content/SharedPreferences;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 327
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 328
    invoke-static {v11}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->commit(Landroid/content/SharedPreferences$Editor;)V

    .line 331
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1a
    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v15

    .line 332
    .local v15, "info":Landroid/app/Notification;
    iget v0, v15, Landroid/app/Notification;->defaults:I

    move/from16 v40, v0

    or-int/lit8 v40, v40, 0x4

    move/from16 v0, v40

    iput v0, v15, Landroid/app/Notification;->defaults:I

    .line 334
    const-string v40, "tag"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1b

    .line 335
    const-string v40, "tag"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 336
    .local v36, "tag":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v36

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v15}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 345
    .end local v36    # "tag":Ljava/lang/String;
    :goto_8
    invoke-direct/range {p0 .. p1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationHelper;->scheduleNextNotificationIfRepeating(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 338
    :cond_1b
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_8
.end method
