.class public Lcom/facebook/reactnative/androidsdk/FBAppInviteDialogModule;
.super Lcom/facebook/reactnative/androidsdk/FBSDKDialogBaseJavaModule;
.source "FBAppInviteDialogModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/reactnative/androidsdk/FBAppInviteDialogModule$AppInviteDialogCallback;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/CallbackManager;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "callbackManager"    # Lcom/facebook/CallbackManager;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/facebook/reactnative/androidsdk/FBSDKDialogBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/CallbackManager;)V

    .line 57
    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcom/facebook/share/widget/AppInviteDialog;->canShow()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "FBAppInviteDialog"

    return-object v0
.end method

.method public show(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .param p1, "appInviteContentMap"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/FBAppInviteDialogModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 81
    new-instance v1, Lcom/facebook/share/widget/AppInviteDialog;

    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/FBAppInviteDialogModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/share/widget/AppInviteDialog;-><init>(Landroid/app/Activity;)V

    .line 82
    .local v1, "appInviteDialog":Lcom/facebook/share/widget/AppInviteDialog;
    invoke-static {p1}, Lcom/facebook/reactnative/androidsdk/Utility;->buildAppInviteContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/AppInviteContent;

    move-result-object v0

    .line 83
    .local v0, "appInviteContent":Lcom/facebook/share/model/AppInviteContent;
    invoke-virtual {p0}, Lcom/facebook/reactnative/androidsdk/FBAppInviteDialogModule;->getCallbackManager()Lcom/facebook/CallbackManager;

    move-result-object v2

    new-instance v3, Lcom/facebook/reactnative/androidsdk/FBAppInviteDialogModule$AppInviteDialogCallback;

    invoke-direct {v3, p0, p2}, Lcom/facebook/reactnative/androidsdk/FBAppInviteDialogModule$AppInviteDialogCallback;-><init>(Lcom/facebook/reactnative/androidsdk/FBAppInviteDialogModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/share/widget/AppInviteDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 84
    invoke-virtual {v1, v0}, Lcom/facebook/share/widget/AppInviteDialog;->show(Ljava/lang/Object;)V

    .line 88
    .end local v0    # "appInviteContent":Lcom/facebook/share/model/AppInviteContent;
    .end local v1    # "appInviteDialog":Lcom/facebook/share/widget/AppInviteDialog;
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v2, "No current activity."

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;)V

    goto :goto_0
.end method
