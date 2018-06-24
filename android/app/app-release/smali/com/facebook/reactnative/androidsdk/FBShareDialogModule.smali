.class public Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;
.super Lcom/facebook/reactnative/androidsdk/FBSDKDialogBaseJavaModule;
.source "FBShareDialogModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/reactnative/androidsdk/FBShareDialogModule$ShareDialogCallback;
    }
.end annotation


# instance fields
.field private mShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

.field private mShouldFailOnError:Z


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/CallbackManager;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "callbackManager"    # Lcom/facebook/CallbackManager;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/reactnative/androidsdk/FBSDKDialogBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/CallbackManager;)V

    .line 59
    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "shareContent"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 69
    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 70
    .local v0, "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->mShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    if-nez v1, :cond_0

    .line 72
    invoke-static {p1}, Lcom/facebook/reactnative/androidsdk/Utility;->buildShareContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Object;)Z

    move-result v1

    .line 71
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 70
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 78
    .end local v0    # "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    :goto_1
    return-void

    .line 73
    .restart local v0    # "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    :cond_0
    invoke-static {p1}, Lcom/facebook/reactnative/androidsdk/Utility;->buildShareContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->mShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/ShareDialog;->canShow(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)Z

    move-result v1

    goto :goto_0

    .line 76
    .end local v0    # "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    :cond_1
    const-string v1, "No current activity."

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "FBShareDialog"

    return-object v0
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/widget/ShareDialog$Mode;->valueOf(Ljava/lang/String;)Lcom/facebook/share/widget/ShareDialog$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->mShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    .line 99
    return-void
.end method

.method public setShouldFailOnError(Z)V
    .locals 0
    .param p1, "shouldFailOnError"    # Z
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->mShouldFailOnError:Z

    .line 104
    return-void
.end method

.method public show(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "shareContent"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 83
    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 84
    .local v0, "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->getCallbackManager()Lcom/facebook/CallbackManager;

    move-result-object v1

    new-instance v2, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule$ShareDialogCallback;

    invoke-direct {v2, p0, p2}, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule$ShareDialogCallback;-><init>(Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 85
    iget-boolean v1, p0, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->mShouldFailOnError:Z

    invoke-virtual {v0, v1}, Lcom/facebook/share/widget/ShareDialog;->setShouldFailOnDataError(Z)V

    .line 86
    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->mShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    if-eqz v1, :cond_0

    .line 87
    invoke-static {p1}, Lcom/facebook/reactnative/androidsdk/Utility;->buildShareContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/reactnative/androidsdk/FBShareDialogModule;->mShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/ShareDialog;->show(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    .line 94
    .end local v0    # "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    :goto_0
    return-void

    .line 89
    .restart local v0    # "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    :cond_0
    invoke-static {p1}, Lcom/facebook/reactnative/androidsdk/Utility;->buildShareContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    .end local v0    # "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    :cond_1
    const-string v1, "No current activity."

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;)V

    goto :goto_0
.end method
