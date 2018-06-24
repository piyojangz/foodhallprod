.class Lcom/facebook/reactnative/androidsdk/FBGameRequestDialogModule$GameRequestDialogCallback;
.super Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback;
.source "FBGameRequestDialogModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/reactnative/androidsdk/FBGameRequestDialogModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameRequestDialogCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback",
        "<",
        "Lcom/facebook/share/widget/GameRequestDialog$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/reactnative/androidsdk/FBGameRequestDialogModule;


# direct methods
.method public constructor <init>(Lcom/facebook/reactnative/androidsdk/FBGameRequestDialogModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/facebook/reactnative/androidsdk/FBGameRequestDialogModule$GameRequestDialogCallback;->this$0:Lcom/facebook/reactnative/androidsdk/FBGameRequestDialogModule;

    .line 42
    invoke-direct {p0, p2}, Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 43
    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/facebook/share/widget/GameRequestDialog$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/facebook/share/widget/GameRequestDialog$Result;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/FBGameRequestDialogModule$GameRequestDialogCallback;->mPromise:Lcom/facebook/react/bridge/Promise;

    if-eqz v1, :cond_0

    .line 48
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 49
    .local v0, "gameRequestDialogResult":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "requestId"

    invoke-virtual {p1}, Lcom/facebook/share/widget/GameRequestDialog$Result;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "to"

    invoke-virtual {p1}, Lcom/facebook/share/widget/GameRequestDialog$Result;->getRequestRecipients()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/reactnative/androidsdk/Utility;->listToReactArray(Ljava/util/List;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 51
    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/FBGameRequestDialogModule$GameRequestDialogCallback;->mPromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/reactnative/androidsdk/FBGameRequestDialogModule$GameRequestDialogCallback;->mPromise:Lcom/facebook/react/bridge/Promise;

    .line 54
    .end local v0    # "gameRequestDialogResult":Lcom/facebook/react/bridge/WritableMap;
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Lcom/facebook/share/widget/GameRequestDialog$Result;

    invoke-virtual {p0, p1}, Lcom/facebook/reactnative/androidsdk/FBGameRequestDialogModule$GameRequestDialogCallback;->onSuccess(Lcom/facebook/share/widget/GameRequestDialog$Result;)V

    return-void
.end method
