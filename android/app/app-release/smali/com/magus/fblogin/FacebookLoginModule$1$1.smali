.class Lcom/magus/fblogin/FacebookLoginModule$1$1;
.super Ljava/lang/Object;
.source "FacebookLoginModule.java"

# interfaces
.implements Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magus/fblogin/FacebookLoginModule$1;->onSuccess(Lcom/facebook/login/LoginResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/magus/fblogin/FacebookLoginModule$1;


# direct methods
.method constructor <init>(Lcom/magus/fblogin/FacebookLoginModule$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/magus/fblogin/FacebookLoginModule$1;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/magus/fblogin/FacebookLoginModule$1$1;->this$1:Lcom/magus/fblogin/FacebookLoginModule$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 5
    .param p1, "me"    # Lorg/json/JSONObject;
    .param p2, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 68
    iget-object v2, p0, Lcom/magus/fblogin/FacebookLoginModule$1$1;->this$1:Lcom/magus/fblogin/FacebookLoginModule$1;

    iget-object v2, v2, Lcom/magus/fblogin/FacebookLoginModule$1;->this$0:Lcom/magus/fblogin/FacebookLoginModule;

    invoke-static {v2}, Lcom/magus/fblogin/FacebookLoginModule;->access$000(Lcom/magus/fblogin/FacebookLoginModule;)Lcom/facebook/react/bridge/Callback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 71
    .local v0, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v0, :cond_1

    .line 72
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 74
    .local v1, "map":Lcom/facebook/react/bridge/WritableMap;
    const-string v2, "errorType"

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "message"

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "recoveryMessage"

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorRecoveryMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v2, "userMessage"

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorUserMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v2, "userTitle"

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorUserTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "code"

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v2, "eventName"

    const-string v3, "onError"

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lcom/magus/fblogin/FacebookLoginModule$1$1;->this$1:Lcom/magus/fblogin/FacebookLoginModule$1;

    iget-object v2, v2, Lcom/magus/fblogin/FacebookLoginModule$1;->this$0:Lcom/magus/fblogin/FacebookLoginModule;

    const-string v3, "error"

    invoke-static {v2, v3, v1}, Lcom/magus/fblogin/FacebookLoginModule;->access$100(Lcom/magus/fblogin/FacebookLoginModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 94
    .end local v0    # "error":Lcom/facebook/FacebookRequestError;
    .end local v1    # "map":Lcom/facebook/react/bridge/WritableMap;
    :cond_0
    :goto_0
    return-void

    .line 84
    .restart local v0    # "error":Lcom/facebook/FacebookRequestError;
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 85
    .restart local v1    # "map":Lcom/facebook/react/bridge/WritableMap;
    const-string v2, "credentials"

    iget-object v3, p0, Lcom/magus/fblogin/FacebookLoginModule$1$1;->this$1:Lcom/magus/fblogin/FacebookLoginModule$1;

    iget-object v3, v3, Lcom/magus/fblogin/FacebookLoginModule$1;->this$0:Lcom/magus/fblogin/FacebookLoginModule;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/magus/fblogin/FacebookLoginModule;->access$200(Lcom/magus/fblogin/FacebookLoginModule;Lcom/facebook/AccessToken;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 88
    const-string v2, "profile"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "eventName"

    const-string v3, "onLogin"

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/magus/fblogin/FacebookLoginModule$1$1;->this$1:Lcom/magus/fblogin/FacebookLoginModule$1;

    iget-object v2, v2, Lcom/magus/fblogin/FacebookLoginModule$1;->this$0:Lcom/magus/fblogin/FacebookLoginModule;

    const-string v3, "success"

    invoke-static {v2, v3, v1}, Lcom/magus/fblogin/FacebookLoginModule;->access$100(Lcom/magus/fblogin/FacebookLoginModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0
.end method
