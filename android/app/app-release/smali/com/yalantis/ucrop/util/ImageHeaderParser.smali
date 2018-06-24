.class public Lcom/yalantis/ucrop/util/ImageHeaderParser;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/util/ImageHeaderParser$StreamReader;,
        Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;,
        Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;
    }
.end annotation


# static fields
.field private static final BYTES_PER_FORMAT:[I

.field private static final EXIF_MAGIC_NUMBER:I = 0xffd8

.field private static final EXIF_SEGMENT_TYPE:I = 0xe1

.field private static final INTEL_TIFF_MAGIC_NUMBER:I = 0x4949

.field private static final JPEG_EXIF_SEGMENT_PREAMBLE:Ljava/lang/String; = "Exif\u0000\u0000"

.field private static final JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

.field private static final MARKER_EOI:I = 0xd9

.field private static final MOTOROLA_TIFF_MAGIC_NUMBER:I = 0x4d4d

.field private static final ORIENTATION_TAG_TYPE:I = 0x112

.field private static final SEGMENT_SOS:I = 0xda

.field private static final SEGMENT_START_ID:I = 0xff

.field private static final TAG:Ljava/lang/String; = "ImageHeaderParser"

.field public static final UNKNOWN_ORIENTATION:I = -0x1


# instance fields
.field private final reader:Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "Exif\u0000\u0000"

    const-string v1, "UTF-8"

    .line 62
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/yalantis/ucrop/util/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    .line 68
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yalantis/ucrop/util/ImageHeaderParser;->BYTES_PER_FORMAT:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/yalantis/ucrop/util/ImageHeaderParser$StreamReader;

    invoke-direct {v0, p1}, Lcom/yalantis/ucrop/util/ImageHeaderParser$StreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser;->reader:Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;

    .line 74
    return-void
.end method

.method private static calcTagOffset(II)I
    .locals 2
    .param p0, "ifdOffset"    # I
    .param p1, "tagIndex"    # I

    .prologue
    .line 277
    add-int/lit8 v0, p0, 0x2

    mul-int/lit8 v1, p1, 0xc

    add-int/2addr v0, v1

    return v0
.end method

.method public static copyExif(Landroid/media/ExifInterface;IILjava/lang/String;)V
    .locals 8
    .param p0, "originalExif"    # Landroid/media/ExifInterface;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageOutputPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 379
    const/16 v6, 0x16

    new-array v1, v6, [Ljava/lang/String;

    const-string v6, "FNumber"

    aput-object v6, v1, v5

    const/4 v6, 0x1

    const-string v7, "DateTime"

    aput-object v7, v1, v6

    const/4 v6, 0x2

    const-string v7, "DateTimeDigitized"

    aput-object v7, v1, v6

    const/4 v6, 0x3

    const-string v7, "ExposureTime"

    aput-object v7, v1, v6

    const/4 v6, 0x4

    const-string v7, "Flash"

    aput-object v7, v1, v6

    const/4 v6, 0x5

    const-string v7, "FocalLength"

    aput-object v7, v1, v6

    const/4 v6, 0x6

    const-string v7, "GPSAltitude"

    aput-object v7, v1, v6

    const/4 v6, 0x7

    const-string v7, "GPSAltitudeRef"

    aput-object v7, v1, v6

    const/16 v6, 0x8

    const-string v7, "GPSDateStamp"

    aput-object v7, v1, v6

    const/16 v6, 0x9

    const-string v7, "GPSLatitude"

    aput-object v7, v1, v6

    const/16 v6, 0xa

    const-string v7, "GPSLatitudeRef"

    aput-object v7, v1, v6

    const/16 v6, 0xb

    const-string v7, "GPSLongitude"

    aput-object v7, v1, v6

    const/16 v6, 0xc

    const-string v7, "GPSLongitudeRef"

    aput-object v7, v1, v6

    const/16 v6, 0xd

    const-string v7, "GPSProcessingMethod"

    aput-object v7, v1, v6

    const/16 v6, 0xe

    const-string v7, "GPSTimeStamp"

    aput-object v7, v1, v6

    const/16 v6, 0xf

    const-string v7, "ISOSpeedRatings"

    aput-object v7, v1, v6

    const/16 v6, 0x10

    const-string v7, "Make"

    aput-object v7, v1, v6

    const/16 v6, 0x11

    const-string v7, "Model"

    aput-object v7, v1, v6

    const/16 v6, 0x12

    const-string v7, "SubSecTime"

    aput-object v7, v1, v6

    const/16 v6, 0x13

    const-string v7, "SubSecTimeDigitized"

    aput-object v7, v1, v6

    const/16 v6, 0x14

    const-string v7, "SubSecTimeOriginal"

    aput-object v7, v1, v6

    const/16 v6, 0x15

    const-string v7, "WhiteBalance"

    aput-object v7, v1, v6

    .line 405
    .local v1, "attributes":[Ljava/lang/String;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 407
    .local v3, "newExif":Landroid/media/ExifInterface;
    array-length v6, v1

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 408
    .local v0, "attribute":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 409
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 410
    invoke-virtual {v3, v0, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 413
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    const-string v5, "ImageWidth"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v5, "ImageLength"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v5, "Orientation"

    const-string v6, "0"

    invoke-virtual {v3, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {v3}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .end local v3    # "newExif":Landroid/media/ExifInterface;
    :goto_1
    return-void

    .line 419
    :catch_0
    move-exception v2

    .line 420
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "ImageHeaderParser"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static handles(I)Z
    .locals 2
    .param p0, "imageMagicNumber"    # I

    .prologue
    const v1, 0xffd8

    .line 281
    and-int v0, p0, v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x4d4d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4949

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasJpegExifPreamble([BI)Z
    .locals 4
    .param p1, "exifData"    # [B
    .param p2, "exifSegmentLength"    # I

    .prologue
    .line 129
    if-eqz p1, :cond_1

    sget-object v2, Lcom/yalantis/ucrop/util/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    array-length v2, v2

    if-le p2, v2, :cond_1

    const/4 v1, 0x1

    .line 131
    .local v1, "result":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/yalantis/ucrop/util/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 133
    aget-byte v2, p1, v0

    sget-object v3, Lcom/yalantis/ucrop/util/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_2

    .line 134
    const/4 v1, 0x0

    .line 139
    .end local v0    # "i":I
    :cond_0
    return v1

    .line 129
    .end local v1    # "result":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 132
    .restart local v0    # "i":I
    .restart local v1    # "result":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private moveToExifSegmentAndGetLength()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v3, -0x1

    .line 150
    :cond_0
    iget-object v6, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser;->reader:Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;

    invoke-interface {v6}, Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;->getUInt8()S

    move-result v0

    .line 151
    .local v0, "segmentId":S
    const/16 v6, 0xff

    if-eq v0, v6, :cond_3

    .line 152
    const-string v6, "ImageHeaderParser"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 153
    const-string v6, "ImageHeaderParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown segmentId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v1, v3

    .line 184
    :cond_2
    :goto_0
    return v1

    .line 158
    :cond_3
    iget-object v6, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser;->reader:Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;

    invoke-interface {v6}, Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;->getUInt8()S

    move-result v2

    .line 160
    .local v2, "segmentType":S
    const/16 v6, 0xda

    if-ne v2, v6, :cond_4

    move v1, v3

    .line 161
    goto :goto_0

    .line 162
    :cond_4
    const/16 v6, 0xd9

    if-ne v2, v6, :cond_6

    .line 163
    const-string v6, "ImageHeaderParser"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 164
    const-string v6, "ImageHeaderParser"

    const-string v7, "Found MARKER_EOI in exif segment"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v1, v3

    .line 166
    goto :goto_0

    .line 170
    :cond_6
    iget-object v6, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser;->reader:Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;

    invoke-interface {v6}, Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;->getUInt16()I

    move-result v6

    add-int/lit8 v1, v6, -0x2

    .line 172
    .local v1, "segmentLength":I
    const/16 v6, 0xe1

    if-eq v2, v6, :cond_2

    .line 173
    iget-object v6, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser;->reader:Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;

    int-to-long v8, v1

    invoke-interface {v6, v8, v9}, Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;->skip(J)J

    move-result-wide v4

    .line 174
    .local v4, "skipped":J
    int-to-long v6, v1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 175
    const-string v6, "ImageHeaderParser"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 176
    const-string v6, "ImageHeaderParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to skip enough data, type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", wanted to skip: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but actually skipped: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v1, v3

    .line 181
    goto :goto_0
.end method

.method private static parseExifSegment(Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;)I
    .locals 15
    .param p0, "segmentData"    # Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;

    .prologue
    .line 190
    const-string v12, "Exif\u0000\u0000"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v6

    .line 192
    .local v6, "headerOffsetSize":I
    invoke-virtual {p0, v6}, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v2

    .line 194
    .local v2, "byteOrderIdentifier":S
    const/16 v12, 0x4d4d

    if-ne v2, v12, :cond_1

    .line 195
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 205
    .local v1, "byteOrder":Ljava/nio/ByteOrder;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;->order(Ljava/nio/ByteOrder;)V

    .line 207
    add-int/lit8 v12, v6, 0x4

    invoke-virtual {p0, v12}, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v12

    add-int v4, v12, v6

    .line 208
    .local v4, "firstIfdOffset":I
    invoke-virtual {p0, v4}, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v8

    .line 211
    .local v8, "tagCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_e

    .line 212
    invoke-static {v4, v7}, Lcom/yalantis/ucrop/util/ImageHeaderParser;->calcTagOffset(II)I

    move-result v9

    .line 213
    .local v9, "tagOffset":I
    invoke-virtual {p0, v9}, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v10

    .line 216
    .local v10, "tagType":I
    const/16 v12, 0x112

    if-eq v10, v12, :cond_4

    .line 211
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 196
    .end local v1    # "byteOrder":Ljava/nio/ByteOrder;
    .end local v4    # "firstIfdOffset":I
    .end local v7    # "i":I
    .end local v8    # "tagCount":I
    .end local v9    # "tagOffset":I
    .end local v10    # "tagType":I
    :cond_1
    const/16 v12, 0x4949

    if-ne v2, v12, :cond_2

    .line 197
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .restart local v1    # "byteOrder":Ljava/nio/ByteOrder;
    goto :goto_0

    .line 199
    .end local v1    # "byteOrder":Ljava/nio/ByteOrder;
    :cond_2
    const-string v12, "ImageHeaderParser"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 200
    const-string v12, "ImageHeaderParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown endianness = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_3
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .restart local v1    # "byteOrder":Ljava/nio/ByteOrder;
    goto :goto_0

    .line 220
    .restart local v4    # "firstIfdOffset":I
    .restart local v7    # "i":I
    .restart local v8    # "tagCount":I
    .restart local v9    # "tagOffset":I
    .restart local v10    # "tagType":I
    :cond_4
    add-int/lit8 v12, v9, 0x2

    invoke-virtual {p0, v12}, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v5

    .line 223
    .local v5, "formatCode":I
    const/4 v12, 0x1

    if-lt v5, v12, :cond_5

    const/16 v12, 0xc

    if-le v5, v12, :cond_6

    .line 224
    :cond_5
    const-string v12, "ImageHeaderParser"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 225
    const-string v12, "ImageHeaderParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Got invalid format code = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 230
    :cond_6
    add-int/lit8 v12, v9, 0x4

    invoke-virtual {p0, v12}, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v3

    .line 232
    .local v3, "componentCount":I
    if-gez v3, :cond_7

    .line 233
    const-string v12, "ImageHeaderParser"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 234
    const-string v12, "ImageHeaderParser"

    const-string v13, "Negative tiff component count"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 239
    :cond_7
    const-string v12, "ImageHeaderParser"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 240
    const-string v12, "ImageHeaderParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Got tagIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " tagType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " formatCode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " componentCount="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_8
    sget-object v12, Lcom/yalantis/ucrop/util/ImageHeaderParser;->BYTES_PER_FORMAT:[I

    aget v12, v12, v5

    add-int v0, v3, v12

    .line 246
    .local v0, "byteCount":I
    const/4 v12, 0x4

    if-le v0, v12, :cond_9

    .line 247
    const-string v12, "ImageHeaderParser"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 248
    const-string v12, "ImageHeaderParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Got byte count > 4, not orientation, continuing, formatCode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 253
    :cond_9
    add-int/lit8 v11, v9, 0x8

    .line 255
    .local v11, "tagValueOffset":I
    if-ltz v11, :cond_a

    invoke-virtual {p0}, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;->length()I

    move-result v12

    if-le v11, v12, :cond_b

    .line 256
    :cond_a
    const-string v12, "ImageHeaderParser"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 257
    const-string v12, "ImageHeaderParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Illegal tagValueOffset="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " tagType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 262
    :cond_b
    if-ltz v0, :cond_c

    add-int v12, v11, v0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;->length()I

    move-result v13

    if-le v12, v13, :cond_d

    .line 263
    :cond_c
    const-string v12, "ImageHeaderParser"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 264
    const-string v12, "ImageHeaderParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Illegal number of bytes for TI tag data tagType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 270
    :cond_d
    invoke-virtual {p0, v11}, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v12

    .line 273
    .end local v0    # "byteCount":I
    .end local v3    # "componentCount":I
    .end local v5    # "formatCode":I
    .end local v9    # "tagOffset":I
    .end local v10    # "tagType":I
    .end local v11    # "tagValueOffset":I
    :goto_3
    return v12

    :cond_e
    const/4 v12, -0x1

    goto :goto_3
.end method

.method private parseExifSegment([BI)I
    .locals 6
    .param p1, "tempArray"    # [B
    .param p2, "exifSegmentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v2, -0x1

    .line 107
    iget-object v3, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser;->reader:Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;

    invoke-interface {v3, p1, p2}, Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;->read([BI)I

    move-result v1

    .line 108
    .local v1, "read":I
    if-eq v1, p2, :cond_1

    .line 109
    const-string v3, "ImageHeaderParser"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    const-string v3, "ImageHeaderParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read exif segment data, length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actually read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    :goto_0
    return v2

    .line 117
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/yalantis/ucrop/util/ImageHeaderParser;->hasJpegExifPreamble([BI)Z

    move-result v0

    .line 118
    .local v0, "hasJpegExifPreamble":Z
    if-eqz v0, :cond_2

    .line 119
    new-instance v2, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;

    invoke-direct {v2, p1, p2}, Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;-><init>([BI)V

    invoke-static {v2}, Lcom/yalantis/ucrop/util/ImageHeaderParser;->parseExifSegment(Lcom/yalantis/ucrop/util/ImageHeaderParser$RandomAccessReader;)I

    move-result v2

    goto :goto_0

    .line 121
    :cond_2
    const-string v3, "ImageHeaderParser"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    const-string v3, "ImageHeaderParser"

    const-string v4, "Missing jpeg exif preamble"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getOrientation()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v3, -0x1

    .line 85
    iget-object v4, p0, Lcom/yalantis/ucrop/util/ImageHeaderParser;->reader:Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;

    invoke-interface {v4}, Lcom/yalantis/ucrop/util/ImageHeaderParser$Reader;->getUInt16()I

    move-result v2

    .line 87
    .local v2, "magicNumber":I
    invoke-static {v2}, Lcom/yalantis/ucrop/util/ImageHeaderParser;->handles(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 88
    const-string v4, "ImageHeaderParser"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    const-string v4, "ImageHeaderParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parser doesn\'t handle magic number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    :goto_0
    return v3

    .line 93
    :cond_1
    invoke-direct {p0}, Lcom/yalantis/ucrop/util/ImageHeaderParser;->moveToExifSegmentAndGetLength()I

    move-result v1

    .line 94
    .local v1, "exifSegmentLength":I
    if-ne v1, v3, :cond_2

    .line 95
    const-string v4, "ImageHeaderParser"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    const-string v4, "ImageHeaderParser"

    const-string v5, "Failed to parse exif segment length, or exif segment not found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :cond_2
    new-array v0, v1, [B

    .line 102
    .local v0, "exifData":[B
    invoke-direct {p0, v0, v1}, Lcom/yalantis/ucrop/util/ImageHeaderParser;->parseExifSegment([BI)I

    move-result v3

    goto :goto_0
.end method
