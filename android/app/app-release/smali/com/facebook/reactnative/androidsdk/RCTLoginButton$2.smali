.class Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;
.super Ljava/lang/Object;
.source "RCTLoginButton.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;


# direct methods
.method constructor <init>(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 6

    .prologue
    .line 114
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 115
    .local v1, "event":Lcom/facebook/react/bridge/WritableMap;
    const-string v3, "type"

    const-string v4, "loginFinished"

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v3, "error"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 118
    .local v2, "result":Lcom/facebook/react/bridge/WritableMap;
    const-string v3, "isCancelled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    const-string v3, "result"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 120
    iget-object v3, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    invoke-virtual {v3}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 121
    .local v0, "context":Lcom/facebook/react/bridge/ReactContext;
    const-class v3, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {v0, v3}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    iget-object v4, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    .line 122
    invoke-virtual {v4}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->getId()I

    move-result v4

    const-string v5, "topChange"

    .line 121
    invoke-interface {v3, v4, v5, v1}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 125
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 6
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 99
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 100
    .local v1, "event":Lcom/facebook/react/bridge/WritableMap;
    const-string v3, "type"

    const-string v4, "loginFinished"

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v3, "error"

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 103
    .local v2, "result":Lcom/facebook/react/bridge/WritableMap;
    const-string v3, "isCancelled"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    const-string v3, "result"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 105
    iget-object v3, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    invoke-virtual {v3}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 106
    .local v0, "context":Lcom/facebook/react/bridge/ReactContext;
    const-class v3, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {v0, v3}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    iget-object v4, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    .line 107
    invoke-virtual {v4}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->getId()I

    move-result v4

    const-string v5, "topChange"

    .line 106
    invoke-interface {v3, v4, v5, v1}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 110
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 6
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;

    .prologue
    .line 76
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 77
    .local v1, "event":Lcom/facebook/react/bridge/WritableMap;
    const-string v3, "type"

    const-string v4, "loginFinished"

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v3, "error"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 80
    .local v2, "result":Lcom/facebook/react/bridge/WritableMap;
    const-string v3, "isCancelled"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    const-string v3, "grantedPermissions"

    iget-object v4, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    .line 84
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getRecentlyGrantedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->access$000(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-static {v4}, Lcom/facebook/react/bridge/Arguments;->fromJavaArgs([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object v4

    .line 81
    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 85
    const-string v3, "declinedPermissions"

    iget-object v4, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    .line 88
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getRecentlyDeniedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->access$000(Lcom/facebook/reactnative/androidsdk/RCTLoginButton;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-static {v4}, Lcom/facebook/react/bridge/Arguments;->fromJavaArgs([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object v4

    .line 85
    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 89
    const-string v3, "result"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 90
    iget-object v3, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    invoke-virtual {v3}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 91
    .local v0, "context":Lcom/facebook/react/bridge/ReactContext;
    const-class v3, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {v0, v3}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    iget-object v4, p0, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLoginButton;

    .line 92
    invoke-virtual {v4}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton;->getId()I

    move-result v4

    const-string v5, "topChange"

    .line 91
    invoke-interface {v3, v4, v5, v1}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 95
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/facebook/reactnative/androidsdk/RCTLoginButton$2;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
