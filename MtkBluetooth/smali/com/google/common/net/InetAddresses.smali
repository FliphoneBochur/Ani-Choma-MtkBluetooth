.class public final Lcom/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/InetAddresses$TeredoInfo;
    }
.end annotation


# static fields
.field private static final ANY4:Ljava/net/Inet4Address;

.field private static final IPV4_PART_COUNT:I = 0x4

.field private static final IPV4_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final IPV6_PART_COUNT:I = 0x8

.field private static final IPV6_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final LOOPBACK4:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 104
    const/16 v0, 0x2e

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/base/Splitter;->limit(I)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InetAddresses;->IPV4_SPLITTER:Lcom/google/common/base/Splitter;

    .line 105
    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/common/base/Splitter;->limit(I)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InetAddresses;->IPV6_SPLITTER:Lcom/google/common/base/Splitter;

    .line 106
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    .line 107
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/net/Inet4Address;
    .locals 1

    .line 101
    sget-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v0
.end method

.method private static bytesToInetAddress([B)Ljava/net/InetAddress;
    .locals 1

    .line 319
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 320
    :catch_0
    move-exception p0

    .line 321
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static coerceToInteger(Ljava/net/InetAddress;)I
    .locals 0

    .line 895
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/io/ByteArrayDataInput;->readInt()I

    move-result p0

    return p0
.end method

.method private static compressLongestRunOfZeroes([I)V
    .locals 6

    .line 365
    nop

    .line 366
    nop

    .line 367
    nop

    .line 368
    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    move v4, v3

    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, 0x1

    if-ge v1, v5, :cond_3

    .line 369
    array-length v5, p0

    if-ge v1, v5, :cond_0

    aget v5, p0, v1

    if-nez v5, :cond_0

    .line 370
    if-gez v4, :cond_2

    .line 371
    move v4, v1

    goto :goto_1

    .line 373
    :cond_0
    if-ltz v4, :cond_2

    .line 374
    sub-int v5, v1, v4

    .line 375
    if-le v5, v2, :cond_1

    .line 376
    nop

    .line 377
    move v3, v4

    move v2, v5

    .line 379
    :cond_1
    move v4, v0

    .line 368
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    :cond_3
    const/4 v1, 0x2

    if-lt v2, v1, :cond_4

    .line 383
    add-int/2addr v2, v3

    invoke-static {p0, v3, v2, v0}, Ljava/util/Arrays;->fill([IIII)V

    .line 385
    :cond_4
    return-void
.end method

.method private static convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 275
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 276
    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 278
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object p0

    .line 279
    if-nez p0, :cond_0

    .line 280
    const/4 p0, 0x0

    return-object p0

    .line 282
    :cond_0
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x3

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decrement(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 5

    .line 936
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 937
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 938
    :goto_0
    if-ltz v1, :cond_0

    aget-byte v3, v0, v1

    if-nez v3, :cond_0

    .line 939
    const/4 v3, -0x1

    aput-byte v3, v0, v1

    .line 940
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 943
    :cond_0
    if-ltz v1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v4, "Decrementing %s would wrap."

    invoke-static {v3, v4, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 945
    aget-byte p0, v0, v1

    sub-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    .line 946
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2

    .line 139
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 146
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    .line 143
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "\'%s\' is not an IP string literal."

    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2

    .line 460
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_0

    .line 465
    return-object v0

    .line 462
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "Not a valid URI IP literal: \'%s\'"

    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method private static forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2

    .line 470
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 477
    const/16 v0, 0x10

    goto :goto_0

    .line 479
    :cond_0
    nop

    .line 480
    const/4 v0, 0x4

    .line 484
    :goto_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 485
    if-eqz p0, :cond_2

    array-length v1, p0

    if-eq v1, v0, :cond_1

    goto :goto_1

    .line 489
    :cond_1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    .line 486
    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static varargs formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 992
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromInteger(I)Ljava/net/Inet4Address;
    .locals 0

    .line 905
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object p0

    return-object p0
.end method

.method public static fromLittleEndianByteArray([B)Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 919
    array-length v0, p0

    new-array v0, v0, [B

    .line 920
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 921
    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 920
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 923
    :cond_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public static get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3

    .line 576
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Address \'%s\' is not a 6to4 address."

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 578
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x6

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object p0

    return-object p0
.end method

.method public static getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;
    .locals 6

    .line 832
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 833
    check-cast p0, Ljava/net/Inet4Address;

    return-object p0

    .line 837
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 838
    nop

    .line 839
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xf

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 840
    aget-byte v5, v0, v2

    if-eqz v5, :cond_1

    .line 841
    nop

    .line 842
    move v2, v1

    goto :goto_1

    .line 839
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    .line 845
    :goto_1
    if-eqz v2, :cond_3

    aget-byte v5, v0, v3

    if-ne v5, v4, :cond_3

    .line 846
    sget-object p0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    return-object p0

    .line 847
    :cond_3
    if-eqz v2, :cond_4

    aget-byte v0, v0, v3

    if-nez v0, :cond_4

    .line 848
    sget-object p0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object p0

    .line 851
    :cond_4
    check-cast p0, Ljava/net/Inet6Address;

    .line 852
    nop

    .line 853
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 854
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/Inet4Address;->hashCode()I

    move-result p0

    int-to-long v0, p0

    goto :goto_2

    .line 858
    :cond_5
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p0

    const/16 v0, 0x8

    invoke-static {p0, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 862
    :goto_2
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_32()Lcom/google/common/hash/HashFunction;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lcom/google/common/hash/HashFunction;->hashLong(J)Lcom/google/common/hash/HashCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result p0

    .line 865
    const/high16 v0, -0x20000000

    or-int/2addr p0, v0

    .line 869
    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    .line 870
    const/4 p0, -0x2

    .line 873
    :cond_6
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object p0

    return-object p0
.end method

.method public static getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3

    .line 545
    nop

    .line 546
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    .line 545
    const-string v2, "Address \'%s\' is not IPv4-compatible."

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 548
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p0

    const/16 v0, 0xc

    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object p0

    return-object p0
.end method

.method public static getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 2

    .line 762
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object p0

    return-object p0

    .line 766
    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object p0

    return-object p0

    .line 770
    :cond_1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 771
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/net/InetAddresses$TeredoInfo;->getClient()Ljava/net/Inet4Address;

    move-result-object p0

    return-object p0

    .line 774
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "\'%s\' has no embedded IPv4 address."

    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method private static getInet4Address([B)Ljava/net/Inet4Address;
    .locals 3

    .line 119
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    const-string v2, "Byte array has invalid length for an IPv4 address: %s != 4."

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 125
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;

    return-object p0
.end method

.method public static getIsatapIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3

    .line 728
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isIsatapAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Address \'%s\' is not an ISATAP address."

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 730
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p0

    const/16 v0, 0xc

    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object p0

    return-object p0
.end method

.method public static getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;
    .locals 5

    .line 667
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Address \'%s\' is not a Teredo address."

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 669
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p0

    .line 670
    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    .line 672
    invoke-static {p0, v1}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 675
    const/16 v3, 0xa

    invoke-static {p0, v3}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v3

    not-int v3, v3

    and-int/2addr v2, v3

    .line 677
    const/16 v3, 0xc

    const/16 v4, 0x10

    invoke-static {p0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 678
    const/4 v3, 0x0

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 680
    aget-byte v4, p0, v3

    not-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 678
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 682
    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object p0

    .line 684
    new-instance v3, Lcom/google/common/net/InetAddresses$TeredoInfo;

    invoke-direct {v3, v0, p0, v2, v1}, Lcom/google/common/net/InetAddresses$TeredoInfo;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V

    return-object v3
.end method

.method public static hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z
    .locals 1

    .line 746
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static hextetsToIPv6String([I)Ljava/lang/String;
    .locals 5

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 401
    nop

    .line 402
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_5

    .line 403
    aget v4, p0, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 404
    :goto_1
    if-eqz v4, :cond_2

    .line 405
    if-eqz v3, :cond_1

    .line 406
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    :cond_1
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 410
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_4

    .line 411
    :cond_3
    const-string v3, "::"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_4
    :goto_2
    nop

    .line 402
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    .line 416
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static increment(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 6

    .line 959
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 960
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 961
    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_0

    aget-byte v4, v0, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 962
    aput-byte v3, v0, v1

    .line 963
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 966
    :cond_0
    if-ltz v1, :cond_1

    move v3, v2

    :cond_1
    const-string v4, "Incrementing %s would wrap."

    invoke-static {v3, v4, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 968
    aget-byte p0, v0, v1

    add-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    .line 969
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method private static ipStringToBytes(Ljava/lang/String;)[B
    .locals 7

    .line 163
    nop

    .line 164
    nop

    .line 165
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-ge v0, v3, :cond_4

    .line 166
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 167
    const/16 v5, 0x2e

    const/4 v6, 0x1

    if-ne v3, v5, :cond_0

    .line 168
    move v2, v6

    goto :goto_1

    .line 169
    :cond_0
    const/16 v5, 0x3a

    if-ne v3, v5, :cond_2

    .line 170
    if-eqz v2, :cond_1

    .line 171
    return-object v4

    .line 173
    :cond_1
    move v1, v6

    goto :goto_1

    .line 174
    :cond_2
    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    .line 175
    return-object v4

    .line 165
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_4
    if-eqz v1, :cond_6

    .line 181
    if-eqz v2, :cond_5

    .line 182
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 183
    if-nez p0, :cond_5

    .line 184
    return-object v4

    .line 187
    :cond_5
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 188
    :cond_6
    if-eqz v2, :cond_7

    .line 189
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 191
    :cond_7
    return-object v4
.end method

.method public static is6to4Address(Ljava/net/Inet6Address;)Z
    .locals 4

    .line 564
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p0

    .line 565
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    aget-byte p0, p0, v2

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method public static isCompatIPv4Address(Ljava/net/Inet6Address;)Z
    .locals 4

    .line 522
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 523
    return v1

    .line 526
    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p0

    .line 527
    const/16 v0, 0xc

    aget-byte v0, p0, v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/16 v0, 0xd

    aget-byte v0, p0, v0

    if-nez v0, :cond_2

    const/16 v0, 0xe

    aget-byte v0, p0, v0

    if-nez v0, :cond_2

    const/16 v0, 0xf

    aget-byte v3, p0, v0

    if-eqz v3, :cond_1

    aget-byte p0, p0, v0

    if-ne p0, v2, :cond_2

    .line 531
    :cond_1
    return v1

    .line 534
    :cond_2
    return v2
.end method

.method public static isInetAddress(Ljava/lang/String;)Z
    .locals 0

    .line 157
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isIsatapAddress(Ljava/net/Inet6Address;)Z
    .locals 3

    .line 704
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 705
    return v1

    .line 708
    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p0

    .line 710
    const/16 v0, 0x8

    aget-byte v0, p0, v0

    const/4 v2, 0x3

    or-int/2addr v0, v2

    if-eq v0, v2, :cond_1

    .line 714
    return v1

    .line 717
    :cond_1
    const/16 v0, 0x9

    aget-byte v0, p0, v0

    if-nez v0, :cond_2

    const/16 v0, 0xa

    aget-byte v0, p0, v0

    const/16 v2, 0x5e

    if-ne v0, v2, :cond_2

    const/16 v0, 0xb

    aget-byte p0, p0, v0

    const/4 v0, -0x2

    if-ne p0, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isMappedIPv4Address(Ljava/lang/String;)Z
    .locals 4

    .line 796
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 797
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    array-length v1, p0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 798
    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 799
    aget-byte v2, p0, v1

    if-eqz v2, :cond_0

    .line 800
    return v0

    .line 798
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 803
    :cond_1
    nop

    :goto_1
    const/16 v1, 0xc

    if-ge v2, v1, :cond_3

    .line 804
    aget-byte v1, p0, v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 805
    return v0

    .line 803
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 808
    :cond_3
    const/4 p0, 0x1

    return p0

    .line 810
    :cond_4
    return v0
.end method

.method public static isMaximum(Ljava/net/InetAddress;)Z
    .locals 4

    .line 981
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    .line 982
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 983
    aget-byte v2, p0, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 984
    return v0

    .line 982
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 987
    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isTeredoAddress(Ljava/net/Inet6Address;)Z
    .locals 4

    .line 652
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p0

    .line 653
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    aget-byte v1, p0, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    if-nez p0, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method public static isUriInetAddress(Ljava/lang/String;)Z
    .locals 0

    .line 500
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static parseHextet(Ljava/lang/String;)S
    .locals 1

    .line 300
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 301
    const v0, 0xffff

    if-gt p0, v0, :cond_0

    .line 304
    int-to-short p0, p0

    return p0

    .line 302
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0
.end method

.method private static parseOctet(Ljava/lang/String;)B
    .locals 2

    .line 289
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 292
    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x1

    if-gt p0, v1, :cond_1

    .line 295
    :cond_0
    int-to-byte p0, v0

    return p0

    .line 293
    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0
.end method

.method private static textToNumericFormatV4(Ljava/lang/String;)[B
    .locals 6

    .line 196
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 197
    nop

    .line 199
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/google/common/net/InetAddresses;->IPV4_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v3, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 200
    add-int/lit8 v5, v3, 0x1

    invoke-static {v4}, Lcom/google/common/net/InetAddresses;->parseOctet(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    move v3, v5

    goto :goto_0

    .line 204
    :cond_0
    nop

    .line 206
    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    return-object v1

    .line 202
    :catch_0
    move-exception p0

    .line 203
    return-object v2
.end method

.method private static textToNumericFormatV6(Ljava/lang/String;)[B
    .locals 8

    .line 212
    sget-object v0, Lcom/google/common/net/InetAddresses;->IPV6_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    .line 213
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_e

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x9

    if-le v0, v2, :cond_0

    goto/16 :goto_6

    .line 219
    :cond_0
    nop

    .line 220
    const/4 v0, -0x1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_3

    .line 221
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 222
    if-ltz v0, :cond_1

    .line 223
    return-object v1

    .line 225
    :cond_1
    move v0, v3

    .line 220
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    :cond_3
    const/4 v3, 0x0

    if-ltz v0, :cond_6

    .line 233
    nop

    .line 234
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    .line 235
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    add-int/lit8 v5, v0, -0x1

    if-eqz v5, :cond_5

    .line 236
    return-object v1

    .line 235
    :cond_4
    move v5, v0

    .line 238
    :cond_5
    invoke-static {p0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_7

    add-int/lit8 v4, v4, -0x1

    if-eqz v4, :cond_7

    .line 239
    return-object v1

    .line 244
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 245
    move v4, v3

    .line 250
    :cond_7
    add-int v6, v5, v4

    rsub-int/lit8 v6, v6, 0x8

    .line 251
    if-ltz v0, :cond_8

    if-lt v6, v2, :cond_9

    goto :goto_1

    :cond_8
    if-eqz v6, :cond_a

    .line 252
    :cond_9
    return-object v1

    .line 256
    :cond_a
    :goto_1
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 258
    move v2, v3

    :goto_2
    if-ge v2, v5, :cond_b

    .line 259
    :try_start_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 267
    :catch_0
    move-exception p0

    goto :goto_5

    .line 261
    :cond_b
    move v2, v3

    :goto_3
    if-ge v2, v6, :cond_c

    .line 262
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 264
    :cond_c
    nop

    :goto_4
    if-lez v4, :cond_d

    .line 265
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 268
    :goto_5
    return-object v1

    .line 269
    :cond_d
    nop

    .line 270
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    .line 214
    :cond_e
    :goto_6
    return-object v1
.end method

.method public static toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 6

    .line 341
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 346
    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 347
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    .line 348
    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 349
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 350
    mul-int/lit8 v4, v3, 0x2

    aget-byte v5, p0, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    invoke-static {v2, v2, v5, v4}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v4

    aput v4, v1, v3

    .line 349
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 352
    :cond_1
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->compressLongestRunOfZeroes([I)V

    .line 353
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->hextetsToIPv6String([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUriString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 2

    .line 439
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 442
    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
