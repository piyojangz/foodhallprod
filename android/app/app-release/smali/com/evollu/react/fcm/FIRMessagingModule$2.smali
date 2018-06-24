.class Lcom/evollu/react/fcm/FIRMessagingModule$2;
.super Landroid/content/BroadcastReceiver;
.source "FIRMessagingModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evollu/react/fcm/FIRMessagingModule;->registerMessageHandler()V
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
    .line 97
    iput-object p1, p0, Lcom/evollu/react/fcm/FIRMessagingModule$2;->this$0:Lcom/evollu/react/fcm/FIRMessagingModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    iget-object v5, p0, Lcom/evollu/react/fcm/FIRMessagingModule$2;->this$0:Lcom/evollu/react/fcm/FIRMessagingModule;

    invoke-static {v5}, Lcom/evollu/react/fcm/FIRMessagingModule;->access$200(Lcom/evollu/react/fcm/FIRMessagingModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 101
    const-string v5, "data"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/messaging/RemoteMessage;

    .line 102
    .local v3, "message":Lcom/google/firebase/messaging/RemoteMessage;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    .line 103
    .local v4, "params":Lcom/facebook/react/bridge/WritableMap;
    invoke-virtual {v3}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 104
    invoke-virtual {v3}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    .line 105
    .local v0, "data":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 106
    .local v2, "keysIterator":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v1, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/evollu/react/fcm/FIRMessagingModule$2;->this$0:Lcom/evollu/react/fcm/FIRMessagingModule;

    const-string v6, "FCMNotificationReceived"

    invoke-static {v5, v6, v4}, Lcom/evollu/react/fcm/FIRMessagingModule;->access$100(Lcom/evollu/react/fcm/FIRMessagingModule;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0}, Lcom/evollu/react/fcm/FIRMessagingModule$2;->abortBroadcast()V

    .line 114
    .end local v0    # "data":Ljava/util/Map;
    .end local v2    # "keysIterator":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "message":Lcom/google/firebase/messaging/RemoteMessage;
    .end local v4    # "params":Lcom/facebook/react/bridge/WritableMap;
    :cond_1
    return-void
.end method
