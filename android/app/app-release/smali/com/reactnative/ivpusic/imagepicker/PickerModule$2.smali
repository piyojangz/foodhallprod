.class Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;
.super Ljava/lang/Object;
.source "PickerModule.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cleanSingle(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

.field final synthetic val$module:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

.field final synthetic val$pathToDelete:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/reactnative/ivpusic/imagepicker/PickerModule;Ljava/lang/String;Lcom/reactnative/ivpusic/imagepicker/PickerModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p1, "this$0"    # Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;->this$0:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    iput-object p2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;->val$pathToDelete:Ljava/lang/String;

    iput-object p3, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;->val$module:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    iput-object p4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 187
    :try_start_0
    iget-object v3, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;->val$pathToDelete:Ljava/lang/String;

    .line 188
    .local v3, "path":Ljava/lang/String;
    const-string v2, "file://"

    .line 189
    .local v2, "filePrefix":Ljava/lang/String;
    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    const-string v4, "file://"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 193
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File does not exist. Path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filePrefix":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 199
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    iget-object v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v5, "E_ERROR_WHILE_CLEANING_FILES"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v7

    .line 196
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "filePrefix":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;->val$module:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    invoke-static {v4, v1}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->access$100(Lcom/reactnative/ivpusic/imagepicker/PickerModule;Ljava/io/File;)V

    .line 197
    iget-object v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
