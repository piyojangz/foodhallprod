.class Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1;
.super Ljava/lang/Object;
.source "RNPushNotificationListenerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;->onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1;->this$0:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;

    iput-object p2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 59
    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1;->this$0:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;

    invoke-virtual {v2}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/ReactApplication;

    invoke-interface {v2}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v1

    .line 60
    .local v1, "mReactInstanceManager":Lcom/facebook/react/ReactInstanceManager;
    invoke-virtual {v1}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 62
    .local v0, "context":Lcom/facebook/react/bridge/ReactContext;
    if-eqz v0, :cond_1

    .line 63
    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1;->this$0:Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    .end local v0    # "context":Lcom/facebook/react/bridge/ReactContext;
    iget-object v3, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1;->val$bundle:Landroid/os/Bundle;

    invoke-static {v2, v0, v3}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;->access$000(Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService;Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/os/Bundle;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 66
    .restart local v0    # "context":Lcom/facebook/react/bridge/ReactContext;
    :cond_1
    new-instance v2, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1$1;

    invoke-direct {v2, p0}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1$1;-><init>(Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationListenerService$1;)V

    invoke-virtual {v1, v2}, Lcom/facebook/react/ReactInstanceManager;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;)V

    .line 71
    invoke-virtual {v1}, Lcom/facebook/react/ReactInstanceManager;->hasStartedCreatingInitialContext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    invoke-virtual {v1}, Lcom/facebook/react/ReactInstanceManager;->createReactContextInBackground()V

    goto :goto_0
.end method
