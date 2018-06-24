.class final Lcom/airbnb/android/airmapview/RuntimePermissionUtils;
.super Ljava/lang/Object;
.source "RuntimePermissionUtils.java"


# static fields
.field private static final LOCATION_PERMISSIONS:[Ljava/lang/String;

.field private static final LOCATION_PERMISSION_REQUEST_CODE:B = 0x1t


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/airmapview/RuntimePermissionUtils;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static checkLocationPermissions(Landroid/app/Activity;Lcom/airbnb/android/airmapview/AirMapInterface;)Z
    .locals 3
    .param p0, "targetActivity"    # Landroid/app/Activity;
    .param p1, "airMapInterface"    # Lcom/airbnb/android/airmapview/AirMapInterface;

    .prologue
    const/4 v0, 0x1

    .line 72
    sget-object v1, Lcom/airbnb/android/airmapview/RuntimePermissionUtils;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/airbnb/android/airmapview/RuntimePermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-interface {p1}, Lcom/airbnb/android/airmapview/AirMapInterface;->onLocationPermissionsGranted()V

    .line 79
    :goto_0
    return v0

    .line 75
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 76
    sget-object v1, Lcom/airbnb/android/airmapview/RuntimePermissionUtils;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static varargs hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 42
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 43
    .local v0, "permission":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 44
    const/4 v1, 0x1

    .line 47
    .end local v0    # "permission":Ljava/lang/String;
    :cond_0
    return v1

    .line 42
    .restart local v0    # "permission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static onRequestPermissionsResult(Lcom/airbnb/android/airmapview/AirMapInterface;I[I)V
    .locals 1
    .param p0, "airMapInterface"    # Lcom/airbnb/android/airmapview/AirMapInterface;
    .param p1, "requestCode"    # I
    .param p2, "grantResults"    # [I

    .prologue
    .line 92
    packed-switch p1, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 94
    :pswitch_0
    invoke-static {p2}, Lcom/airbnb/android/airmapview/RuntimePermissionUtils;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {p0}, Lcom/airbnb/android/airmapview/AirMapInterface;->onLocationPermissionsGranted()V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static varargs shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 56
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 57
    .local v0, "permission":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    const/4 v1, 0x1

    .line 61
    .end local v0    # "permission":Ljava/lang/String;
    :cond_0
    return v1

    .line 56
    .restart local v0    # "permission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static varargs verifyPermissions([I)Z
    .locals 4
    .param p0, "grantResults"    # [I

    .prologue
    const/4 v1, 0x0

    .line 30
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, p0, v2

    .line 31
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 35
    .end local v0    # "result":I
    :goto_1
    return v1

    .line 30
    .restart local v0    # "result":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "result":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
