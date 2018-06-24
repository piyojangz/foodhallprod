.class public Lcom/evollu/react/fcm/MessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "MessagingService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MessagingService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 3
    .param p1, "remoteMessage"    # Lcom/google/firebase/messaging/RemoteMessage;

    .prologue
    .line 16
    const-string v1, "MessagingService"

    const-string v2, "Remote message received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.evollu.react.fcm.ReceiveNotification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 19
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/evollu/react/fcm/MessagingService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 20
    return-void
.end method
