.class public Lcom/android/bluetooth/util/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static littleEndianByteArrayToInt([B)I
    .locals 4

    .line 35
    array-length v0, p0

    .line 36
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 37
    return v1

    .line 39
    :cond_0
    nop

    .line 40
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 41
    aget-byte v2, p0, v0

    invoke-static {v2}, Lcom/android/bluetooth/util/NumberUtils;->unsignedByteToInt(B)I

    move-result v2

    .line 42
    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 40
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 44
    :cond_1
    return v1
.end method

.method public static unsignedByteToInt(B)I
    .locals 0

    .line 28
    and-int/lit16 p0, p0, 0xff

    return p0
.end method
