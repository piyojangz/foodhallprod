.class public final Lcom/airbnb/android/react/maps/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/react/maps/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final MapAttrs:[I

.field public static final MapAttrs_ambientEnabled:I = 0x10

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraMaxZoomPreference:I = 0x12

.field public static final MapAttrs_cameraMinZoomPreference:I = 0x11

.field public static final MapAttrs_cameraTargetLat:I = 0x2

.field public static final MapAttrs_cameraTargetLng:I = 0x3

.field public static final MapAttrs_cameraTilt:I = 0x4

.field public static final MapAttrs_cameraZoom:I = 0x5

.field public static final MapAttrs_latLngBoundsNorthEastLatitude:I = 0x15

.field public static final MapAttrs_latLngBoundsNorthEastLongitude:I = 0x16

.field public static final MapAttrs_latLngBoundsSouthWestLatitude:I = 0x13

.field public static final MapAttrs_latLngBoundsSouthWestLongitude:I = 0x14

.field public static final MapAttrs_liteMode:I = 0x6

.field public static final MapAttrs_mapType:I = 0x0

.field public static final MapAttrs_uiCompass:I = 0x7

.field public static final MapAttrs_uiMapToolbar:I = 0xf

.field public static final MapAttrs_uiRotateGestures:I = 0x8

.field public static final MapAttrs_uiScrollGestures:I = 0x9

.field public static final MapAttrs_uiTiltGestures:I = 0xa

.field public static final MapAttrs_uiZoomControls:I = 0xb

.field public static final MapAttrs_uiZoomGestures:I = 0xc

.field public static final MapAttrs_useViewLifecycle:I = 0xd

.field public static final MapAttrs_zOrderOnTop:I = 0xe

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 115
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/airbnb/android/react/maps/R$styleable;->LoadingImageView:[I

    .line 119
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/airbnb/android/react/maps/R$styleable;->MapAttrs:[I

    .line 143
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/airbnb/android/react/maps/R$styleable;->SignInButton:[I

    return-void

    .line 115
    nop

    :array_0
    .array-data 4
        0x7f0100cf
        0x7f0100d0
        0x7f0100d1
    .end array-data

    .line 119
    :array_1
    .array-data 4
        0x7f0100d2
        0x7f0100d3
        0x7f0100d4
        0x7f0100d5
        0x7f0100d6
        0x7f0100d7
        0x7f0100d8
        0x7f0100d9
        0x7f0100da
        0x7f0100db
        0x7f0100dc
        0x7f0100dd
        0x7f0100de
        0x7f0100df
        0x7f0100e0
        0x7f0100e1
        0x7f0100e2
        0x7f0100e3
        0x7f0100e4
        0x7f0100e5
        0x7f0100e6
        0x7f0100e7
        0x7f0100e8
    .end array-data

    .line 143
    :array_2
    .array-data 4
        0x7f0100fe
        0x7f0100ff
        0x7f010100
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
