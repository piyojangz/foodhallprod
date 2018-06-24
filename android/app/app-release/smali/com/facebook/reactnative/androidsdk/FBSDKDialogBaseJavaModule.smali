.class public abstract Lcom/facebook/reactnative/androidsdk/FBSDKDialogBaseJavaModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "FBSDKDialogBaseJavaModule.java"


# instance fields
.field private mCallbackManager:Lcom/facebook/CallbackManager;


# direct methods
.method protected constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/CallbackManager;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "callbackManager"    # Lcom/facebook/CallbackManager;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 39
    iput-object p2, p0, Lcom/facebook/reactnative/androidsdk/FBSDKDialogBaseJavaModule;->mCallbackManager:Lcom/facebook/CallbackManager;

    .line 40
    return-void
.end method


# virtual methods
.method protected getCallbackManager()Lcom/facebook/CallbackManager;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/reactnative/androidsdk/FBSDKDialogBaseJavaModule;->mCallbackManager:Lcom/facebook/CallbackManager;

    return-object v0
.end method
