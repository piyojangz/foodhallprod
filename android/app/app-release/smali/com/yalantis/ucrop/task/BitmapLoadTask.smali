.class public Lcom/yalantis/ucrop/task/BitmapLoadTask;
.super Landroid/os/AsyncTask;
.source "BitmapLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapWorkerTask"


# instance fields
.field private final mBitmapLoadCallback:Lcom/yalantis/ucrop/callback/BitmapLoadCallback;

.field private final mContext:Landroid/content/Context;

.field private mInputUri:Landroid/net/Uri;

.field private mOutputUri:Landroid/net/Uri;

.field private final mRequiredHeight:I

.field private final mRequiredWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;IILcom/yalantis/ucrop/callback/BitmapLoadCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "inputUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "outputUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "requiredWidth"    # I
    .param p5, "requiredHeight"    # I
    .param p6, "loadCallback"    # Lcom/yalantis/ucrop/callback/BitmapLoadCallback;

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    .line 76
    iput-object p3, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mOutputUri:Landroid/net/Uri;

    .line 77
    iput p4, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mRequiredWidth:I

    .line 78
    iput p5, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mRequiredHeight:I

    .line 79
    iput-object p6, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mBitmapLoadCallback:Lcom/yalantis/ucrop/callback/BitmapLoadCallback;

    .line 80
    return-void
.end method

.method private copyFile(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 7
    .param p1, "inputUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "outputUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    const-string v5, "BitmapWorkerTask"

    const-string v6, "copyFile"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-nez p2, :cond_0

    .line 192
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Output Uri is null - cannot copy image"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 195
    :cond_0
    const/4 v1, 0x0

    .line 196
    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 198
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 199
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 200
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .local v4, "outputStream":Ljava/io/OutputStream;
    if-nez v1, :cond_1

    .line 201
    :try_start_1
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "InputStream for given input Uri is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :catchall_0
    move-exception v5

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :goto_0
    invoke-static {v3}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V

    .line 211
    invoke-static {v1}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V

    .line 215
    iget-object v6, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mOutputUri:Landroid/net/Uri;

    iput-object v6, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    throw v5

    .line 204
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    const/16 v5, 0x400

    :try_start_2
    new-array v0, v5, [B

    .line 206
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "length":I
    if-lez v2, :cond_2

    .line 207
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 210
    :cond_2
    invoke-static {v4}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V

    .line 211
    invoke-static {v1}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V

    .line 215
    iget-object v5, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mOutputUri:Landroid/net/Uri;

    iput-object v5, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    .line 217
    return-void

    .line 210
    .end local v0    # "buffer":[B
    .end local v2    # "length":I
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    goto :goto_0
.end method

.method private downloadFile(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 8
    .param p1, "inputUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "outputUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    const-string v6, "BitmapWorkerTask"

    const-string v7, "downloadFile"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-nez p2, :cond_0

    .line 223
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "Output Uri is null - cannot download image"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 226
    :cond_0
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 228
    .local v0, "client":Lokhttp3/OkHttpClient;
    const/4 v5, 0x0

    .line 229
    .local v5, "source":Lokio/BufferedSource;
    const/4 v4, 0x0

    .line 230
    .local v4, "sink":Lokio/Sink;
    const/4 v3, 0x0

    .line 232
    .local v3, "response":Lokhttp3/Response;
    :try_start_0
    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    .line 233
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 234
    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 235
    .local v2, "request":Lokhttp3/Request;
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    invoke-interface {v6}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    .line 236
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v5

    .line 238
    iget-object v6, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 239
    .local v1, "outputStream":Ljava/io/OutputStream;
    if-eqz v1, :cond_2

    .line 240
    invoke-static {v1}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object v4

    .line 241
    invoke-interface {v5, v4}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-static {v5}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V

    .line 247
    invoke-static {v4}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V

    .line 248
    if-eqz v3, :cond_1

    .line 249
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-static {v6}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V

    .line 251
    :cond_1
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Dispatcher;->cancelAll()V

    .line 255
    iget-object v6, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mOutputUri:Landroid/net/Uri;

    iput-object v6, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    .line 257
    return-void

    .line 243
    :cond_2
    :try_start_1
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "OutputStream for given output Uri is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .end local v2    # "request":Lokhttp3/Request;
    :catchall_0
    move-exception v6

    invoke-static {v5}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V

    .line 247
    invoke-static {v4}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V

    .line 248
    if-eqz v3, :cond_3

    .line 249
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-static {v7}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V

    .line 251
    :cond_3
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Dispatcher;->cancelAll()V

    .line 255
    iget-object v7, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mOutputUri:Landroid/net/Uri;

    iput-object v7, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    throw v6
.end method

.method private processInputUri()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v3, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "inputUriScheme":Ljava/lang/String;
    const-string v3, "BitmapWorkerTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uri scheme: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v3, "http"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mOutputUri:Landroid/net/Uri;

    invoke-direct {p0, v3, v4}, Lcom/yalantis/ucrop/task/BitmapLoadTask;->downloadFile(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v3, "BitmapWorkerTask"

    const-string v4, "Downloading failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    throw v0

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 171
    iget-object v3, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/yalantis/ucrop/util/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    goto :goto_0

    .line 176
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mOutputUri:Landroid/net/Uri;

    invoke-direct {p0, v3, v4}, Lcom/yalantis/ucrop/task/BitmapLoadTask;->copyFile(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 177
    :catch_1
    move-exception v0

    .line 178
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v3, "BitmapWorkerTask"

    const-string v4, "Copying failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    throw v0

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "path":Ljava/lang/String;
    :cond_4
    const-string v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 183
    const-string v3, "BitmapWorkerTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Uri scheme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Uri scheme"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 177
    .restart local v2    # "path":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_2

    .line 166
    .end local v2    # "path":Ljava/lang/String;
    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;
    .locals 17
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 85
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    if-nez v13, :cond_0

    .line 86
    new-instance v13, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;

    new-instance v14, Ljava/lang/NullPointerException;

    const-string v15, "Input Uri cannot be null"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Ljava/lang/Exception;)V

    .line 157
    :goto_0
    return-object v13

    .line 90
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/yalantis/ucrop/task/BitmapLoadTask;->processInputUri()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 97
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    const-string v15, "r"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 103
    .local v12, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    if-eqz v12, :cond_2

    .line 104
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    .line 109
    .local v9, "fileDescriptor":Ljava/io/FileDescriptor;
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 110
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 111
    const/4 v13, 0x0

    invoke-static {v9, v13, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 112
    iget v13, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1

    iget v13, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    .line 113
    :cond_1
    new-instance v13, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;

    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bounds for bitmap could not be retrieved from the Uri: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Ljava/lang/Exception;)V

    goto :goto_0

    .line 91
    .end local v9    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v3

    .line 92
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v13, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;

    invoke-direct {v13, v3}, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Ljava/lang/Exception;)V

    goto :goto_0

    .line 98
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 99
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v13, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;

    invoke-direct {v13, v3}, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Ljava/lang/Exception;)V

    goto :goto_0

    .line 106
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v12    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :cond_2
    new-instance v13, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;

    new-instance v14, Ljava/lang/NullPointerException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ParcelFileDescriptor was null for given Uri: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 116
    .restart local v9    # "fileDescriptor":Ljava/io/FileDescriptor;
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mRequiredWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mRequiredHeight:I

    invoke-static {v11, v13, v14}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v13

    iput v13, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 117
    const/4 v13, 0x0

    iput-boolean v13, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 119
    const/4 v2, 0x0

    .line 121
    .local v2, "decodeSampledBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 122
    .local v1, "decodeAttemptSuccess":Z
    :goto_2
    if-nez v1, :cond_4

    .line 124
    const/4 v13, 0x0

    :try_start_2
    invoke-static {v9, v13, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 125
    const/4 v1, 0x1

    goto :goto_2

    .line 126
    :catch_2
    move-exception v4

    .line 127
    .local v4, "error":Ljava/lang/OutOfMemoryError;
    const-string v13, "BitmapWorkerTask"

    const-string v14, "doInBackground: BitmapFactory.decodeFileDescriptor: "

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    iget v13, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v13, v13, 0x2

    iput v13, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_2

    .line 132
    .end local v4    # "error":Ljava/lang/OutOfMemoryError;
    :cond_4
    if-nez v2, :cond_5

    .line 133
    new-instance v13, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;

    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bitmap could not be decoded from the Uri: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 136
    :cond_5
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x10

    if-lt v13, v14, :cond_6

    .line 137
    invoke-static {v12}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V

    .line 140
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    invoke-static {v13, v14}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v7

    .line 141
    .local v7, "exifOrientation":I
    invoke-static {v7}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->exifToDegrees(I)I

    move-result v5

    .line 142
    .local v5, "exifDegrees":I
    invoke-static {v7}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->exifToTranslation(I)I

    move-result v8

    .line 144
    .local v8, "exifTranslation":I
    new-instance v6, Lcom/yalantis/ucrop/model/ExifInfo;

    invoke-direct {v6, v7, v5, v8}, Lcom/yalantis/ucrop/model/ExifInfo;-><init>(III)V

    .line 146
    .local v6, "exifInfo":Lcom/yalantis/ucrop/model/ExifInfo;
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 147
    .local v10, "matrix":Landroid/graphics/Matrix;
    if-eqz v5, :cond_7

    .line 148
    int-to-float v13, v5

    invoke-virtual {v10, v13}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 150
    :cond_7
    const/4 v13, 0x1

    if-eq v8, v13, :cond_8

    .line 151
    int-to-float v13, v8

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v10, v13, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 153
    :cond_8
    invoke-virtual {v10}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v13

    if-nez v13, :cond_9

    .line 154
    new-instance v13, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;

    invoke-static {v2, v10}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->transformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-direct {v13, v14, v6}, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/model/ExifInfo;)V

    goto/16 :goto_0

    .line 157
    :cond_9
    new-instance v13, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;

    invoke-direct {v13, v2, v6}, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;-><init>(Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/model/ExifInfo;)V

    goto/16 :goto_0

    .line 91
    .end local v1    # "decodeAttemptSuccess":Z
    .end local v2    # "decodeSampledBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "exifDegrees":I
    .end local v6    # "exifInfo":Lcom/yalantis/ucrop/model/ExifInfo;
    .end local v7    # "exifOrientation":I
    .end local v8    # "exifTranslation":I
    .end local v9    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :catch_3
    move-exception v3

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/task/BitmapLoadTask;->doInBackground([Ljava/lang/Void;)Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;)V
    .locals 5
    .param p1, "result"    # Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 261
    iget-object v0, p1, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;->mBitmapWorkerException:Ljava/lang/Exception;

    if-nez v0, :cond_1

    .line 262
    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mBitmapLoadCallback:Lcom/yalantis/ucrop/callback/BitmapLoadCallback;

    iget-object v2, p1, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;->mBitmapResult:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;->mExifInfo:Lcom/yalantis/ucrop/model/ExifInfo;

    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mOutputUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/yalantis/ucrop/callback/BitmapLoadCallback;->onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/model/ExifInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :goto_1
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mOutputUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapLoadTask;->mBitmapLoadCallback:Lcom/yalantis/ucrop/callback/BitmapLoadCallback;

    iget-object v1, p1, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;->mBitmapWorkerException:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/yalantis/ucrop/callback/BitmapLoadCallback;->onFailure(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    check-cast p1, Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/task/BitmapLoadTask;->onPostExecute(Lcom/yalantis/ucrop/task/BitmapLoadTask$BitmapWorkerResult;)V

    return-void
.end method
