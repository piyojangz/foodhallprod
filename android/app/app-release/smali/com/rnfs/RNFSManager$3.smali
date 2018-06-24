.class Lcom/rnfs/RNFSManager$3;
.super Ljava/lang/Object;
.source "RNFSManager.java"

# interfaces
.implements Lcom/rnfs/DownloadParams$OnDownloadProgress;


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


# direct methods
.method constructor <init>(Lcom/rnfs/RNFSManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/rnfs/RNFSManager;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/rnfs/RNFSManager$3;->this$0:Lcom/rnfs/RNFSManager;

    iput p2, p0, Lcom/rnfs/RNFSManager$3;->val$jobId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(II)V
    .locals 5
    .param p1, "contentLength"    # I
    .param p2, "bytesWritten"    # I

    .prologue
    .line 558
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 560
    .local v0, "data":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "jobId"

    iget v2, p0, Lcom/rnfs/RNFSManager$3;->val$jobId:I

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 561
    const-string v1, "contentLength"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 562
    const-string v1, "bytesWritten"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 564
    iget-object v1, p0, Lcom/rnfs/RNFSManager$3;->this$0:Lcom/rnfs/RNFSManager;

    iget-object v2, p0, Lcom/rnfs/RNFSManager$3;->this$0:Lcom/rnfs/RNFSManager;

    invoke-static {v2}, Lcom/rnfs/RNFSManager;->access$300(Lcom/rnfs/RNFSManager;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadProgress-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/rnfs/RNFSManager$3;->val$jobId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/rnfs/RNFSManager;->access$200(Lcom/rnfs/RNFSManager;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 565
    return-void
.end method
