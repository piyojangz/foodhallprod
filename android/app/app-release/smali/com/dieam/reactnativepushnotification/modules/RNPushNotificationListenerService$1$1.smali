.class Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1$1;
.super Ljava/lang/Object;
.source "RNPushNotificationListenerService.java"

# interfaces
.implements Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1;


# direct methods
.method constructor <init>(Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1$1;->this$1:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1$1;->this$1:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1;

    iget-object v0, v0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1;->this$0:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;

    check-cast p1, Lcom/facebook/react/bridge/ReactApplicationContext;

    .end local p1    # "context":Lcom/facebook/react/bridge/ReactContext;
    iget-object v1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1$1;->this$1:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1;

    iget-object v1, v1, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1;->val$bundle:Landroid/os/Bundle;

    invoke-static {v0, p1, v1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;->access$000(Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/os/Bundle;)V

    .line 69
    return-void
.end method
