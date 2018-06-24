.class public final Lokhttp3/ws/WebSocketCall;
.super Ljava/lang/Object;
.source "WebSocketCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/ws/WebSocketCall$StreamWebSocket;
    }
.end annotation


# instance fields
.field private final call:Lokhttp3/Call;

.field private final key:Ljava/lang/String;

.field private final random:Ljava/util/Random;


# direct methods
.method constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V
    .locals 1
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "request"    # Lokhttp3/Request;

    .prologue
    .line 54
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lokhttp3/ws/WebSocketCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Ljava/util/Random;)V

    .line 55
    return-void
.end method

.method constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Ljava/util/Random;)V
    .locals 4
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "request"    # Lokhttp3/Request;
    .param p3, "random"    # Ljava/util/Random;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v1, "GET"

    invoke-virtual {p2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request must be GET: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_0
    iput-object p3, p0, Lokhttp3/ws/WebSocketCall;->random:Ljava/util/Random;

    .line 63
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 64
    .local v0, "nonce":[B
    invoke-virtual {p3, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 65
    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/ws/WebSocketCall;->key:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 68
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 71
    invoke-virtual {p2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Upgrade"

    const-string v3, "websocket"

    .line 72
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Connection"

    const-string v3, "Upgrade"

    .line 73
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Key"

    iget-object v3, p0, Lokhttp3/ws/WebSocketCall;->key:Ljava/lang/String;

    .line 74
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Version"

    const-string v3, "13"

    .line 75
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    .line 78
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/ws/WebSocketCall;->call:Lokhttp3/Call;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lokhttp3/ws/WebSocketCall;Lokhttp3/Response;Lokhttp3/ws/WebSocketListener;)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/ws/WebSocketCall;
    .param p1, "x1"    # Lokhttp3/Response;
    .param p2, "x2"    # Lokhttp3/ws/WebSocketListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lokhttp3/ws/WebSocketCall;->createWebSocket(Lokhttp3/Response;Lokhttp3/ws/WebSocketListener;)V

    return-void
.end method

.method public static create(Lokhttp3/OkHttpClient;Lokhttp3/Request;)Lokhttp3/ws/WebSocketCall;
    .locals 1
    .param p0, "client"    # Lokhttp3/OkHttpClient;
    .param p1, "request"    # Lokhttp3/Request;

    .prologue
    .line 46
    new-instance v0, Lokhttp3/ws/WebSocketCall;

    invoke-direct {v0, p0, p1}, Lokhttp3/ws/WebSocketCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    return-object v0
.end method

.method private createWebSocket(Lokhttp3/Response;Lokhttp3/ws/WebSocketListener;)V
    .locals 9
    .param p1, "response"    # Lokhttp3/Response;
    .param p2, "listener"    # Lokhttp3/ws/WebSocketListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v6

    const/16 v7, 0x65

    if-eq v6, v7, :cond_0

    .line 119
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected HTTP 101 response but was \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 120
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 122
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 126
    :cond_0
    const-string v6, "Connection"

    invoke-virtual {p1, v6}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "headerConnection":Ljava/lang/String;
    const-string v6, "Upgrade"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 128
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected \'Connection\' header value \'Upgrade\' but was \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 131
    :cond_1
    const-string v6, "Upgrade"

    invoke-virtual {p1, v6}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "headerUpgrade":Ljava/lang/String;
    const-string v6, "websocket"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 133
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected \'Upgrade\' header value \'websocket\' but was \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 136
    :cond_2
    const-string v6, "Sec-WebSocket-Accept"

    invoke-virtual {p1, v6}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "headerAccept":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lokhttp3/ws/WebSocketCall;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lokhttp3/internal/Util;->shaBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "acceptExpected":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 139
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected \'Sec-WebSocket-Accept\' header value \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' but was \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 146
    :cond_3
    sget-object v6, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v7, p0, Lokhttp3/ws/WebSocketCall;->call:Lokhttp3/Call;

    invoke-virtual {v6, v7}, Lokhttp3/internal/Internal;->callEngineGetStreamAllocation(Lokhttp3/Call;)Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v4

    .line 147
    .local v4, "streamAllocation":Lokhttp3/internal/connection/StreamAllocation;
    iget-object v6, p0, Lokhttp3/ws/WebSocketCall;->random:Ljava/util/Random;

    invoke-static {v4, p1, v6, p2}, Lokhttp3/ws/WebSocketCall$StreamWebSocket;->create(Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/Response;Ljava/util/Random;Lokhttp3/ws/WebSocketListener;)Lokhttp3/internal/ws/RealWebSocket;

    move-result-object v5

    .line 150
    .local v5, "webSocket":Lokhttp3/internal/ws/RealWebSocket;
    invoke-interface {p2, v5, p1}, Lokhttp3/ws/WebSocketListener;->onOpen(Lokhttp3/ws/WebSocket;Lokhttp3/Response;)V

    .line 152
    :cond_4
    invoke-virtual {v5}, Lokhttp3/internal/ws/RealWebSocket;->readMessage()Z

    move-result v6

    if-nez v6, :cond_4

    .line 154
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lokhttp3/ws/WebSocketCall;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 115
    return-void
.end method

.method public enqueue(Lokhttp3/ws/WebSocketListener;)V
    .locals 3
    .param p1, "listener"    # Lokhttp3/ws/WebSocketListener;

    .prologue
    .line 94
    new-instance v0, Lokhttp3/ws/WebSocketCall$1;

    invoke-direct {v0, p0, p1}, Lokhttp3/ws/WebSocketCall$1;-><init>(Lokhttp3/ws/WebSocketCall;Lokhttp3/ws/WebSocketListener;)V

    .line 108
    .local v0, "responseCallback":Lokhttp3/Callback;
    sget-object v1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v2, p0, Lokhttp3/ws/WebSocketCall;->call:Lokhttp3/Call;

    invoke-virtual {v1, v2}, Lokhttp3/internal/Internal;->setCallWebSocket(Lokhttp3/Call;)V

    .line 109
    iget-object v1, p0, Lokhttp3/ws/WebSocketCall;->call:Lokhttp3/Call;

    invoke-interface {v1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 110
    return-void
.end method
