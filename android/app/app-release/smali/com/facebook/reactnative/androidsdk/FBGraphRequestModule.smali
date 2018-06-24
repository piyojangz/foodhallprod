.class public Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "FBGraphRequestModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestCallback;,
        Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestBatchCallback;
    }
.end annotation


# instance fields
.field private mResponses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/facebook/react/bridge/WritableMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;->mResponses:Landroid/util/SparseArray;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;->mResponses:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;Lcom/facebook/FacebookRequestError;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;
    .param p1, "x1"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;->buildFacebookRequestError(Lcom/facebook/FacebookRequestError;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;Lcom/facebook/GraphResponse;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;
    .param p1, "x1"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;->buildGraphResponse(Lcom/facebook/GraphResponse;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method

.method private buildFacebookRequestError(Lcom/facebook/FacebookRequestError;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3
    .param p1, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 183
    if-nez p1, :cond_1

    .line 184
    const/4 v0, 0x0

    .line 214
    :cond_0
    :goto_0
    return-object v0

    .line 186
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 187
    .local v0, "errorMap":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "requestStatusCode"

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getRequestStatusCode()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 188
    const-string v1, "errorCode"

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 189
    const-string v1, "subErrorCode"

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getSubErrorCode()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 190
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 191
    const-string v1, "errorType"

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 194
    const-string v1, "errorMessage"

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorUserTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 197
    const-string v1, "errorUserTitle"

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorUserTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorUserMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 200
    const-string v1, "errorUserMessage"

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorUserMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getRequestResultBody()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 203
    const-string v1, "requestResultBody"

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getRequestResultBody()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getRequestResult()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 206
    const-string v1, "requestResult"

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getRequestResult()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_7
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getBatchRequestResult()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 209
    const-string v1, "batchRequestResult"

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getBatchRequestResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_8
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    const-string v1, "exception"

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private buildGraphResponse(Lcom/facebook/GraphResponse;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;->convertJSONObject(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    goto :goto_0
.end method

.method private buildParameters(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;
    .locals 5
    .param p1, "parameterMap"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 170
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 171
    .local v3, "parameters":Landroid/os/Bundle;
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    .line 172
    .local v1, "keyIterator":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    .line 175
    .local v2, "parameter":Lcom/facebook/react/bridge/ReadableMap;
    const-string v4, "string"

    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    const-string v4, "string"

    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "parameter":Lcom/facebook/react/bridge/ReadableMap;
    :cond_1
    return-object v3
.end method

.method private buildRequest(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/GraphRequest;
    .locals 2
    .param p1, "requestMap"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 134
    new-instance v0, Lcom/facebook/GraphRequest;

    invoke-direct {v0}, Lcom/facebook/GraphRequest;-><init>()V

    .line 135
    .local v0, "graphRequest":Lcom/facebook/GraphRequest;
    const-string v1, "graphPath"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequest;->setGraphPath(Ljava/lang/String;)V

    .line 136
    const-string v1, "config"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;->setConfig(Lcom/facebook/GraphRequest;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 137
    return-object v0
.end method

.method private convertJSONArray(Lorg/json/JSONArray;)Lcom/facebook/react/bridge/WritableArray;
    .locals 6
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 225
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v3

    .line 226
    .local v3, "result":Lcom/facebook/react/bridge/WritableArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 229
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 233
    .local v2, "object":Ljava/lang/Object;
    instance-of v4, v2, Lorg/json/JSONObject;

    if-eqz v4, :cond_2

    .line 234
    check-cast v2, Lorg/json/JSONObject;

    .end local v2    # "object":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;->convertJSONObject(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    .line 226
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 247
    :cond_1
    return-object v3

    .line 235
    .restart local v2    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v4, v2, Lorg/json/JSONArray;

    if-eqz v4, :cond_3

    .line 236
    check-cast v2, Lorg/json/JSONArray;

    .end local v2    # "object":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;->convertJSONArray(Lorg/json/JSONArray;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/WritableArray;->pushArray(Lcom/facebook/react/bridge/WritableArray;)V

    goto :goto_1

    .line 237
    .restart local v2    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 238
    check-cast v2, Ljava/lang/String;

    .end local v2    # "object":Ljava/lang/Object;
    invoke-interface {v3, v2}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 239
    .restart local v2    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 240
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "object":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    goto :goto_1

    .line 241
    .restart local v2    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_6

    .line 242
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "object":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/WritableArray;->pushBoolean(Z)V

    goto :goto_1

    .line 243
    .restart local v2    # "object":Ljava/lang/Object;
    :cond_6
    instance-of v4, v2, Ljava/lang/Double;

    if-eqz v4, :cond_0

    .line 244
    check-cast v2, Ljava/lang/Double;

    .end local v2    # "object":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    goto :goto_1
.end method

.method private convertJSONObject(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;
    .locals 8
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 251
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 252
    .local v3, "result":Lcom/facebook/react/bridge/WritableMap;
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 253
    .local v2, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 254
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 257
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 261
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_2

    .line 262
    check-cast v4, Lorg/json/JSONObject;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-direct {p0, v4}, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;->convertJSONObject(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 275
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-object v3

    .line 263
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_3

    .line 264
    check-cast v4, Lorg/json/JSONArray;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-direct {p0, v4}, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;->convertJSONArray(Lorg/json/JSONArray;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    goto :goto_0

    .line 265
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 266
    check-cast v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-interface {v3, v1, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_5

    .line 268
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v1, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 269
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_6

    .line 270
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v3, v1, v5}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 271
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_0

    .line 272
    check-cast v4, Ljava/lang/Double;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-interface {v3, v1, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0
.end method

.method private setConfig(Lcom/facebook/GraphRequest;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 9
    .param p1, "graphRequest"    # Lcom/facebook/GraphRequest;
    .param p2, "configMap"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    const/4 v4, 0x0

    .line 141
    if-nez p2, :cond_0

    .line 142
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setAccessToken(Lcom/facebook/AccessToken;)V

    .line 167
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v0, "parameters"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    const-string v0, "parameters"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;->buildParameters(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 148
    :cond_1
    const-string v0, "httpMethod"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    const-string v0, "httpMethod"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/HttpMethod;->valueOf(Ljava/lang/String;)Lcom/facebook/HttpMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    .line 151
    :cond_2
    const-string v0, "version"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    const-string v0, "version"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setVersion(Ljava/lang/String;)V

    .line 154
    :cond_3
    const-string v0, "accessToken"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    new-instance v0, Lcom/facebook/AccessToken;

    const-string v1, "accessToken"

    .line 156
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V

    .line 155
    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setAccessToken(Lcom/facebook/AccessToken;)V

    goto :goto_0

    .line 165
    :cond_4
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setAccessToken(Lcom/facebook/AccessToken;)V

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "FBGraphRequest"

    return-object v0
.end method

.method public start(Lcom/facebook/react/bridge/ReadableArray;ILcom/facebook/react/bridge/Callback;)V
    .locals 9
    .param p1, "requestBatch"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p2, "timeout"    # I
    .param p3, "batchCallback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0}, Lcom/facebook/GraphRequestBatch;-><init>()V

    .line 114
    .local v0, "batch":Lcom/facebook/GraphRequestBatch;
    const/4 v4, 0x0

    .line 115
    .local v4, "potentialID":I
    const/4 v1, 0x0

    .line 116
    .local v1, "batchID":I
    monitor-enter p0

    :cond_0
    move v5, v4

    .line 118
    .end local v4    # "potentialID":I
    .local v5, "potentialID":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "potentialID":I
    .restart local v4    # "potentialID":I
    move v1, v5

    .line 119
    :try_start_0
    iget-object v7, p0, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    .line 120
    iget-object v7, p0, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;->mResponses:Landroid/util/SparseArray;

    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 123
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;->buildRequest(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/GraphRequest;

    move-result-object v6

    .line 124
    .local v6, "request":Lcom/facebook/GraphRequest;
    new-instance v7, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestCallback;

    invoke-direct {v7, p0, v3, v1}, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestCallback;-><init>(Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;II)V

    invoke-virtual {v6, v7}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    .line 125
    invoke-virtual {v0, v6}, Lcom/facebook/GraphRequestBatch;->add(Lcom/facebook/GraphRequest;)Z

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    .end local v3    # "i":I
    .end local v6    # "request":Lcom/facebook/GraphRequest;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 127
    .restart local v3    # "i":I
    :cond_1
    invoke-virtual {v0, p2}, Lcom/facebook/GraphRequestBatch;->setTimeout(I)V

    .line 128
    new-instance v2, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestBatchCallback;

    invoke-direct {v2, p0, v1, p3}, Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestBatchCallback;-><init>(Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule;ILcom/facebook/react/bridge/Callback;)V

    .line 129
    .local v2, "callback":Lcom/facebook/reactnative/androidsdk/FBGraphRequestModule$GraphRequestBatchCallback;
    invoke-virtual {v0, v2}, Lcom/facebook/GraphRequestBatch;->addCallback(Lcom/facebook/GraphRequestBatch$Callback;)V

    .line 130
    invoke-virtual {v0}, Lcom/facebook/GraphRequestBatch;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 131
    return-void
.end method
