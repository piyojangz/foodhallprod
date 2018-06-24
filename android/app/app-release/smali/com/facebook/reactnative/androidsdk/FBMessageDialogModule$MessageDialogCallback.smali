.class Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule$MessageDialogCallback;
.super Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback;
.source "FBMessageDialogModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageDialogCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback",
        "<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule;


# direct methods
.method public constructor <init>(Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule$MessageDialogCallback;->this$0:Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule;

    .line 44
    invoke-direct {p0, p2}, Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/facebook/share/Sharer$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/facebook/share/Sharer$Result;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule$MessageDialogCallback;->mPromise:Lcom/facebook/react/bridge/Promise;

    if-eqz v1, :cond_0

    .line 50
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 51
    .local v0, "messageDialogResult":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "postId"

    invoke-virtual {p1}, Lcom/facebook/share/Sharer$Result;->getPostId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule$MessageDialogCallback;->mPromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule$MessageDialogCallback;->mPromise:Lcom/facebook/react/bridge/Promise;

    .line 55
    .end local v0    # "messageDialogResult":Lcom/facebook/react/bridge/WritableMap;
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule$MessageDialogCallback;->onSuccess(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method
