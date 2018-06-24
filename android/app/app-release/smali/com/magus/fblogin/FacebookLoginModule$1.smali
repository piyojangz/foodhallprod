.class Lcom/magus/fblogin/FacebookLoginModule$1;
.super Ljava/lang/Object;
.source "FacebookLoginModule.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magus/fblogin/FacebookLoginModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
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
.field final synthetic this$0:Lcom/magus/fblogin/FacebookLoginModule;


# direct methods
.method constructor <init>(Lcom/magus/fblogin/FacebookLoginModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/magus/fblogin/FacebookLoginModule;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/magus/fblogin/FacebookLoginModule$1;->this$0:Lcom/magus/fblogin/FacebookLoginModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/magus/fblogin/FacebookLoginModule$1;->this$0:Lcom/magus/fblogin/FacebookLoginModule;

    invoke-static {v1}, Lcom/magus/fblogin/FacebookLoginModule;->access$000(Lcom/magus/fblogin/FacebookLoginModule;)Lcom/facebook/react/bridge/Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 112
    .local v0, "map":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "message"

    const-string v2, "FacebookCallback onCancel event triggered"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "eventName"

    const-string v2, "onCancel"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/magus/fblogin/FacebookLoginModule$1;->this$0:Lcom/magus/fblogin/FacebookLoginModule;

    const-string v2, "cancel"

    invoke-static {v1, v2, v0}, Lcom/magus/fblogin/FacebookLoginModule;->access$100(Lcom/magus/fblogin/FacebookLoginModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 116
    .end local v0    # "map":Lcom/facebook/react/bridge/WritableMap;
    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3
    .param p1, "exception"    # Lcom/facebook/FacebookException;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/magus/fblogin/FacebookLoginModule$1;->this$0:Lcom/magus/fblogin/FacebookLoginModule;

    invoke-static {v1}, Lcom/magus/fblogin/FacebookLoginModule;->access$000(Lcom/magus/fblogin/FacebookLoginModule;)Lcom/facebook/react/bridge/Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 123
    .local v0, "map":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "message"

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "eventName"

    const-string v2, "onError"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/magus/fblogin/FacebookLoginModule$1;->this$0:Lcom/magus/fblogin/FacebookLoginModule;

    const-string v2, "error"

    invoke-static {v1, v2, v0}, Lcom/magus/fblogin/FacebookLoginModule;->access$100(Lcom/magus/fblogin/FacebookLoginModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 128
    .end local v0    # "map":Lcom/facebook/react/bridge/WritableMap;
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 7
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getRecentlyGrantedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v3

    new-instance v4, Lcom/magus/fblogin/FacebookLoginModule$1$1;

    invoke-direct {v4, p0}, Lcom/magus/fblogin/FacebookLoginModule$1$1;-><init>(Lcom/magus/fblogin/FacebookLoginModule$1;)V

    .line 63
    invoke-static {v3, v4}, Lcom/facebook/GraphRequest;->newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 96
    .local v2, "request":Lcom/facebook/GraphRequest;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v1, "parameters":Landroid/os/Bundle;
    const-string v0, "id,name,email,first_name,last_name,age_range,link,picture,gender,locale,timezone,updated_time,verified"

    .line 100
    .local v0, "fields":Ljava/lang/String;
    const-string v3, "fields"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2, v1}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 106
    .end local v0    # "fields":Ljava/lang/String;
    .end local v1    # "parameters":Landroid/os/Bundle;
    .end local v2    # "request":Lcom/facebook/GraphRequest;
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v3, p0, Lcom/magus/fblogin/FacebookLoginModule$1;->this$0:Lcom/magus/fblogin/FacebookLoginModule;

    const-string v4, "Insufficient permissions"

    const-string v5, "onPermissionsMissing"

    const-string v6, "error"

    invoke-static {v3, v4, v5, v6}, Lcom/magus/fblogin/FacebookLoginModule;->access$300(Lcom/magus/fblogin/FacebookLoginModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/magus/fblogin/FacebookLoginModule$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
