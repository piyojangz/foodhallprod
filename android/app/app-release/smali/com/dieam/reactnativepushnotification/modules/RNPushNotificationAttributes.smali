.class public Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;
.super Ljava/lang/Object;
.source "RNPushNotificationAttributes.java"


# static fields
.field private static final ACTIONS:Ljava/lang/String; = "actions"

.field private static final AUTO_CANCEL:Ljava/lang/String; = "autoCancel"

.field private static final BIG_TEXT:Ljava/lang/String; = "bigText"

.field private static final COLOR:Ljava/lang/String; = "color"

.field private static final FIRE_DATE:Ljava/lang/String; = "fireDate"

.field private static final GROUP:Ljava/lang/String; = "group"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final LARGE_ICON:Ljava/lang/String; = "largeIcon"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final NUMBER:Ljava/lang/String; = "number"

.field private static final ONGOING:Ljava/lang/String; = "ongoing"

.field private static final PLAY_SOUND:Ljava/lang/String; = "playSound"

.field private static final REPEAT_TIME:Ljava/lang/String; = "repeatTime"

.field private static final REPEAT_TYPE:Ljava/lang/String; = "repeatType"

.field private static final SMALL_ICON:Ljava/lang/String; = "smallIcon"

.field private static final SOUND:Ljava/lang/String; = "sound"

.field private static final SUB_TEXT:Ljava/lang/String; = "subText"

.field private static final TAG:Ljava/lang/String; = "tag"

.field private static final TICKER:Ljava/lang/String; = "ticker"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final USER_INTERACTION:Ljava/lang/String; = "userInteraction"

.field private static final VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final VIBRATION:Ljava/lang/String; = "vibration"


# instance fields
.field private final actions:Ljava/lang/String;

.field private final autoCancel:Z

.field private final bigText:Ljava/lang/String;

.field private final color:Ljava/lang/String;

.field private final fireDate:D

.field private final group:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final largeIcon:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final number:Ljava/lang/String;

.field private final ongoing:Z

.field private final playSound:Z

.field private final repeatTime:D

.field private final repeatType:Ljava/lang/String;

.field private final smallIcon:Ljava/lang/String;

.field private final sound:Ljava/lang/String;

.field private final subText:Ljava/lang/String;

.field private final tag:Ljava/lang/String;

.field private final ticker:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final userInteraction:Z

.field private final vibrate:Z

.field private final vibration:D


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->id:Ljava/lang/String;

    .line 66
    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->message:Ljava/lang/String;

    .line 67
    const-string v0, "fireDate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->fireDate:D

    .line 68
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->title:Ljava/lang/String;

    .line 69
    const-string v0, "ticker"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->ticker:Ljava/lang/String;

    .line 70
    const-string v0, "autoCancel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->autoCancel:Z

    .line 71
    const-string v0, "largeIcon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->largeIcon:Ljava/lang/String;

    .line 72
    const-string v0, "smallIcon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->smallIcon:Ljava/lang/String;

    .line 73
    const-string v0, "bigText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->bigText:Ljava/lang/String;

    .line 74
    const-string v0, "subText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->subText:Ljava/lang/String;

    .line 75
    const-string v0, "number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->number:Ljava/lang/String;

    .line 76
    const-string v0, "sound"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->sound:Ljava/lang/String;

    .line 77
    const-string v0, "color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->color:Ljava/lang/String;

    .line 78
    const-string v0, "group"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->group:Ljava/lang/String;

    .line 79
    const-string v0, "userInteraction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->userInteraction:Z

    .line 80
    const-string v0, "playSound"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->playSound:Z

    .line 81
    const-string v0, "vibrate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->vibrate:Z

    .line 82
    const-string v0, "vibration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->vibration:D

    .line 83
    const-string v0, "actions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->actions:Ljava/lang/String;

    .line 84
    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->tag:Ljava/lang/String;

    .line 85
    const-string v0, "repeatType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->repeatType:Ljava/lang/String;

    .line 86
    const-string v0, "repeatTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->repeatTime:D

    .line 87
    const-string v0, "ongoing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->ongoing:Z

    .line 88
    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    :try_start_0
    const-string v6, "id"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "id"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    iput-object v6, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->id:Ljava/lang/String;

    .line 93
    const-string v6, "message"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "message"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    iput-object v6, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->message:Ljava/lang/String;

    .line 94
    const-string v6, "fireDate"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "fireDate"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    :goto_2
    iput-wide v6, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->fireDate:D

    .line 95
    const-string v6, "title"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "title"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    iput-object v6, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->title:Ljava/lang/String;

    .line 96
    const-string v6, "ticker"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "ticker"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_4
    iput-object v6, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->ticker:Ljava/lang/String;

    .line 97
    const-string v6, "autoCancel"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "autoCancel"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    :goto_5
    iput-boolean v6, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->autoCancel:Z

    .line 98
    const-string v6, "largeIcon"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "largeIcon"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_6
    iput-object v6, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->largeIcon:Ljava/lang/String;

    .line 99
    const-string v6, "smallIcon"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "smallIcon"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_7
    iput-object v6, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->smallIcon:Ljava/lang/String;

    .line 100
    const-string v6, "bigText"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "bigText"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_8
    iput-object v6, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->bigText:Ljava/lang/String;

    .line 101
    const-string v6, "subText"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "subText"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_9
    iput-object v6, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->subText:Ljava/lang/String;

    .line 102
    const-string v6, "number"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "number"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_a
    iput-object v6, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->number:Ljava/lang/String;

    .line 103
    const-string v6, "sound"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "sound"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_b
    iput-object v6, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->sound:Ljava/lang/String;

    .line 104
    const-string v6, "color"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v6, "color"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_c
    iput-object v6, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->color:Ljava/lang/String;

    .line 105
    const-string v6, "group"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, "group"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_d
    iput-object v6, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->group:Ljava/lang/String;

    .line 106
    const-string v6, "userInteraction"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "userInteraction"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    :goto_e
    iput-boolean v6, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->userInteraction:Z

    .line 107
    const-string v6, "playSound"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v6, "playSound"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    :goto_f
    iput-boolean v6, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->playSound:Z

    .line 108
    const-string v6, "vibrate"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v5, "vibrate"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    :cond_0
    iput-boolean v5, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->vibrate:Z

    .line 109
    const-string v5, "vibration"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v5, "vibration"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    :goto_10
    iput-wide v6, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->vibration:D

    .line 110
    const-string v5, "actions"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "actions"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_11
    iput-object v5, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->actions:Ljava/lang/String;

    .line 111
    const-string v5, "tag"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "tag"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_12
    iput-object v5, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->tag:Ljava/lang/String;

    .line 112
    const-string v5, "repeatType"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "repeatType"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    iput-object v4, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->repeatType:Ljava/lang/String;

    .line 113
    const-string v4, "repeatTime"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "repeatTime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    :cond_2
    iput-wide v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->repeatTime:D

    .line 114
    const-string v2, "ongoing"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "ongoing"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_3
    iput-boolean v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->ongoing:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    return-void

    :cond_4
    move-object v6, v4

    .line 92
    goto/16 :goto_0

    :cond_5
    move-object v6, v4

    .line 93
    goto/16 :goto_1

    :cond_6
    move-wide v6, v2

    .line 94
    goto/16 :goto_2

    :cond_7
    move-object v6, v4

    .line 95
    goto/16 :goto_3

    :cond_8
    move-object v6, v4

    .line 96
    goto/16 :goto_4

    :cond_9
    move v6, v5

    .line 97
    goto/16 :goto_5

    :cond_a
    move-object v6, v4

    .line 98
    goto/16 :goto_6

    :cond_b
    move-object v6, v4

    .line 99
    goto/16 :goto_7

    :cond_c
    move-object v6, v4

    .line 100
    goto/16 :goto_8

    :cond_d
    move-object v6, v4

    .line 101
    goto/16 :goto_9

    :cond_e
    move-object v6, v4

    .line 102
    goto/16 :goto_a

    :cond_f
    move-object v6, v4

    .line 103
    goto/16 :goto_b

    :cond_10
    move-object v6, v4

    .line 104
    goto/16 :goto_c

    :cond_11
    move-object v6, v4

    .line 105
    goto/16 :goto_d

    :cond_12
    move v6, v1

    .line 106
    goto/16 :goto_e

    :cond_13
    move v6, v5

    .line 107
    goto/16 :goto_f

    .line 109
    :cond_14
    const-wide v6, 0x408f400000000000L    # 1000.0

    goto/16 :goto_10

    :cond_15
    move-object v5, v4

    .line 110
    goto :goto_11

    :cond_16
    move-object v5, v4

    .line 111
    goto :goto_12

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Exception while initializing RNPushNotificationAttributes from JSON"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;
    .locals 2
    .param p0, "notificationAttributesJson"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;

    invoke-direct {v1, v0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method


# virtual methods
.method public getFireDate()D
    .locals 2

    .prologue
    .line 272
    iget-wide v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->fireDate:D

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->id:Ljava/lang/String;

    return-object v0
.end method

.method public matches(Lcom/facebook/react/bridge/ReadableMap;)Z
    .locals 8
    .param p1, "userInfo"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    const/4 v3, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 137
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    .line 138
    .local v1, "iterator":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 139
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 172
    .end local v2    # "key":Ljava/lang/String;
    :goto_1
    :pswitch_0
    return v3

    .line 144
    .restart local v2    # "key":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes$1;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 146
    :pswitch_1
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 151
    :pswitch_2
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 156
    :pswitch_3
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 161
    :pswitch_4
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 172
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 176
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "id"

    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "message"

    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v1, "fireDate"

    iget-wide v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->fireDate:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 180
    const-string v1, "title"

    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v1, "ticker"

    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->ticker:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "autoCancel"

    iget-boolean v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->autoCancel:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    const-string v1, "largeIcon"

    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->largeIcon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, "smallIcon"

    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->smallIcon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "bigText"

    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->bigText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "subText"

    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->subText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "number"

    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "sound"

    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->sound:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "color"

    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->color:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "group"

    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->group:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "userInteraction"

    iget-boolean v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->userInteraction:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    const-string v1, "playSound"

    iget-boolean v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->playSound:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    const-string v1, "vibrate"

    iget-boolean v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->vibrate:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    const-string v1, "vibration"

    iget-wide v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->vibration:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 195
    const-string v1, "actions"

    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->actions:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "tag"

    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "repeatType"

    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->repeatType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v1, "repeatTime"

    iget-wide v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->repeatTime:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 199
    const-string v1, "ongoing"

    iget-boolean v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->ongoing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 200
    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 204
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 206
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    iget-object v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    const-string v2, "message"

    iget-object v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v2, "fireDate"

    iget-wide v4, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->fireDate:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 209
    const-string v2, "title"

    iget-object v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v2, "ticker"

    iget-object v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->ticker:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v2, "autoCancel"

    iget-boolean v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->autoCancel:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 212
    const-string v2, "largeIcon"

    iget-object v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->largeIcon:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v2, "smallIcon"

    iget-object v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->smallIcon:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string v2, "bigText"

    iget-object v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->bigText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string v2, "subText"

    iget-object v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->subText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string v2, "number"

    iget-object v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v2, "sound"

    iget-object v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->sound:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v2, "color"

    iget-object v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->color:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v2, "group"

    iget-object v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->group:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string v2, "userInteraction"

    iget-boolean v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->userInteraction:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 221
    const-string v2, "playSound"

    iget-boolean v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->playSound:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 222
    const-string v2, "vibrate"

    iget-boolean v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->vibrate:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 223
    const-string v2, "vibration"

    iget-wide v4, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->vibration:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 224
    const-string v2, "actions"

    iget-object v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->actions:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v2, "tag"

    iget-object v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v2, "repeatType"

    iget-object v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->repeatType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string v2, "repeatTime"

    iget-wide v4, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->repeatTime:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 228
    const-string v2, "ongoing"

    iget-boolean v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->ongoing:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 229
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "RNPushNotification"

    const-string v3, "Exception while converting RNPushNotificationAttributes to JSON. Returning an empty object"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RNPushNotificationAttributes{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fireDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->fireDate:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ticker=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->ticker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoCancel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->autoCancel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", largeIcon=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->largeIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", smallIcon=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->smallIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bigText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->bigText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->subText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sound=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->sound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", color=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->color:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", group=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->group:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userInteraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->userInteraction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playSound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->playSound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vibrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->vibrate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vibration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->vibration:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actions=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->actions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repeatType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->repeatType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repeatTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->repeatTime:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ongoing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationAttributes;->ongoing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
