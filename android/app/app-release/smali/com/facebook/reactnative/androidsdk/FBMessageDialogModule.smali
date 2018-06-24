.class public Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule;
.super Lcom/facebook/reactnative/androidsdk/FBSDKDialogBaseJavaModule;
.source "FBMessageDialogModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule$MessageDialogCallback;
    }
.end annotation


# instance fields
.field private mShouldFailOnDataError:Z


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/CallbackManager;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "callbackManager"    # Lcom/facebook/CallbackManager;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/facebook/reactnative/androidsdk/FBSDKDialogBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/CallbackManager;)V

    .line 62
    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "shareContentMap"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 77
    invoke-static {p1}, Lcom/facebook/reactnative/androidsdk/Utility;->buildShareContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    .line 78
    .local v1, "shareContent":Lcom/facebook/share/model/ShareContent;
    new-instance v0, Lcom/facebook/share/widget/MessageDialog;

    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/share/widget/MessageDialog;-><init>(Landroid/app/Activity;)V

    .line 79
    .local v0, "messageDialog":Lcom/facebook/share/widget/MessageDialog;
    invoke-virtual {v0, v1}, Lcom/facebook/share/widget/MessageDialog;->canShow(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 83
    .end local v0    # "messageDialog":Lcom/facebook/share/widget/MessageDialog;
    .end local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v2, "No current activity."

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "FBMessageDialog"

    return-object v0
.end method

.method public setShouldFailOnDataError(Z)V
    .locals 0
    .param p1, "shouldFailOnDataError"    # Z
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule;->mShouldFailOnDataError:Z

    .line 111
    return-void
.end method

.method public show(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .param p1, "shareContentMap"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 93
    invoke-static {p1}, Lcom/facebook/reactnative/androidsdk/Utility;->buildShareContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    .line 94
    .local v1, "shareContent":Lcom/facebook/share/model/ShareContent;
    new-instance v0, Lcom/facebook/share/widget/MessageDialog;

    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/share/widget/MessageDialog;-><init>(Landroid/app/Activity;)V

    .line 95
    .local v0, "messageDialog":Lcom/facebook/share/widget/MessageDialog;
    iget-boolean v2, p0, Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule;->mShouldFailOnDataError:Z

    invoke-virtual {v0, v2}, Lcom/facebook/share/widget/MessageDialog;->setShouldFailOnDataError(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule;->getCallbackManager()Lcom/facebook/CallbackManager;

    move-result-object v2

    new-instance v3, Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule$MessageDialogCallback;

    invoke-direct {v3, p0, p2}, Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule$MessageDialogCallback;-><init>(Lcom/facebook/reactnative/androidsdk/FBMessageDialogModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v2, v3}, Lcom/facebook/share/widget/MessageDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/facebook/share/widget/MessageDialog;->show(Ljava/lang/Object;)V

    .line 101
    .end local v0    # "messageDialog":Lcom/facebook/share/widget/MessageDialog;
    .end local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v2, "No current activity."

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;)V

    goto :goto_0
.end method
