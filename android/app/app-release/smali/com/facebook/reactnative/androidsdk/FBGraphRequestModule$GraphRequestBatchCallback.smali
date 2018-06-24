.class Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestBatchCallback;
.super Ljava/lang/Object;
.source "FBGraphRequestModule.java"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GraphRequestBatchCallback"
.end annotation


# instance fields
.field private mBatchID:I

.field private mCallback:Lcom/facebook/react/bridge/Callback;

.field final synthetic this$0:Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;


# direct methods
.method public constructor <init>(Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;ILcom/facebook/react/bridge/Callback;)V
    .locals 0
    .param p2, "batchID"    # I
    .param p3, "callback"    # Lcom/facebook/react/bridge/Callback;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestBatchCallback;->this$0:Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p2, p0, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestBatchCallback;->mBatchID:I

    .line 64
    iput-object p3, p0, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestBatchCallback;->mCallback:Lcom/facebook/react/bridge/Callback;

    .line 65
    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .locals 6
    .param p1, "batch"    # Lcom/facebook/GraphRequestBatch;

    .prologue
    .line 69
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 70
    .local v0, "result":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "result"

    const-string v2, "batch finished executing or timed out"

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestBatchCallback;->mCallback:Lcom/facebook/react/bridge/Callback;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestBatchCallback;->this$0:Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;

    invoke-static {v4}, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;->access$000(Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestBatchCallback;->mBatchID:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 72
    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestBatchCallback;->this$0:Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;

    invoke-static {v1}, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;->access$000(Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestBatchCallback;->mBatchID:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 73
    return-void
.end method
