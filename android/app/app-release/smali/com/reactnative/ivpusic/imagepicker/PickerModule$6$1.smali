.class Lcom/reactnative/ivpusic/imagepicker/PickerModule$6$1;
.super Ljava/lang/Object;
.source "PickerModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;


# direct methods
.method constructor <init>(Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$6$1;->this$1:Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)V
    .locals 8
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 458
    const/4 v4, 0x0

    aget-object v3, p1, v4

    check-cast v3, Ljava/lang/String;

    .line 461
    .local v3, "videoPath":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$6$1;->this$1:Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;

    iget-object v4, v4, Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;->this$0:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    invoke-static {v4, v3}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->access$500(Lcom/reactnative/ivpusic/imagepicker/PickerModule;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 463
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v2}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 464
    .local v2, "video":Lcom/facebook/react/bridge/WritableMap;
    const-string v4, "width"

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 465
    const-string v4, "height"

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 466
    const-string v4, "mime"

    iget-object v5, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$6$1;->this$1:Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;

    iget-object v5, v5, Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;->val$mime:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v4, "size"

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 468
    const-string v4, "path"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$6$1;->this$1:Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;

    iget-object v4, v4, Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;->this$0:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    invoke-static {v4}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->access$600(Lcom/reactnative/ivpusic/imagepicker/PickerModule;)Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifySuccess(Lcom/facebook/react/bridge/WritableMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "video":Lcom/facebook/react/bridge/WritableMap;
    :goto_0
    return-void

    .line 471
    :catch_0
    move-exception v1

    .line 472
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$6$1;->this$1:Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;

    iget-object v4, v4, Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;->this$0:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    invoke-static {v4}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->access$600(Lcom/reactnative/ivpusic/imagepicker/PickerModule;)Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    move-result-object v4

    const-string v5, "E_NO_IMAGE_DATA_FOUND"

    invoke-virtual {v4, v5, v1}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifyProblem(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
