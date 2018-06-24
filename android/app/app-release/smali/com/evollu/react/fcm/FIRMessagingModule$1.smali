.class Lcom/evollu/react/fcm/FIRMessagingModule$1;
.super Landroid/content/BroadcastReceiver;
.source "FIRMessagingModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evollu/react/fcm/FIRMessagingModule;->registerTokenRefreshHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evollu/react/fcm/FIRMessagingModule;


# direct methods
.method constructor <init>(Lcom/evollu/react/fcm/FIRMessagingModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/evollu/react/fcm/FIRMessagingModule;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/evollu/react/fcm/FIRMessagingModule$1;->this$0:Lcom/evollu/react/fcm/FIRMessagingModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    iget-object v1, p0, Lcom/evollu/react/fcm/FIRMessagingModule$1;->this$0:Lcom/evollu/react/fcm/FIRMessagingModule;

    invoke-static {v1}, Lcom/evollu/react/fcm/FIRMessagingModule;->access$000(Lcom/evollu/react/fcm/FIRMessagingModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "token"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/evollu/react/fcm/FIRMessagingModule$1;->this$0:Lcom/evollu/react/fcm/FIRMessagingModule;

    const-string v2, "FCMTokenRefreshed"

    invoke-static {v1, v2, v0}, Lcom/evollu/react/fcm/FIRMessagingModule;->access$100(Lcom/evollu/react/fcm/FIRMessagingModule;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Lcom/evollu/react/fcm/FIRMessagingModule$1;->abortBroadcast()V

    .line 90
    .end local v0    # "token":Ljava/lang/String;
    :cond_0
    return-void
.end method
