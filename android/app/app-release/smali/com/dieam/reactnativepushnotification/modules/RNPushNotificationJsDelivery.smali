.class public Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;
.super Ljava/lang/Object;
.source "RNPushNotificationJsDelivery.java"


# instance fields
.field private mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 25
    return-void
.end method


# virtual methods
.method convertJSON(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;->convertJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    .line 63
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 65
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method convertJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 73
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 75
    .local v3, "value":Ljava/lang/Object;
    instance-of v5, v3, Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 76
    check-cast v3, Landroid/os/Bundle;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;->convertJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 77
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_1

    .line 78
    invoke-static {v3}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 83
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    return-object v0
.end method

.method notifyNotification(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;->convertJSON(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "bundleString":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 46
    .local v1, "params":Lcom/facebook/react/bridge/WritableMap;
    const-string v2, "dataJSON"

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v2, "remoteNotificationReceived"

    invoke-virtual {p0, v2, v1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method notifyNotificationAction(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;->convertJSON(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "bundleString":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 55
    .local v1, "params":Lcom/facebook/react/bridge/WritableMap;
    const-string v2, "dataJSON"

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "notificationActionReceived"

    invoke-virtual {p0, v2, v1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method notifyRemoteFetch(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;->convertJSON(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "bundleString":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 38
    .local v1, "params":Lcom/facebook/react/bridge/WritableMap;
    const-string v2, "dataJSON"

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v2, "remoteFetch"

    invoke-virtual {p0, v2, v1}, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method sendEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/Object;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/dieam/reactnativepushnotification/modules/RNPushNotificationJsDelivery;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 30
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 31
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    :cond_0
    return-void
.end method
