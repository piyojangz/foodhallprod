.class Lcom/reactnative/ivpusic/imagepicker/PickerModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "PickerModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;


# static fields
.field private static final CAMERA_PICKER_REQUEST:I = 0xeeb7

.field private static final E_ACTIVITY_DOES_NOT_EXIST:Ljava/lang/String; = "E_ACTIVITY_DOES_NOT_EXIST"

.field private static final E_CALLBACK_ERROR:Ljava/lang/String; = "E_CALLBACK_ERROR"

.field private static final E_CAMERA_IS_NOT_AVAILABLE:Ljava/lang/String; = "E_CAMERA_IS_NOT_AVAILABLE"

.field private static final E_CANNOT_LAUNCH_CAMERA:Ljava/lang/String; = "E_CANNOT_LAUNCH_CAMERA"

.field private static final E_ERROR_WHILE_CLEANING_FILES:Ljava/lang/String; = "E_ERROR_WHILE_CLEANING_FILES"

.field private static final E_FAILED_TO_OPEN_CAMERA:Ljava/lang/String; = "E_FAILED_TO_OPEN_CAMERA"

.field private static final E_FAILED_TO_SHOW_PICKER:Ljava/lang/String; = "E_FAILED_TO_SHOW_PICKER"

.field private static final E_NO_IMAGE_DATA_FOUND:Ljava/lang/String; = "E_NO_IMAGE_DATA_FOUND"

.field private static final E_PERMISSIONS_MISSING:Ljava/lang/String; = "E_PERMISSION_MISSING"

.field private static final E_PICKER_CANCELLED_KEY:Ljava/lang/String; = "E_PICKER_CANCELLED"

.field private static final E_PICKER_CANCELLED_MSG:Ljava/lang/String; = "User cancelled image selection"

.field private static final IMAGE_PICKER_REQUEST:I = 0xeeb6


# instance fields
.field private final DEFAULT_TINT:Ljava/lang/String;

.field private final DEFAULT_WIDGET_COLOR:Ljava/lang/String;

.field private compression:Lcom/reactnative/ivpusic/imagepicker/Compression;

.field private cropperActiveWidgetColor:Ljava/lang/String;

.field private cropperCircleOverlay:Z

.field private cropperStatusBarColor:Ljava/lang/String;

.field private cropperToolbarColor:Ljava/lang/String;

.field private cropping:Z

.field private enableRotationGesture:Z

.field private height:I

.field private hideBottomControls:Z

.field private includeBase64:Z

.field private mCameraCaptureURI:Landroid/net/Uri;

.field private mCurrentPhotoPath:Ljava/lang/String;

.field private mediaType:Ljava/lang/String;

.field private multiple:Z

.field private options:Lcom/facebook/react/bridge/ReadableMap;

.field private resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

.field private showCropGuidelines:Z

.field private width:I


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 3
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    const/16 v2, 0xc8

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 67
    const-string v0, "any"

    iput-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->mediaType:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->multiple:Z

    .line 69
    iput-boolean v1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->includeBase64:Z

    .line 70
    iput-boolean v1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropping:Z

    .line 71
    iput-boolean v1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropperCircleOverlay:Z

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->showCropGuidelines:Z

    .line 73
    iput-boolean v1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->hideBottomControls:Z

    .line 74
    iput-boolean v1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->enableRotationGesture:Z

    .line 79
    const-string v0, "#424242"

    iput-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->DEFAULT_TINT:Ljava/lang/String;

    .line 80
    const-string v0, "#424242"

    iput-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropperActiveWidgetColor:Ljava/lang/String;

    .line 81
    const-string v0, "#424242"

    iput-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropperStatusBarColor:Ljava/lang/String;

    .line 82
    const-string v0, "#424242"

    iput-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropperToolbarColor:Ljava/lang/String;

    .line 85
    const-string v0, "#03A9F4"

    iput-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->DEFAULT_WIDGET_COLOR:Ljava/lang/String;

    .line 86
    iput v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->width:I

    .line 87
    iput v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->height:I

    .line 92
    new-instance v0, Lcom/reactnative/ivpusic/imagepicker/Compression;

    invoke-direct {v0}, Lcom/reactnative/ivpusic/imagepicker/Compression;-><init>()V

    iput-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->compression:Lcom/reactnative/ivpusic/imagepicker/Compression;

    .line 96
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/reactnative/ivpusic/imagepicker/PickerModule;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/reactnative/ivpusic/imagepicker/PickerModule;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->getTmpDir(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/reactnative/ivpusic/imagepicker/PickerModule;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/reactnative/ivpusic/imagepicker/PickerModule;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->deleteRecursive(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$200(Lcom/reactnative/ivpusic/imagepicker/PickerModule;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/reactnative/ivpusic/imagepicker/PickerModule;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->initiateCamera(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/reactnative/ivpusic/imagepicker/PickerModule;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/reactnative/ivpusic/imagepicker/PickerModule;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->initiatePicker(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/reactnative/ivpusic/imagepicker/PickerModule;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 1
    .param p0, "x0"    # Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->options:Lcom/facebook/react/bridge/ReadableMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/reactnative/ivpusic/imagepicker/PickerModule;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/reactnative/ivpusic/imagepicker/PickerModule;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->validateVideo(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/reactnative/ivpusic/imagepicker/PickerModule;)Lcom/reactnative/ivpusic/imagepicker/ResultCollector;
    .locals 1
    .param p0, "x0"    # Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    return-object v0
.end method

.method static synthetic access$700(Lcom/reactnative/ivpusic/imagepicker/PickerModule;)Lcom/reactnative/ivpusic/imagepicker/Compression;
    .locals 1
    .param p0, "x0"    # Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->compression:Lcom/reactnative/ivpusic/imagepicker/Compression;

    return-object v0
.end method

.method private cameraPickerResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 631
    if-nez p3, :cond_1

    .line 632
    iget-object v3, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    const-string v4, "E_PICKER_CANCELLED"

    const-string v5, "User cancelled image selection"

    invoke-virtual {v3, v4, v5}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifyProblem(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    const/4 v3, -0x1

    if-ne p3, v3, :cond_0

    .line 634
    iget-object v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->mCameraCaptureURI:Landroid/net/Uri;

    .line 636
    .local v2, "uri":Landroid/net/Uri;
    if-nez v2, :cond_2

    .line 637
    iget-object v3, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    const-string v4, "E_NO_IMAGE_DATA_FOUND"

    const-string v5, "Cannot resolve image url"

    invoke-virtual {v3, v4, v5}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifyProblem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 641
    :cond_2
    iget-boolean v3, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropping:Z

    if-eqz v3, :cond_3

    .line 642
    new-instance v1, Lcom/yalantis/ucrop/UCrop$Options;

    invoke-direct {v1}, Lcom/yalantis/ucrop/UCrop$Options;-><init>()V

    .line 643
    .local v1, "options":Lcom/yalantis/ucrop/UCrop$Options;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v3}, Lcom/yalantis/ucrop/UCrop$Options;->setCompressionFormat(Landroid/graphics/Bitmap$CompressFormat;)V

    .line 644
    invoke-direct {p0, p1, v2}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->startCropping(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 647
    .end local v1    # "options":Lcom/yalantis/ucrop/UCrop$Options;
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->setWaitCount(I)V

    .line 648
    iget-object v3, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    const/4 v4, 0x1

    invoke-direct {p0, p1, v2, v4}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->getSelection(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifySuccess(Lcom/facebook/react/bridge/WritableMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    const-string v4, "E_NO_IMAGE_DATA_FOUND"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifyProblem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private configureCropperColors(Lcom/yalantis/ucrop/UCrop$Options;)V
    .locals 4
    .param p1, "options"    # Lcom/yalantis/ucrop/UCrop$Options;

    .prologue
    .line 546
    iget-object v3, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropperActiveWidgetColor:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 547
    .local v0, "activeWidgetColor":I
    iget-object v3, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropperToolbarColor:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 548
    .local v2, "toolbarColor":I
    iget-object v3, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropperStatusBarColor:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 549
    .local v1, "statusBarColor":I
    invoke-virtual {p1, v2}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarColor(I)V

    .line 550
    invoke-virtual {p1, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setStatusBarColor(I)V

    .line 551
    const-string v3, "#424242"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 556
    const-string v3, "#03A9F4"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/yalantis/ucrop/UCrop$Options;->setActiveWidgetColor(I)V

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    invoke-virtual {p1, v0}, Lcom/yalantis/ucrop/UCrop$Options;->setActiveWidgetColor(I)V

    goto :goto_0
.end method

.method private createImageFile()Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, "imageFileName":Ljava/lang/String;
    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 700
    .local v2, "path":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 701
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 704
    :cond_0
    const-string v3, ".jpg"

    invoke-static {v1, v3, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 707
    .local v0, "image":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->mCurrentPhotoPath:Ljava/lang/String;

    .line 709
    return-object v0
.end method

.method private croppingResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 657
    if-eqz p4, :cond_1

    .line 658
    invoke-static {p4}, Lcom/yalantis/ucrop/UCrop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    .line 659
    .local v1, "resultUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 661
    :try_start_0
    iget-object v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->setWaitCount(I)V

    .line 662
    iget-object v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v3}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->getSelection(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifySuccess(Lcom/facebook/react/bridge/WritableMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    .end local v1    # "resultUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 663
    .restart local v1    # "resultUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 664
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    const-string v3, "E_NO_IMAGE_DATA_FOUND"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifyProblem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 667
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    const-string v3, "E_NO_IMAGE_DATA_FOUND"

    const-string v4, "Cannot find image data"

    invoke-virtual {v2, v3, v4}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifyProblem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 670
    .end local v1    # "resultUri":Landroid/net/Uri;
    :cond_1
    iget-object v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    const-string v3, "E_PICKER_CANCELLED"

    const-string v4, "User cancelled image selection"

    invoke-virtual {v2, v3, v4}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifyProblem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteRecursive(Ljava/io/File;)V
    .locals 4
    .param p1, "fileOrDirectory"    # Ljava/io/File;

    .prologue
    .line 129
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 131
    .local v0, "child":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->deleteRecursive(Ljava/io/File;)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "child":Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 136
    return-void
.end method

.method private getAsyncSelection(Landroid/app/Activity;Landroid/net/Uri;Z)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "isCamera"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 421
    invoke-direct {p0, p1, p2, p3}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resolveRealPath(Landroid/app/Activity;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 423
    :cond_0
    iget-object v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    const-string v3, "E_NO_IMAGE_DATA_FOUND"

    const-string v4, "Cannot resolve asset path."

    invoke-virtual {v2, v3, v4}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifyProblem(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :goto_0
    return-void

    .line 427
    :cond_1
    invoke-static {v1}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "mime":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "video/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 429
    invoke-direct {p0, p1, v1, v0}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->getVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_2
    iget-object v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    invoke-direct {p0, p1, v1}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->getImage(Landroid/app/Activity;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifySuccess(Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0
.end method

.method private getBase64StringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "absoluteFilePath"    # Ljava/lang/String;

    .prologue
    .line 378
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 385
    .local v4, "inputStream":Ljava/io/InputStream;
    const/16 v6, 0x2000

    new-array v0, v6, [B

    .line 387
    .local v0, "buffer":[B
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 390
    .local v5, "output":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "bytesRead":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 391
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 393
    .end local v2    # "bytesRead":I
    :catch_0
    move-exception v3

    .line 394
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 397
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 398
    .local v1, "bytes":[B
    const/4 v6, 0x2

    invoke-static {v1, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .end local v0    # "buffer":[B
    .end local v1    # "bytes":[B
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "output":Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-object v6

    .line 379
    :catch_1
    move-exception v3

    .line 380
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 381
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private getImage(Landroid/app/Activity;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 519
    new-instance v2, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v2}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 521
    .local v2, "image":Lcom/facebook/react/bridge/WritableMap;
    const-string v4, "http://"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "https://"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 522
    :cond_0
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Cannot select remote files"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 524
    :cond_1
    invoke-direct {p0, p2}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->validateImage(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    .line 528
    iget-object v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->compression:Lcom/reactnative/ivpusic/imagepicker/Compression;

    iget-object v5, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {v4, p1, v5, p2}, Lcom/reactnative/ivpusic/imagepicker/Compression;->compressImage(Landroid/app/Activity;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 529
    .local v0, "compressedImage":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "compressedImagePath":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->validateImage(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 532
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const-string v4, "path"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v4, "width"

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 534
    const-string v4, "height"

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 535
    const-string v4, "mime"

    iget-object v5, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v4, "size"

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 538
    iget-boolean v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->includeBase64:Z

    if-eqz v4, :cond_2

    .line 539
    const-string v4, "data"

    invoke-direct {p0, v1}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->getBase64StringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_2
    return-object v2
.end method

.method private static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 402
    const/4 v1, 0x0

    .line 403
    .local v1, "type":Ljava/lang/String;
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 405
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    :cond_0
    return-object v1
.end method

.method private getSelection(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/facebook/react/bridge/WritableMap;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "isCamera"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 412
    invoke-direct {p0, p1, p2, p3}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resolveRealPath(Landroid/app/Activity;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Cannot resolve asset path."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 417
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->getImage(Landroid/app/Activity;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    return-object v1
.end method

.method private getTmpDir(Landroid/app/Activity;)Ljava/lang/String;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/react-native-image-crop-picker"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "tmpDir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 103
    .local v0, "created":Ljava/lang/Boolean;
    return-object v1
.end method

.method private getVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 449
    invoke-direct {p0, p2}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->validateVideo(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->getTmpDir(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, "compressedVideoPath":Ljava/lang/String;
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/reactnative/ivpusic/imagepicker/PickerModule$6;-><init>(Lcom/reactnative/ivpusic/imagepicker/PickerModule;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 483
    invoke-virtual {v6}, Ljava/lang/Thread;->run()V

    .line 484
    return-void
.end method

.method private imagePickerResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 588
    if-nez p3, :cond_1

    .line 589
    iget-object v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    const-string v5, "E_PICKER_CANCELLED"

    const-string v6, "User cancelled image selection"

    invoke-virtual {v4, v5, v6}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifyProblem(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    const/4 v4, -0x1

    if-ne p3, v4, :cond_0

    .line 591
    iget-boolean v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->multiple:Z

    if-eqz v4, :cond_3

    .line 592
    invoke-virtual {p4}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 596
    .local v0, "clipData":Landroid/content/ClipData;
    if-nez v0, :cond_2

    .line 597
    :try_start_0
    iget-object v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->setWaitCount(I)V

    .line 598
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->getAsyncSelection(Landroid/app/Activity;Landroid/net/Uri;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 605
    :catch_0
    move-exception v1

    .line 606
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    const-string v5, "E_NO_IMAGE_DATA_FOUND"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifyProblem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 600
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->setWaitCount(I)V

    .line 601
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 602
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->getAsyncSelection(Landroid/app/Activity;Landroid/net/Uri;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 601
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 610
    .end local v0    # "clipData":Landroid/content/ClipData;
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 612
    .local v3, "uri":Landroid/net/Uri;
    if-nez v3, :cond_4

    .line 613
    iget-object v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    const-string v5, "E_NO_IMAGE_DATA_FOUND"

    const-string v6, "Cannot resolve image url"

    invoke-virtual {v4, v5, v6}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifyProblem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_4
    iget-boolean v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropping:Z

    if-eqz v4, :cond_5

    .line 618
    invoke-direct {p0, p1, v3}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->startCropping(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 621
    :cond_5
    const/4 v4, 0x0

    :try_start_2
    invoke-direct {p0, p1, v3, v4}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->getAsyncSelection(Landroid/app/Activity;Landroid/net/Uri;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 622
    :catch_1
    move-exception v1

    .line 623
    .restart local v1    # "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    const-string v5, "E_NO_IMAGE_DATA_FOUND"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifyProblem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initiateCamera(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 285
    const v3, 0xeeb7

    .line 286
    .local v3, "requestCode":I
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, "cameraIntent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->createImageFile()Ljava/io/File;

    move-result-object v2

    .line 290
    .local v2, "imageFile":Ljava/io/File;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_0

    .line 291
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->mCameraCaptureURI:Landroid/net/Uri;

    .line 298
    :goto_0
    const-string v4, "output"

    iget-object v5, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->mCameraCaptureURI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_1

    .line 301
    iget-object v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    const-string v5, "E_CANNOT_LAUNCH_CAMERA"

    const-string v6, "Cannot launch camera"

    invoke-virtual {v4, v5, v6}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifyProblem(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .end local v0    # "cameraIntent":Landroid/content/Intent;
    .end local v2    # "imageFile":Ljava/io/File;
    :goto_1
    return-void

    .line 293
    .restart local v0    # "cameraIntent":Landroid/content/Intent;
    .restart local v2    # "imageFile":Ljava/io/File;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".provider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 293
    invoke-static {p1, v4, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->mCameraCaptureURI:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    .end local v0    # "cameraIntent":Landroid/content/Intent;
    .end local v2    # "imageFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    const-string v5, "E_FAILED_TO_OPEN_CAMERA"

    invoke-virtual {v4, v5, v1}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifyProblem(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 305
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cameraIntent":Landroid/content/Intent;
    .restart local v2    # "imageFile":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual {p1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private initiatePicker(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 314
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v2, "galleryIntent":Landroid/content/Intent;
    iget-boolean v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropping:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->mediaType:Ljava/lang/String;

    const-string v5, "photo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    :cond_0
    const-string v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    :goto_0
    const-string v4, "android.intent.extra.ALLOW_MULTIPLE"

    iget-boolean v5, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->multiple:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 327
    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v4, "android.intent.extra.LOCAL_ONLY"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 330
    const-string v4, "Pick an image"

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 331
    .local v0, "chooserIntent":Landroid/content/Intent;
    const v4, 0xeeb6

    invoke-virtual {p1, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 335
    .end local v0    # "chooserIntent":Landroid/content/Intent;
    .end local v2    # "galleryIntent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 318
    .restart local v2    # "galleryIntent":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->mediaType:Ljava/lang/String;

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 319
    const-string v4, "video/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    .end local v2    # "galleryIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    const-string v5, "E_FAILED_TO_SHOW_PICKER"

    invoke-virtual {v4, v5, v1}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifyProblem(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 321
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "galleryIntent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    const-string v4, "*/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "image/*"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "video/*"

    aput-object v5, v3, v4

    .line 323
    .local v3, "mimetypes":[Ljava/lang/String;
    const-string v4, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private isCameraAvailable(Landroid/app/Activity;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 690
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.any"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 690
    :goto_0
    return v0

    .line 691
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private permissionsCheck(Landroid/app/Activity;Lcom/facebook/react/bridge/Promise;Ljava/util/List;Ljava/util/concurrent/Callable;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/facebook/react/bridge/Promise;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p3, "requiredPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "callback":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v1, "missingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 213
    .local v2, "permission":Ljava/lang/String;
    invoke-static {p1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 214
    .local v3, "status":I
    if-eqz v3, :cond_0

    .line 215
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "status":I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 221
    check-cast p1, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x1

    new-instance v6, Lcom/reactnative/ivpusic/imagepicker/PickerModule$3;

    invoke-direct {v6, p0, p2, p4}, Lcom/reactnative/ivpusic/imagepicker/PickerModule$3;-><init>(Lcom/reactnative/ivpusic/imagepicker/PickerModule;Lcom/facebook/react/bridge/Promise;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v4, v5, v6}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V

    .line 254
    :goto_1
    return-void

    .line 250
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_2
    :try_start_0
    invoke-interface {p4}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "E_CALLBACK_ERROR"

    const-string v5, "Unknown error"

    invoke-interface {p2, v4, v5, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private resolveRealPath(Landroid/app/Activity;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "isCamera"    # Z

    .prologue
    .line 489
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 490
    invoke-static {p1, p2}, Lcom/reactnative/ivpusic/imagepicker/RealPathUtil;->getRealPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "path":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 492
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    .line 493
    iget-object v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->mCurrentPhotoPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 494
    .local v0, "imageUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 495
    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_0

    .line 496
    .end local v0    # "imageUri":Landroid/net/Uri;
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    invoke-static {p1, p2}, Lcom/reactnative/ivpusic/imagepicker/RealPathUtil;->getRealPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_0
.end method

.method private setConfiguration(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .param p1, "options"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    const-string v0, "mediaType"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mediaType"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->mediaType:Ljava/lang/String;

    .line 113
    const-string v0, "multiple"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "multiple"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->multiple:Z

    .line 114
    const-string v0, "includeBase64"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "includeBase64"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->includeBase64:Z

    .line 115
    const-string v0, "width"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "width"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->width:I

    .line 116
    const-string v0, "height"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "height"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_4
    iput v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->height:I

    .line 117
    const-string v0, "cropping"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "cropping"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_5
    iput-boolean v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropping:Z

    .line 118
    const-string v0, "cropperActiveWidgetColor"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "cropperActiveWidgetColor"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropperActiveWidgetColor:Ljava/lang/String;

    .line 119
    const-string v0, "cropperStatusBarColor"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "cropperStatusBarColor"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropperStatusBarColor:Ljava/lang/String;

    .line 120
    const-string v0, "cropperToolbarColor"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "cropperToolbarColor"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropperToolbarColor:Ljava/lang/String;

    .line 121
    const-string v0, "cropperCircleOverlay"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "cropperCircleOverlay"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_9
    iput-boolean v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropperCircleOverlay:Z

    .line 122
    const-string v0, "showCropGuidelines"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "showCropGuidelines"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_a
    iput-boolean v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->showCropGuidelines:Z

    .line 123
    const-string v0, "hideBottomControls"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "hideBottomControls"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_b
    iput-boolean v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->hideBottomControls:Z

    .line 124
    const-string v0, "enableRotationGesture"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "enableRotationGesture"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_c
    iput-boolean v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->enableRotationGesture:Z

    .line 125
    iput-object p1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->options:Lcom/facebook/react/bridge/ReadableMap;

    .line 126
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->mediaType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 113
    goto/16 :goto_1

    :cond_2
    move v1, v2

    .line 114
    goto/16 :goto_2

    .line 115
    :cond_3
    iget v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->width:I

    goto/16 :goto_3

    .line 116
    :cond_4
    iget v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->height:I

    goto/16 :goto_4

    .line 117
    :cond_5
    iget-boolean v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropping:Z

    goto/16 :goto_5

    .line 118
    :cond_6
    iget-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropperActiveWidgetColor:Ljava/lang/String;

    goto :goto_6

    .line 119
    :cond_7
    iget-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropperStatusBarColor:Ljava/lang/String;

    goto :goto_7

    .line 120
    :cond_8
    iget-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropperToolbarColor:Ljava/lang/String;

    goto :goto_8

    .line 121
    :cond_9
    iget-boolean v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropperCircleOverlay:Z

    goto :goto_9

    .line 122
    :cond_a
    iget-boolean v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->showCropGuidelines:Z

    goto :goto_a

    .line 123
    :cond_b
    iget-boolean v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->hideBottomControls:Z

    goto :goto_b

    .line 124
    :cond_c
    iget-boolean v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->enableRotationGesture:Z

    goto :goto_c
.end method

.method private startCropping(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x3

    .line 564
    new-instance v0, Lcom/yalantis/ucrop/UCrop$Options;

    invoke-direct {v0}, Lcom/yalantis/ucrop/UCrop$Options;-><init>()V

    .line 565
    .local v0, "options":Lcom/yalantis/ucrop/UCrop$Options;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setCompressionFormat(Landroid/graphics/Bitmap$CompressFormat;)V

    .line 566
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setCompressionQuality(I)V

    .line 567
    iget-boolean v1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cropperCircleOverlay:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setCircleDimmedLayer(Z)V

    .line 568
    iget-boolean v1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->showCropGuidelines:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setShowCropGrid(Z)V

    .line 569
    iget-boolean v1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->hideBottomControls:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setHideBottomControls(Z)V

    .line 570
    iget-boolean v1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->enableRotationGesture:Z

    if-eqz v1, :cond_0

    .line 572
    invoke-virtual {v0, v2, v2, v2}, Lcom/yalantis/ucrop/UCrop$Options;->setAllowedGestures(III)V

    .line 578
    :cond_0
    invoke-direct {p0, v0}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->configureCropperColors(Lcom/yalantis/ucrop/UCrop$Options;)V

    .line 580
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->getTmpDir(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/yalantis/ucrop/UCrop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/UCrop;

    move-result-object v1

    iget v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->width:I

    iget v3, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->height:I

    .line 581
    invoke-virtual {v1, v2, v3}, Lcom/yalantis/ucrop/UCrop;->withMaxResultSize(II)Lcom/yalantis/ucrop/UCrop;

    move-result-object v1

    iget v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->width:I

    int-to-float v2, v2

    iget v3, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->height:I

    int-to-float v3, v3

    .line 582
    invoke-virtual {v1, v2, v3}, Lcom/yalantis/ucrop/UCrop;->withAspectRatio(FF)Lcom/yalantis/ucrop/UCrop;

    move-result-object v1

    .line 583
    invoke-virtual {v1, v0}, Lcom/yalantis/ucrop/UCrop;->withOptions(Lcom/yalantis/ucrop/UCrop$Options;)Lcom/yalantis/ucrop/UCrop;

    move-result-object v1

    .line 584
    invoke-virtual {v1, p1}, Lcom/yalantis/ucrop/UCrop;->start(Landroid/app/Activity;)V

    .line 585
    return-void
.end method

.method private validateImage(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 504
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 505
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 506
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 507
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 509
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 511
    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-nez v1, :cond_1

    .line 512
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid image selected"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    :cond_1
    return-object v0
.end method

.method private validateVideo(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 437
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 438
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 441
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 442
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Cannot retrieve video data"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 445
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clean(Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 142
    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p0

    .line 144
    .local v1, "module":Lcom/reactnative/ivpusic/imagepicker/PickerModule;
    if-nez v0, :cond_0

    .line 145
    const-string v2, "E_ACTIVITY_DOES_NOT_EXIST"

    const-string v3, "Activity doesn\'t exist"

    invoke-interface {p1, v2, v3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 149
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/reactnative/ivpusic/imagepicker/PickerModule$1;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/reactnative/ivpusic/imagepicker/PickerModule$1;-><init>(Lcom/reactnative/ivpusic/imagepicker/PickerModule;Lcom/reactnative/ivpusic/imagepicker/PickerModule;Landroid/app/Activity;Lcom/facebook/react/bridge/Promise;)V

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->permissionsCheck(Landroid/app/Activity;Lcom/facebook/react/bridge/Promise;Ljava/util/List;Ljava/util/concurrent/Callable;)V

    goto :goto_0
.end method

.method public cleanSingle(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .param p1, "pathToDelete"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    const-string v2, "E_ERROR_WHILE_CLEANING_FILES"

    const-string v3, "Cannot cleanup empty path"

    invoke-interface {p2, v2, v3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 176
    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p0

    .line 178
    .local v1, "module":Lcom/reactnative/ivpusic/imagepicker/PickerModule;
    if-nez v0, :cond_1

    .line 179
    const-string v2, "E_ACTIVITY_DOES_NOT_EXIST"

    const-string v3, "Activity doesn\'t exist"

    invoke-interface {p2, v2, v3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;

    invoke-direct {v3, p0, p1, v1, p2}, Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;-><init>(Lcom/reactnative/ivpusic/imagepicker/PickerModule;Ljava/lang/String;Lcom/reactnative/ivpusic/imagepicker/PickerModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-direct {p0, v0, p2, v2, v3}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->permissionsCheck(Landroid/app/Activity;Lcom/facebook/react/bridge/Promise;Ljava/util/List;Ljava/util/concurrent/Callable;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "ImageCropPicker"

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 676
    const v0, 0xeeb6

    if-ne p2, v0, :cond_1

    .line 677
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->imagePickerResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    const v0, 0xeeb7

    if-ne p2, v0, :cond_2

    .line 679
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cameraPickerResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0

    .line 680
    :cond_2
    const/16 v0, 0x45

    if-ne p2, v0, :cond_0

    .line 681
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->croppingResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 687
    return-void
.end method

.method public openCamera(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .param p1, "options"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 260
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 261
    const-string v1, "E_ACTIVITY_DOES_NOT_EXIST"

    const-string v2, "Activity doesn\'t exist"

    invoke-interface {p2, v1, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-direct {p0, v0}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->isCameraAvailable(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    const-string v1, "E_CAMERA_IS_NOT_AVAILABLE"

    const-string v2, "Camera not available"

    invoke-interface {p2, v1, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_1
    invoke-direct {p0, p1}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->setConfiguration(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 271
    new-instance v1, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    iget-boolean v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->multiple:Z

    invoke-direct {v1, p2, v2}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;-><init>(Lcom/facebook/react/bridge/Promise;Z)V

    iput-object v1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    .line 273
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/reactnative/ivpusic/imagepicker/PickerModule$4;

    invoke-direct {v2, p0, v0}, Lcom/reactnative/ivpusic/imagepicker/PickerModule$4;-><init>(Lcom/reactnative/ivpusic/imagepicker/PickerModule;Landroid/app/Activity;)V

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->permissionsCheck(Landroid/app/Activity;Lcom/facebook/react/bridge/Promise;Ljava/util/List;Ljava/util/concurrent/Callable;)V

    goto :goto_0
.end method

.method public openCropper(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .param p1, "options"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 362
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 363
    const-string v2, "E_ACTIVITY_DOES_NOT_EXIST"

    const-string v3, "Activity doesn\'t exist"

    invoke-interface {p2, v2, v3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-direct {p0, p1}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->setConfiguration(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 368
    new-instance v2, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;-><init>(Lcom/facebook/react/bridge/Promise;Z)V

    iput-object v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    .line 370
    const-string v2, "path"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 371
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v0, v1}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->startCropping(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public openPicker(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .param p1, "options"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 341
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 342
    const-string v1, "E_ACTIVITY_DOES_NOT_EXIST"

    const-string v2, "Activity doesn\'t exist"

    invoke-interface {p2, v1, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-direct {p0, p1}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->setConfiguration(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 347
    new-instance v1, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    iget-boolean v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->multiple:Z

    invoke-direct {v1, p2, v2}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;-><init>(Lcom/facebook/react/bridge/Promise;Z)V

    iput-object v1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    .line 349
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/reactnative/ivpusic/imagepicker/PickerModule$5;

    invoke-direct {v2, p0, v0}, Lcom/reactnative/ivpusic/imagepicker/PickerModule$5;-><init>(Lcom/reactnative/ivpusic/imagepicker/PickerModule;Landroid/app/Activity;)V

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->permissionsCheck(Landroid/app/Activity;Lcom/facebook/react/bridge/Promise;Ljava/util/List;Ljava/util/concurrent/Callable;)V

    goto :goto_0
.end method
