.class Lcom/facebook/reactnative/androidsdk/FBAppInviteDialogModule$AppInviteDialogCallback;
.super Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback;
.source "FBAppInviteDialogModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/reactnative/androidsdk/FBAppInviteDialogModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppInviteDialogCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback",
        "<",
        "Lcom/facebook/share/widget/AppInviteDialog$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/reactnative/androidsdk/FBAppInviteDialogModule;


# direct methods
.method public constructor <init>(Lcom/facebook/reactnative/androidsdk/FBAppInviteDialogModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/facebook/reactnative/androidsdk/FBAppInviteDialogModule$AppInviteDialogCallback;->this$0:Lcom/facebook/reactnative/androidsdk/FBAppInviteDialogModule;

    .line 41
    invoke-direct {p0, p2}, Lcom/facebook/reactnative/androidsdk/ReactNativeFacebookSDKCallback;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/facebook/share/widget/AppInviteDialog$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/facebook/share/widget/AppInviteDialog$Result;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/FBAppInviteDialogModule$AppInviteDialogCallback;->mPromise:Lcom/facebook/react/bridge/Promise;

    if-eqz v1, :cond_0

    .line 47
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 48
    .local v0, "inviteResult":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "data"

    invoke-virtual {p1}, Lcom/facebook/share/widget/AppInviteDialog$Result;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/react/bridge/Arguments;->fromBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 49
    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/FBAppInviteDialogModule$AppInviteDialogCallback;->mPromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/reactnative/androidsdk/FBAppInviteDialogModule$AppInviteDialogCallback;->mPromise:Lcom/facebook/react/bridge/Promise;

    .line 52
    .end local v0    # "inviteResult":Lcom/facebook/react/bridge/WritableMap;
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/facebook/share/widget/AppInviteDialog$Result;

    invoke-virtual {p0, p1}, Lcom/facebook/reactnative/androidsdk/FBAppInviteDialogModule$AppInviteDialogCallback;->onSuccess(Lcom/facebook/share/widget/AppInviteDialog$Result;)V

    return-void
.end method
