.class Lcom/dieam/reactnativepushnotification/modules/RNPushNotification$1;
.super Landroid/content/BroadcastReceiver;
.source "RNPushNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->registerNotificationsRegistration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;


# direct methods
.method constructor <init>(Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification$1;->this$0:Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    const-string v2, "token"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "token":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 78
    .local v0, "params":Lcom/facebook/react/bridge/WritableMap;
    const-string v2, "deviceToken"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification$1;->this$0:Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;

    invoke-static {v2}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->access$000(Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;)Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;

    move-result-object v2

    const-string v3, "remoteNotificationsRegistered"

    invoke-virtual {v2, v3, v0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    return-void
.end method
