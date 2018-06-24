.class public Lcom/facebook/reactnative/androidsdk/RCTLikeView;
.super Lcom/facebook/share/widget/LikeView;
.source "RCTLikeView.java"


# instance fields
.field private final measureAndLayout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lcom/facebook/reactnative/androidsdk/RCTLikeView$1;

    invoke-direct {v0, p0}, Lcom/facebook/reactnative/androidsdk/RCTLikeView$1;-><init>(Lcom/facebook/reactnative/androidsdk/RCTLikeView;)V

    iput-object v0, p0, Lcom/facebook/reactnative/androidsdk/RCTLikeView;->measureAndLayout:Ljava/lang/Runnable;

    .line 31
    return-void
.end method


# virtual methods
.method public requestLayout()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/facebook/share/widget/LikeView;->requestLayout()V

    .line 46
    iget-object v0, p0, Lcom/facebook/reactnative/androidsdk/RCTLikeView;->measureAndLayout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/facebook/reactnative/androidsdk/RCTLikeView;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
.end method
