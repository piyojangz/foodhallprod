.class final Lcom/facebook/share/internal/ShareInternalUtility$3;
.super Ljava/lang/Object;
.source "ShareInternalUtility.java"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/ShareInternalUtility;->registerSharerCallback(ILcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/facebook/FacebookCallback;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(ILcom/facebook/FacebookCallback;)V
    .locals 0

    .prologue
    .line 255
    iput p1, p0, Lcom/facebook/share/internal/ShareInternalUtility$3;->val$requestCode:I

    iput-object p2, p0, Lcom/facebook/share/internal/ShareInternalUtility$3;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)Z
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 258
    iget v0, p0, Lcom/facebook/share/internal/ShareInternalUtility$3;->val$requestCode:I

    iget-object v1, p0, Lcom/facebook/share/internal/ShareInternalUtility$3;->val$callback:Lcom/facebook/FacebookCallback;

    .line 262
    invoke-static {v1}, Lcom/facebook/share/internal/ShareInternalUtility;->getShareResultProcessor(Lcom/facebook/FacebookCallback;)Lcom/facebook/share/internal/ResultProcessor;

    move-result-object v1

    .line 258
    invoke-static {v0, p1, p2, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->handleActivityResult(IILandroid/content/Intent;Lcom/facebook/share/internal/ResultProcessor;)Z

    move-result v0

    return v0
.end method
