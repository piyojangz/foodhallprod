.class public final Lcom/facebook/reactnative/androidsdk/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accessTokenToReactMap(Lcom/facebook/AccessToken;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 77
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 78
    .local v0, "map":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "accessToken"

    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "applicationID"

    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "userID"

    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "permissions"

    .line 83
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/reactnative/androidsdk/Utility;->setToStringArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/react/bridge/Arguments;->fromJavaArgs([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object v2

    .line 81
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 84
    const-string v1, "declinedPermissions"

    .line 86
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/reactnative/androidsdk/Utility;->setToStringArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/react/bridge/Arguments;->fromJavaArgs([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object v2

    .line 84
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 87
    const-string v1, "accessTokenSource"

    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getSource()Lcom/facebook/AccessTokenSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/AccessTokenSource;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "expirationTime"

    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 89
    const-string v1, "lastRefreshTime"

    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getLastRefresh()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 90
    return-object v0
.end method

.method private static appendGenericContent(Lcom/facebook/share/model/ShareContent$Builder;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .param p0, "contentBuilder"    # Lcom/facebook/share/model/ShareContent$Builder;
    .param p1, "shareContent"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 257
    const-string v2, "commonParameters"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    const-string v2, "commonParameters"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    .line 259
    .local v0, "commonParameters":Lcom/facebook/react/bridge/ReadableMap;
    const-string v2, "peopleIds"

    .line 260
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "peopleIds"

    .line 261
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/reactnative/androidsdk/Utility;->reactArrayToStringList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object v2

    .line 259
    :goto_0
    invoke-virtual {p0, v2}, Lcom/facebook/share/model/ShareContent$Builder;->setPeopleIds(Ljava/util/List;)Lcom/facebook/share/model/ShareContent$Builder;

    .line 263
    const-string v2, "placeId"

    invoke-static {v0, v2}, Lcom/facebook/reactnative/androidsdk/Utility;->getValueOrNull(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/share/model/ShareContent$Builder;->setPlaceId(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;

    .line 264
    const-string v2, "ref"

    invoke-static {v0, v2}, Lcom/facebook/reactnative/androidsdk/Utility;->getValueOrNull(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/share/model/ShareContent$Builder;->setRef(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;

    .line 265
    const-string v2, "hashtag"

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    new-instance v2, Lcom/facebook/share/model/ShareHashtag$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/ShareHashtag$Builder;-><init>()V

    const-string v3, "hashtag"

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/ShareHashtag$Builder;->setHashtag(Ljava/lang/String;)Lcom/facebook/share/model/ShareHashtag$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/share/model/ShareHashtag$Builder;->build()Lcom/facebook/share/model/ShareHashtag;

    move-result-object v1

    .line 267
    .local v1, "tag":Lcom/facebook/share/model/ShareHashtag;
    invoke-virtual {p0, v1}, Lcom/facebook/share/model/ShareContent$Builder;->setShareHashtag(Lcom/facebook/share/model/ShareHashtag;)Lcom/facebook/share/model/ShareContent$Builder;

    .line 270
    .end local v0    # "commonParameters":Lcom/facebook/react/bridge/ReadableMap;
    .end local v1    # "tag":Lcom/facebook/share/model/ShareHashtag;
    :cond_0
    return-void

    .line 261
    .restart local v0    # "commonParameters":Lcom/facebook/react/bridge/ReadableMap;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static buildAccessToken(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/AccessToken;
    .locals 9
    .param p0, "accessTokenMap"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 60
    const-string v0, "accessTokenSource"

    .line 61
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/AccessTokenSource;->valueOf(Ljava/lang/String;)Lcom/facebook/AccessTokenSource;

    move-result-object v6

    .line 62
    .local v6, "accessTokenSource":Lcom/facebook/AccessTokenSource;
    new-instance v7, Ljava/util/Date;

    const-string v0, "expirationTime"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 63
    .local v7, "expirationTime":Ljava/util/Date;
    new-instance v8, Ljava/util/Date;

    const-string v0, "lastRefreshTime"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 64
    .local v8, "lastRefreshTime":Ljava/util/Date;
    new-instance v0, Lcom/facebook/AccessToken;

    const-string v1, "accessToken"

    .line 65
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "applicationID"

    .line 66
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userID"

    .line 67
    invoke-interface {p0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "permissions"

    .line 68
    invoke-interface {p0, v4}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/reactnative/androidsdk/Utility;->reactArrayToStringList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object v4

    const-string v5, "declinedPermissions"

    .line 69
    invoke-interface {p0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/reactnative/androidsdk/Utility;->reactArrayToStringList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V

    .line 64
    return-object v0
.end method

.method public static buildAppGroupCreationContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/AppGroupCreationContent;
    .locals 2
    .param p0, "appGroupCreationContenMap"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 125
    new-instance v0, Lcom/facebook/share/model/AppGroupCreationContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/AppGroupCreationContent$Builder;-><init>()V

    .line 126
    .local v0, "appGroupCreationContentBuilder":Lcom/facebook/share/model/AppGroupCreationContent$Builder;
    const-string v1, "name"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->setName(Ljava/lang/String;)Lcom/facebook/share/model/AppGroupCreationContent$Builder;

    .line 127
    const-string v1, "description"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->setDescription(Ljava/lang/String;)Lcom/facebook/share/model/AppGroupCreationContent$Builder;

    .line 128
    const-string v1, "privacy"

    .line 129
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->valueOf(Ljava/lang/String;)Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->setAppGroupPrivacy(Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;)Lcom/facebook/share/model/AppGroupCreationContent$Builder;

    .line 130
    invoke-virtual {v0}, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->build()Lcom/facebook/share/model/AppGroupCreationContent;

    move-result-object v1

    return-object v1
.end method

.method public static buildAppInviteContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/AppInviteContent;
    .locals 4
    .param p0, "appInviteContentMap"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 111
    new-instance v0, Lcom/facebook/share/model/AppInviteContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/AppInviteContent$Builder;-><init>()V

    .line 112
    .local v0, "appInviteContentBuilder":Lcom/facebook/share/model/AppInviteContent$Builder;
    const-string v3, "applinkUrl"

    invoke-interface {p0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/share/model/AppInviteContent$Builder;->setApplinkUrl(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;

    .line 113
    const-string v3, "previewImageUrl"

    invoke-interface {p0, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    const-string v3, "previewImageUrl"

    invoke-interface {p0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/share/model/AppInviteContent$Builder;->setPreviewImageUrl(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;

    .line 116
    :cond_0
    const-string v3, "promotionText"

    invoke-static {p0, v3}, Lcom/facebook/reactnative/androidsdk/Utility;->getValueOrNull(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "promotionText":Ljava/lang/String;
    const-string v3, "promotionCode"

    invoke-static {p0, v3}, Lcom/facebook/reactnative/androidsdk/Utility;->getValueOrNull(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "promotionCode":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {v0, v2, v1}, Lcom/facebook/share/model/AppInviteContent$Builder;->setPromotionDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;

    .line 121
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/share/model/AppInviteContent$Builder;->build()Lcom/facebook/share/model/AppInviteContent;

    move-result-object v3

    return-object v3
.end method

.method public static buildGameRequestContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/GameRequestContent;
    .locals 4
    .param p0, "gameRequestContentMap"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 134
    new-instance v2, Lcom/facebook/share/model/GameRequestContent$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/GameRequestContent$Builder;-><init>()V

    .line 135
    .local v2, "gameRequestContentBuilder":Lcom/facebook/share/model/GameRequestContent$Builder;
    const-string v3, "actionType"

    invoke-static {p0, v3}, Lcom/facebook/reactnative/androidsdk/Utility;->getValueOrNull(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "actionType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/share/model/GameRequestContent$ActionType;->valueOf(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object v3

    .line 137
    invoke-virtual {v2, v3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setActionType(Lcom/facebook/share/model/GameRequestContent$ActionType;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 140
    :cond_0
    const-string v3, "filters"

    invoke-static {p0, v3}, Lcom/facebook/reactnative/androidsdk/Utility;->getValueOrNull(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "filters":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/share/model/GameRequestContent$Filters;->valueOf(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Filters;

    move-result-object v3

    .line 142
    invoke-virtual {v2, v3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setFilters(Lcom/facebook/share/model/GameRequestContent$Filters;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 145
    :cond_1
    const-string v3, "message"

    invoke-interface {p0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 146
    const-string v3, "recipients"

    invoke-interface {p0, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    const-string v3, "recipients"

    .line 148
    invoke-interface {p0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/reactnative/androidsdk/Utility;->reactArrayToStringList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object v3

    .line 147
    invoke-virtual {v2, v3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setRecipients(Ljava/util/List;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 150
    :cond_2
    const-string v3, "title"

    invoke-static {p0, v3}, Lcom/facebook/reactnative/androidsdk/Utility;->getValueOrNull(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 151
    const-string v3, "data"

    invoke-static {p0, v3}, Lcom/facebook/reactnative/androidsdk/Utility;->getValueOrNull(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setData(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 152
    const-string v3, "objectId"

    invoke-static {p0, v3}, Lcom/facebook/reactnative/androidsdk/Utility;->getValueOrNull(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setObjectId(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 153
    const-string v3, "suggestions"

    invoke-interface {p0, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 154
    const-string v3, "suggestions"

    .line 155
    invoke-interface {p0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    .line 154
    invoke-static {v3}, Lcom/facebook/reactnative/androidsdk/Utility;->reactArrayToStringList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setSuggestions(Ljava/util/List;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 157
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object v3

    return-object v3
.end method

.method public static buildShareContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareContent;
    .locals 3
    .param p0, "shareContentMap"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "shareContent":Lcom/facebook/share/model/ShareContent;
    if-eqz p0, :cond_0

    .line 96
    const-string v2, "contentType"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "contentType":Ljava/lang/String;
    const-string v2, "link"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    invoke-static {p0}, Lcom/facebook/reactnative/androidsdk/Utility;->buildShareLinkContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v1

    .line 107
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 99
    .restart local v0    # "contentType":Ljava/lang/String;
    :cond_1
    const-string v2, "photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    invoke-static {p0}, Lcom/facebook/reactnative/androidsdk/Utility;->buildSharePhotoContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v1

    goto :goto_0

    .line 101
    :cond_2
    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    invoke-static {p0}, Lcom/facebook/reactnative/androidsdk/Utility;->buildShareVideoContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    goto :goto_0

    .line 103
    :cond_3
    const-string v2, "open-graph"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-static {p0}, Lcom/facebook/reactnative/androidsdk/Utility;->buildShareOpenGraphContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    goto :goto_0
.end method

.method public static buildShareLinkContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareLinkContent;
    .locals 3
    .param p0, "shareLinkContent"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 161
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    .line 162
    .local v0, "contentBuilder":Lcom/facebook/share/model/ShareLinkContent$Builder;
    const-string v2, "contentUrl"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    .line 163
    const-string v2, "imageUrl"

    invoke-static {p0, v2}, Lcom/facebook/reactnative/androidsdk/Utility;->getValueOrNull(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 165
    const-string v2, "contentDescription"

    invoke-static {p0, v2}, Lcom/facebook/reactnative/androidsdk/Utility;->getValueOrNull(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 166
    const-string v2, "contentTitle"

    invoke-static {p0, v2}, Lcom/facebook/reactnative/androidsdk/Utility;->getValueOrNull(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 167
    const-string v2, "quote"

    invoke-static {p0, v2}, Lcom/facebook/reactnative/androidsdk/Utility;->getValueOrNull(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setQuote(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 168
    invoke-static {v0, p0}, Lcom/facebook/reactnative/androidsdk/Utility;->appendGenericContent(Lcom/facebook/share/model/ShareContent$Builder;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 169
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v2

    return-object v2

    .line 164
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static buildShareOpenGraphAction(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareOpenGraphAction;
    .locals 6
    .param p0, "shareOpenGraphActionMap"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 219
    new-instance v0, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;-><init>()V

    .line 220
    .local v0, "contentBuilder":Lcom/facebook/share/model/ShareOpenGraphAction$Builder;
    const-string v5, "actionType"

    invoke-interface {p0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->setActionType(Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphAction$Builder;

    .line 221
    const-string v5, "_properties"

    invoke-interface {p0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    .line 222
    .local v4, "properties":Lcom/facebook/react/bridge/ReadableMap;
    invoke-interface {v4}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v3

    .line 223
    .local v3, "keySetIterator":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :goto_0
    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v4, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    .line 226
    .local v1, "entry":Lcom/facebook/react/bridge/ReadableMap;
    const-string v5, "value"

    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/reactnative/androidsdk/Utility;->buildShareOpenGraphObject(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareOpenGraphObject;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->putObject(Ljava/lang/String;Lcom/facebook/share/model/ShareOpenGraphObject;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    goto :goto_0

    .line 228
    .end local v1    # "entry":Lcom/facebook/react/bridge/ReadableMap;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->build()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v5

    return-object v5
.end method

.method public static buildShareOpenGraphContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareContent;
    .locals 3
    .param p0, "shareContent"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 209
    new-instance v0, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;-><init>()V

    .line 210
    .local v0, "contentBuilder":Lcom/facebook/share/model/ShareOpenGraphContent$Builder;
    const-string v2, "contentUrl"

    invoke-static {p0, v2}, Lcom/facebook/reactnative/androidsdk/Utility;->getValueOrNull(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    .line 212
    const-string v2, "action"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/reactnative/androidsdk/Utility;->buildShareOpenGraphAction(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->setAction(Lcom/facebook/share/model/ShareOpenGraphAction;)Lcom/facebook/share/model/ShareOpenGraphContent$Builder;

    .line 213
    const-string v2, "previewPropertyName"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->setPreviewPropertyName(Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphContent$Builder;

    .line 214
    invoke-static {v0, p0}, Lcom/facebook/reactnative/androidsdk/Utility;->appendGenericContent(Lcom/facebook/share/model/ShareContent$Builder;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 215
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->build()Lcom/facebook/share/model/ShareOpenGraphContent;

    move-result-object v2

    return-object v2

    .line 211
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static buildShareOpenGraphObject(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareOpenGraphObject;
    .locals 8
    .param p0, "entry"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 232
    new-instance v0, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;-><init>()V

    .line 233
    .local v0, "contentBuilder":Lcom/facebook/share/model/ShareOpenGraphObject$Builder;
    const-string v5, "_properties"

    invoke-interface {p0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    .line 234
    .local v4, "value":Lcom/facebook/react/bridge/ReadableMap;
    invoke-interface {v4}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v2

    .line 235
    .local v2, "keySetIterator":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :goto_0
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 236
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v4, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    .line 238
    .local v3, "subEntry":Lcom/facebook/react/bridge/ReadableMap;
    const-string v5, "type"

    invoke-interface {v3, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 240
    :pswitch_0
    const-string v5, "value"

    invoke-interface {v3, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v0, v1, v6, v7}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->putDouble(Ljava/lang/String;D)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    goto :goto_0

    .line 238
    :sswitch_0
    const-string v7, "number"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string v7, "open-graph-object"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v7, "photo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_3
    const-string v7, "string"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    .line 243
    :pswitch_1
    const-string v5, "value"

    invoke-interface {v3, v5}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/reactnative/androidsdk/Utility;->buildShareOpenGraphObject(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareOpenGraphObject;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->putObject(Ljava/lang/String;Lcom/facebook/share/model/ShareOpenGraphObject;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    goto :goto_0

    .line 246
    :pswitch_2
    const-string v5, "value"

    invoke-interface {v3, v5}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/reactnative/androidsdk/Utility;->buildSharePhoto(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/SharePhoto;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->putPhoto(Ljava/lang/String;Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    goto :goto_0

    .line 249
    :pswitch_3
    const-string v5, "value"

    invoke-interface {v3, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    goto :goto_0

    .line 253
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "subEntry":Lcom/facebook/react/bridge/ReadableMap;
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->build()Lcom/facebook/share/model/ShareOpenGraphObject;

    move-result-object v5

    return-object v5

    .line 238
    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_0
        -0x352a9fef -> :sswitch_3
        0x65b3e32 -> :sswitch_2
        0x2e66df41 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static buildSharePhoto(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/SharePhoto;
    .locals 2
    .param p0, "photoMap"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 182
    new-instance v0, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    .line 183
    .local v0, "photoBuilder":Lcom/facebook/share/model/SharePhoto$Builder;
    const-string v1, "imageUrl"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$Builder;

    .line 184
    const-string v1, "caption"

    invoke-static {p0, v1}, Lcom/facebook/reactnative/androidsdk/Utility;->getValueOrNull(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$Builder;->setCaption(Ljava/lang/String;)Lcom/facebook/share/model/SharePhoto$Builder;

    .line 185
    const-string v1, "userGenerated"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const-string v1, "userGenerated"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$Builder;->setUserGenerated(Z)Lcom/facebook/share/model/SharePhoto$Builder;

    .line 188
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v1

    return-object v1
.end method

.method public static buildSharePhotoContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/SharePhotoContent;
    .locals 3
    .param p0, "sharePhotoContent"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 173
    new-instance v0, Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    .line 174
    .local v0, "contentBuilder":Lcom/facebook/share/model/SharePhotoContent$Builder;
    const-string v2, "photos"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/reactnative/androidsdk/Utility;->reactArrayToPhotoList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/share/model/SharePhotoContent$Builder;->setPhotos(Ljava/util/List;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    .line 175
    const-string v2, "contentUrl"

    invoke-static {p0, v2}, Lcom/facebook/reactnative/androidsdk/Utility;->getValueOrNull(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/facebook/share/model/SharePhotoContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    .line 177
    invoke-static {v0, p0}, Lcom/facebook/reactnative/androidsdk/Utility;->appendGenericContent(Lcom/facebook/share/model/ShareContent$Builder;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 178
    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v2

    return-object v2

    .line 176
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static buildShareVideo(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareVideo;
    .locals 2
    .param p0, "videoMap"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 273
    new-instance v0, Lcom/facebook/share/model/ShareVideo$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareVideo$Builder;-><init>()V

    .line 274
    .local v0, "videoBuilder":Lcom/facebook/share/model/ShareVideo$Builder;
    const-string v1, "localUrl"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    const-string v1, "localUrl"

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareVideo$Builder;->setLocalUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareVideo$Builder;

    .line 277
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareVideo$Builder;->build()Lcom/facebook/share/model/ShareVideo;

    move-result-object v1

    return-object v1
.end method

.method public static buildShareVideoContent(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareContent;
    .locals 3
    .param p0, "shareVideoContent"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 192
    new-instance v0, Lcom/facebook/share/model/ShareVideoContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareVideoContent$Builder;-><init>()V

    .line 193
    .local v0, "contentBuilder":Lcom/facebook/share/model/ShareVideoContent$Builder;
    const-string v2, "contentUrl"

    invoke-static {p0, v2}, Lcom/facebook/reactnative/androidsdk/Utility;->getValueOrNull(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareVideoContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    .line 195
    const-string v2, "contentDescription"

    .line 196
    invoke-static {p0, v2}, Lcom/facebook/reactnative/androidsdk/Utility;->getValueOrNull(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareVideoContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    .line 197
    const-string v2, "contentTitle"

    invoke-static {p0, v2}, Lcom/facebook/reactnative/androidsdk/Utility;->getValueOrNull(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareVideoContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    .line 198
    const-string v2, "previewPhoto"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    const-string v2, "previewPhoto"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/reactnative/androidsdk/Utility;->buildSharePhoto(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/SharePhoto;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareVideoContent$Builder;->setPreviewPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    .line 201
    :cond_0
    const-string v2, "video"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    const-string v2, "video"

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/reactnative/androidsdk/Utility;->buildShareVideo(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/ShareVideo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareVideoContent$Builder;->setVideo(Lcom/facebook/share/model/ShareVideo;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    .line 204
    :cond_1
    invoke-static {v0, p0}, Lcom/facebook/reactnative/androidsdk/Utility;->appendGenericContent(Lcom/facebook/share/model/ShareContent$Builder;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 205
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareVideoContent$Builder;->build()Lcom/facebook/share/model/ShareVideoContent;

    move-result-object v2

    return-object v2

    .line 194
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getValueOrNull(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "map"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static listToReactArray(Ljava/util/List;)Lcom/facebook/react/bridge/WritableArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/react/bridge/WritableArray;"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 306
    .local v0, "array":Lcom/facebook/react/bridge/WritableArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 307
    .local v1, "e":Ljava/lang/String;
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_0

    .line 309
    .end local v1    # "e":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static reactArrayToPhotoList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;
    .locals 4
    .param p0, "photos"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 282
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/SharePhoto;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 283
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    .line 284
    .local v2, "photoDetail":Lcom/facebook/react/bridge/ReadableMap;
    invoke-static {v2}, Lcom/facebook/reactnative/androidsdk/Utility;->buildSharePhoto(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/share/model/SharePhoto;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .end local v2    # "photoDetail":Lcom/facebook/react/bridge/ReadableMap;
    :cond_0
    return-object v1
.end method

.method public static reactArrayToStringList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;
    .locals 3
    .param p0, "array"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 298
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 299
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    return-object v1
.end method

.method public static setToStringArray(Ljava/util/Set;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 314
    .local v0, "array":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 315
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 316
    .local v1, "e":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aput-object v1, v0, v2

    move v2, v3

    .line 317
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 318
    .end local v1    # "e":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
