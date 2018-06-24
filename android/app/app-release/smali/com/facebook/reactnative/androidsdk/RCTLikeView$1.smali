.class Lcom/facebook/reactnative/androidsdk/RCTLikeView$1;
.super Ljava/lang/Object;
.source "RCTLikeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/reactnative/androidsdk/RCTLikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/reactnative/androidsdk/RCTLikeView;


# direct methods
.method constructor <init>(Lcom/facebook/reactnative/androidsdk/RCTLikeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/reactnative/androidsdk/RCTLikeView;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/facebook/reactnative/androidsdk/RCTLikeView$1;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLikeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 36
    iget-object v0, p0, Lcom/facebook/reactnative/androidsdk/RCTLikeView$1;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLikeView;

    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/RCTLikeView$1;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLikeView;

    .line 37
    invoke-virtual {v1}, Lcom/facebook/reactnative/androidsdk/RCTLikeView;->getWidth()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/reactnative/androidsdk/RCTLikeView$1;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLikeView;

    .line 38
    invoke-virtual {v2}, Lcom/facebook/reactnative/androidsdk/RCTLikeView;->getHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/facebook/reactnative/androidsdk/RCTLikeView;->measure(II)V

    .line 39
    iget-object v0, p0, Lcom/facebook/reactnative/androidsdk/RCTLikeView$1;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLikeView;

    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/RCTLikeView$1;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLikeView;

    invoke-virtual {v1}, Lcom/facebook/reactnative/androidsdk/RCTLikeView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/reactnative/androidsdk/RCTLikeView$1;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLikeView;

    invoke-virtual {v2}, Lcom/facebook/reactnative/androidsdk/RCTLikeView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/reactnative/androidsdk/RCTLikeView$1;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLikeView;

    invoke-virtual {v3}, Lcom/facebook/reactnative/androidsdk/RCTLikeView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/reactnative/androidsdk/RCTLikeView$1;->this$0:Lcom/facebook/reactnative/androidsdk/RCTLikeView;

    invoke-virtual {v4}, Lcom/facebook/reactnative/androidsdk/RCTLikeView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/reactnative/androidsdk/RCTLikeView;->layout(IIII)V

    .line 40
    return-void
.end method
