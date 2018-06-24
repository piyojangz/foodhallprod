.class Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestCallback;
.super Ljava/lang/Object;
.source "FBGraphRequestModule.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GraphRequestCallback"
.end annotation


# instance fields
.field private mBatchID:I

.field private mIndex:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;


# direct methods
.method public constructor <init>(Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;II)V
    .locals 1
    .param p2, "index"    # I
    .param p3, "batchID"    # I

    .prologue
    .line 81
    iput-object p1, p0, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestCallback;->this$0:Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestCallback;->mIndex:Ljava/lang/String;

    .line 83
    iput p3, p0, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestCallback;->mBatchID:I

    .line 84
    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 88
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 89
    .local v0, "responseArray":Lcom/facebook/react/bridge/WritableArray;
    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestCallback;->this$0:Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;->access$100(Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;Lcom/facebook/FacebookRequestError;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 90
    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestCallback;->this$0:Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;

    invoke-static {v1, p1}, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;->access$200(Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;Lcom/facebook/GraphResponse;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 91
    iget-object v1, p0, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestCallback;->this$0:Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;

    invoke-static {v1}, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;->access$000(Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestCallback;->mBatchID:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/WritableMap;

    iget-object v2, p0, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestCallback;->mIndex:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 92
    return-void
.end method
