.class Lcom/dieam/reactnativepushnotification/modules/RNPushNotification$2;
.super Landroid/content/BroadcastReceiver;
.source "RNPushNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->registerNotificationsReceiveNotificationActions(Lcom/facebook/react/bridge/ReadableArray;)V
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
    .line 92
    iput-object p1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification$2;->this$0:Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    const-string v3, "notification"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 98
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification$2;->this$0:Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;

    invoke-static {v3}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;->access$000(Lcom/dieam/reactnativepushnotification/modules/RNPushNotification;)Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;->notifyNotificationAction(Landroid/os/Bundle;)V

    .line 101
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 102
    .local v1, "manager":Landroid/app/NotificationManager;
    const-string v3, "id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 103
    .local v2, "notificationID":I
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 104
    return-void
.end method
