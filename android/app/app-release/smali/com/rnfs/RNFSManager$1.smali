.class Lcom/rnfs/RNFSManager$1;
.super Ljava/lang/Object;
.source "RNFSManager.java"

# interfaces
.implements Lcom/rnfs/DownloadParams$OnTaskCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnfs/RNFSManager;->downloadFile(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnfs/RNFSManager;

.field final synthetic val$jobId:I

.field final synthetic val$options:Lcom/facebook/react/bridge/ReadableMap;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/rnfs/RNFSManager;ILcom/facebook/react/bridge/Promise;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rnfs/RNFSManager;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/rnfs/RNFSManager$1;->this$0:Lcom/rnfs/RNFSManager;

    iput p2, p0, Lcom/rnfs/RNFSManager$1;->val$jobId:I

    iput-object p3, p0, Lcom/rnfs/RNFSManager$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p4, p0, Lcom/rnfs/RNFSManager$1;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCompleted(Lcom/rnfs/DownloadResult;)V
    .locals 5
    .param p1, "res"    # Lcom/rnfs/DownloadResult;

    .prologue
    .line 523
    iget-object v1, p1, Lcom/rnfs/DownloadResult;->exception:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 524
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 526
    .local v0, "infoMap":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "jobId"

    iget v2, p0, Lcom/rnfs/RNFSManager$1;->val$jobId:I

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 527
    const-string v1, "statusCode"

    iget v2, p1, Lcom/rnfs/DownloadResult;->statusCode:I

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 528
    const-string v1, "bytesWritten"

    iget v2, p1, Lcom/rnfs/DownloadResult;->bytesWritten:I

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 530
    iget-object v1, p0, Lcom/rnfs/RNFSManager$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 534
    .end local v0    # "infoMap":Lcom/facebook/react/bridge/WritableMap;
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v1, p0, Lcom/rnfs/RNFSManager$1;->this$0:Lcom/rnfs/RNFSManager;

    iget-object v2, p0, Lcom/rnfs/RNFSManager$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v3, p0, Lcom/rnfs/RNFSManager$1;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "toFile"

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/rnfs/DownloadResult;->exception:Ljava/lang/Exception;

    invoke-static {v1, v2, v3, v4}, Lcom/rnfs/RNFSManager;->access$000(Lcom/rnfs/RNFSManager;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
