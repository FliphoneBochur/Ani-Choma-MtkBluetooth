.class final Lcom/google/protobuf/Utf8$UnsafeProcessor;
.super Lcom/google/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsafeProcessor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1169
    invoke-direct {p0}, Lcom/google/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method static isAvailable()Z
    .locals 1

    .line 1172
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static partialIsValidUtf8(JI)I
    .locals 8

    .line 1774
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii(JI)I

    move-result v0

    .line 1775
    int-to-long v1, v0

    add-long/2addr p0, v1

    .line 1776
    sub-int/2addr p2, v0

    .line 1782
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    .line 1783
    :goto_1
    const-wide/16 v2, 0x1

    if-lez p2, :cond_1

    add-long v4, p0, v2

    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 p2, p2, -0x1

    move-wide p0, v4

    goto :goto_1

    :cond_0
    move-wide p0, v4

    .line 1784
    :cond_1
    if-nez p2, :cond_2

    .line 1785
    return v0

    .line 1787
    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 1789
    const/16 v0, -0x20

    const/16 v4, -0x41

    const/4 v5, -0x1

    if-ge v1, v0, :cond_6

    .line 1792
    if-nez p2, :cond_3

    .line 1794
    return v1

    .line 1796
    :cond_3
    add-int/lit8 p2, p2, -0x1

    .line 1800
    const/16 v0, -0x3e

    if-lt v1, v0, :cond_5

    add-long/2addr v2, p0

    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-le p0, v4, :cond_4

    goto :goto_2

    :cond_4
    move-wide p0, v2

    goto :goto_4

    .line 1801
    :cond_5
    :goto_2
    return v5

    .line 1803
    :cond_6
    const/16 v6, -0x10

    if-ge v1, v6, :cond_c

    .line 1806
    const/4 v6, 0x2

    if-ge p2, v6, :cond_7

    .line 1808
    invoke-static {p0, p1, v1, p2}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result p0

    return p0

    .line 1810
    :cond_7
    add-int/lit8 p2, p2, -0x2

    .line 1812
    add-long v6, p0, v2

    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    .line 1813
    if-gt p0, v4, :cond_b

    const/16 p1, -0x60

    if-ne v1, v0, :cond_8

    if-lt p0, p1, :cond_b

    :cond_8
    const/16 v0, -0x13

    if-ne v1, v0, :cond_9

    if-ge p0, p1, :cond_b

    :cond_9
    add-long/2addr v2, v6

    .line 1819
    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-le p0, v4, :cond_a

    goto :goto_3

    .line 1822
    :cond_a
    move-wide p0, v2

    goto :goto_4

    .line 1820
    :cond_b
    :goto_3
    return v5

    .line 1825
    :cond_c
    const/4 v0, 0x3

    if-ge p2, v0, :cond_d

    .line 1827
    invoke-static {p0, p1, v1, p2}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result p0

    return p0

    .line 1829
    :cond_d
    add-int/lit8 p2, p2, -0x3

    .line 1831
    add-long v6, p0, v2

    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    .line 1832
    if-gt p0, v4, :cond_f

    shl-int/lit8 p1, v1, 0x1c

    add-int/lit8 p0, p0, 0x70

    add-int/2addr p1, p0

    shr-int/lit8 p0, p1, 0x1e

    if-nez p0, :cond_f

    add-long p0, v6, v2

    .line 1839
    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-gt v0, v4, :cond_f

    add-long/2addr v2, p0

    .line 1841
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-le p0, v4, :cond_e

    goto :goto_5

    :cond_e
    move-wide p0, v2

    .line 1845
    :goto_4
    goto/16 :goto_0

    .line 1842
    :cond_f
    :goto_5
    return v5
.end method

.method private static partialIsValidUtf8([BJI)I
    .locals 8

    .line 1700
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii([BJI)I

    move-result v0

    .line 1701
    sub-int/2addr p3, v0

    .line 1702
    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 1708
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    .line 1709
    :goto_1
    const-wide/16 v2, 0x1

    if-lez p3, :cond_1

    add-long v4, p1, v2

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 p3, p3, -0x1

    move-wide p1, v4

    goto :goto_1

    :cond_0
    move-wide p1, v4

    .line 1710
    :cond_1
    if-nez p3, :cond_2

    .line 1711
    return v0

    .line 1713
    :cond_2
    add-int/lit8 p3, p3, -0x1

    .line 1716
    const/16 v0, -0x20

    const/16 v4, -0x41

    const/4 v5, -0x1

    if-ge v1, v0, :cond_6

    .line 1718
    if-nez p3, :cond_3

    .line 1720
    return v1

    .line 1722
    :cond_3
    add-int/lit8 p3, p3, -0x1

    .line 1726
    const/16 v0, -0x3e

    if-lt v1, v0, :cond_5

    add-long/2addr v2, p1

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v4, :cond_4

    goto :goto_2

    :cond_4
    move-wide p1, v2

    goto :goto_4

    .line 1727
    :cond_5
    :goto_2
    return v5

    .line 1729
    :cond_6
    const/16 v6, -0x10

    if-ge v1, v6, :cond_c

    .line 1731
    const/4 v6, 0x2

    if-ge p3, v6, :cond_7

    .line 1733
    invoke-static {p0, v1, p1, p2, p3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result p0

    return p0

    .line 1735
    :cond_7
    add-int/lit8 p3, p3, -0x2

    .line 1738
    add-long v6, p1, v2

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gt p1, v4, :cond_b

    const/16 p2, -0x60

    if-ne v1, v0, :cond_8

    if-lt p1, p2, :cond_b

    :cond_8
    const/16 v0, -0x13

    if-ne v1, v0, :cond_9

    if-ge p1, p2, :cond_b

    :cond_9
    add-long/2addr v2, v6

    .line 1744
    invoke-static {p0, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v4, :cond_a

    goto :goto_3

    .line 1747
    :cond_a
    move-wide p1, v2

    goto :goto_4

    .line 1745
    :cond_b
    :goto_3
    return v5

    .line 1749
    :cond_c
    const/4 v0, 0x3

    if-ge p3, v0, :cond_d

    .line 1751
    invoke-static {p0, v1, p1, p2, p3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result p0

    return p0

    .line 1753
    :cond_d
    add-int/lit8 p3, p3, -0x3

    .line 1756
    add-long v6, p1, v2

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gt p1, v4, :cond_f

    shl-int/lit8 p2, v1, 0x1c

    add-int/lit8 p1, p1, 0x70

    add-int/2addr p2, p1

    shr-int/lit8 p1, p2, 0x1e

    if-nez p1, :cond_f

    add-long p1, v6, v2

    .line 1763
    invoke-static {p0, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    if-gt v0, v4, :cond_f

    add-long/2addr v2, p1

    .line 1765
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v4, :cond_e

    goto :goto_5

    :cond_e
    move-wide p1, v2

    .line 1769
    :goto_4
    goto/16 :goto_0

    .line 1766
    :cond_f
    :goto_5
    return v5
.end method

.method private static unsafeEstimateConsecutiveAscii(JI)I
    .locals 6

    .line 1672
    nop

    .line 1673
    const/16 v0, 0x10

    if-ge p2, v0, :cond_0

    .line 1675
    const/4 p0, 0x0

    return p0

    .line 1681
    :cond_0
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x7

    const/16 v1, 0x8

    rsub-int/lit8 v0, v0, 0x8

    .line 1682
    move v2, v0

    :goto_0
    if-lez v2, :cond_2

    .line 1683
    const-wide/16 v3, 0x1

    add-long/2addr v3, p0

    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-gez p0, :cond_1

    .line 1684
    sub-int/2addr v0, v2

    return v0

    .line 1682
    :cond_1
    add-int/lit8 v2, v2, -0x1

    move-wide p0, v3

    goto :goto_0

    .line 1691
    :cond_2
    sub-int v0, p2, v0

    .line 1693
    :goto_1
    if-lt v0, v1, :cond_3

    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(J)J

    move-result-wide v2

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1694
    const-wide/16 v2, 0x8

    add-long/2addr p0, v2

    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    .line 1695
    :cond_3
    sub-int/2addr p2, v0

    return p2
.end method

.method private static unsafeEstimateConsecutiveAscii([BJI)I
    .locals 3

    .line 1654
    const/4 v0, 0x0

    const/16 v1, 0x10

    if-ge p3, v1, :cond_0

    .line 1656
    return v0

    .line 1659
    :cond_0
    nop

    :goto_0
    if-ge v0, p3, :cond_2

    .line 1660
    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gez p1, :cond_1

    .line 1661
    return v0

    .line 1659
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move-wide p1, v1

    goto :goto_0

    .line 1664
    :cond_2
    return p3
.end method

.method private static unsafeIncompleteStateFor(JII)I
    .locals 2

    .line 1864
    if-eqz p3, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 1870
    nop

    .line 1871
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p3

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    .line 1870
    invoke-static {p2, p3, p0}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p0

    return p0

    .line 1873
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1868
    :cond_1
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    invoke-static {p2, p0}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    .line 1866
    :cond_2
    invoke-static {p2}, Lcom/google/protobuf/Utf8;->access$1200(I)I

    move-result p0

    return p0
.end method

.method private static unsafeIncompleteStateFor([BIJI)I
    .locals 2

    .line 1850
    if-eqz p4, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 1856
    nop

    .line 1857
    invoke-static {p0, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p0

    .line 1856
    invoke-static {p1, p4, p0}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p0

    return p0

    .line 1859
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1854
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p0

    invoke-static {p1, p0}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    .line 1852
    :cond_2
    invoke-static {p1}, Lcom/google/protobuf/Utf8;->access$1200(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method decodeUtf8([BII)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1369
    or-int v0, p2, p3

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_b

    .line 1374
    nop

    .line 1375
    add-int v0, p2, p3

    .line 1379
    new-array p3, p3, [C

    .line 1380
    move v3, v1

    .line 1384
    :goto_0
    if-ge p2, v0, :cond_1

    .line 1385
    int-to-long v4, p2

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v4

    .line 1386
    invoke-static {v4}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1387
    goto :goto_1

    .line 1389
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 1390
    add-int/lit8 v5, v3, 0x1

    invoke-static {v4, p3, v3}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 1391
    move v3, v5

    goto :goto_0

    .line 1393
    :cond_1
    :goto_1
    move v8, v3

    :goto_2
    if-ge p2, v0, :cond_a

    .line 1394
    add-int/lit8 v3, p2, 0x1

    int-to-long v4, p2

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p2

    .line 1395
    invoke-static {p2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1396
    add-int/lit8 v4, v8, 0x1

    invoke-static {p2, p3, v8}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 1399
    :goto_3
    if-ge v3, v0, :cond_3

    .line 1400
    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p2

    .line 1401
    invoke-static {p2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1402
    goto :goto_4

    .line 1404
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 1405
    add-int/lit8 v5, v4, 0x1

    invoke-static {p2, p3, v4}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 1406
    move v4, v5

    goto :goto_3

    .line 1437
    :cond_3
    :goto_4
    move p2, v3

    move v8, v4

    goto/16 :goto_5

    .line 1407
    :cond_4
    invoke-static {p2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1408
    if-ge v3, v0, :cond_5

    .line 1411
    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 1412
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v3

    add-int/lit8 v5, v8, 0x1

    .line 1411
    invoke-static {p2, v3, p3, v8}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move p2, v4

    move v8, v5

    goto :goto_5

    .line 1409
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1413
    :cond_6
    invoke-static {p2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1414
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_7

    .line 1417
    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 1419
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v3

    add-int/lit8 v5, v4, 0x1

    int-to-long v6, v4

    .line 1420
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v4

    add-int/lit8 v6, v8, 0x1

    .line 1417
    invoke-static {p2, v3, v4, p3, v8}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move p2, v5

    move v8, v6

    goto :goto_5

    .line 1415
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1424
    :cond_8
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_9

    .line 1427
    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 1429
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v5

    add-int/lit8 v3, v4, 0x1

    int-to-long v6, v4

    .line 1430
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v6

    add-int/lit8 v9, v3, 0x1

    int-to-long v3, v3

    .line 1431
    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v7

    add-int/lit8 v10, v8, 0x1

    .line 1427
    move v3, p2

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p3

    invoke-static/range {v3 .. v8}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    .line 1435
    add-int/2addr v10, v2

    move p2, v9

    move v8, v10

    .line 1437
    :goto_5
    goto/16 :goto_2

    .line 1425
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1439
    :cond_a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 1370
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length p1, p1

    .line 1371
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1446
    move/from16 v0, p2

    move/from16 v1, p3

    or-int v2, v0, v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_b

    .line 1450
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    int-to-long v7, v0

    add-long/2addr v5, v7

    .line 1451
    int-to-long v7, v1

    add-long/2addr v7, v5

    .line 1455
    new-array v0, v1, [C

    .line 1456
    move v1, v3

    .line 1460
    :goto_0
    cmp-long v2, v5, v7

    const-wide/16 v15, 0x1

    if-gez v2, :cond_1

    .line 1461
    invoke-static {v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    .line 1462
    invoke-static {v2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1463
    goto :goto_1

    .line 1465
    :cond_0
    add-long/2addr v5, v15

    .line 1466
    add-int/lit8 v9, v1, 0x1

    invoke-static {v2, v0, v1}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 1467
    move v1, v9

    goto :goto_0

    .line 1469
    :cond_1
    :goto_1
    move v14, v1

    :goto_2
    cmp-long v1, v5, v7

    if-gez v1, :cond_a

    .line 1470
    add-long v1, v5, v15

    invoke-static {v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v9

    .line 1471
    invoke-static {v9}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1472
    add-int/lit8 v5, v14, 0x1

    invoke-static {v9, v0, v14}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 1475
    :goto_3
    cmp-long v6, v1, v7

    if-gez v6, :cond_3

    .line 1476
    invoke-static {v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    .line 1477
    invoke-static {v6}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1478
    goto :goto_4

    .line 1480
    :cond_2
    add-long/2addr v1, v15

    .line 1481
    add-int/lit8 v9, v5, 0x1

    invoke-static {v6, v0, v5}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 1482
    move v5, v9

    goto :goto_3

    .line 1513
    :cond_3
    :goto_4
    move v14, v5

    move-wide v5, v1

    goto :goto_5

    .line 1483
    :cond_4
    invoke-static {v9}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1484
    cmp-long v5, v1, v7

    if-gez v5, :cond_5

    .line 1487
    add-long v5, v1, v15

    .line 1488
    invoke-static {v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    add-int/lit8 v2, v14, 0x1

    .line 1487
    invoke-static {v9, v1, v0, v14}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move v14, v2

    goto :goto_5

    .line 1485
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1489
    :cond_6
    invoke-static {v9}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1490
    sub-long v5, v7, v15

    cmp-long v5, v1, v5

    if-gez v5, :cond_7

    .line 1493
    add-long v5, v1, v15

    .line 1495
    invoke-static {v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    add-long v10, v5, v15

    .line 1496
    invoke-static {v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    add-int/lit8 v5, v14, 0x1

    .line 1493
    invoke-static {v9, v1, v2, v0, v14}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move v14, v5

    move-wide v5, v10

    goto :goto_5

    .line 1491
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1500
    :cond_8
    const-wide/16 v5, 0x2

    sub-long v5, v7, v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_9

    .line 1503
    add-long v5, v1, v15

    .line 1505
    invoke-static {v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v10

    add-long v1, v5, v15

    .line 1506
    invoke-static {v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v11

    add-long v5, v1, v15

    .line 1507
    invoke-static {v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v12

    add-int/lit8 v1, v14, 0x1

    .line 1503
    move-object v13, v0

    invoke-static/range {v9 .. v14}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    .line 1511
    add-int/2addr v1, v4

    move v14, v1

    .line 1513
    :goto_5
    goto/16 :goto_2

    .line 1501
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1515
    :cond_a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v3, v14}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 1447
    :cond_b
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 1448
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    const/4 v0, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .locals 20

    .line 1520
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    .line 1521
    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 1522
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 1523
    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_c

    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_c

    .line 1531
    const/4 v2, 0x0

    .line 1532
    :goto_0
    const/16 v3, 0x80

    const-wide/16 v11, 0x1

    if-ge v2, v8, :cond_0

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_0

    .line 1533
    add-long/2addr v11, v4

    int-to-byte v3, v13

    invoke-static {v1, v4, v5, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1532
    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_0

    .line 1535
    :cond_0
    if-ne v2, v8, :cond_1

    .line 1537
    long-to-int v0, v4

    return v0

    .line 1540
    :cond_1
    :goto_1
    if-ge v2, v8, :cond_b

    .line 1541
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 1542
    if-ge v13, v3, :cond_2

    cmp-long v14, v4, v6

    if-gez v14, :cond_2

    .line 1543
    add-long v14, v4, v11

    int-to-byte v13, v13

    invoke-static {v1, v4, v5, v13}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide v4, v11

    move-wide v12, v14

    move v11, v3

    goto/16 :goto_2

    .line 1544
    :cond_2
    const/16 v14, 0x800

    if-ge v13, v14, :cond_3

    const-wide/16 v14, 0x2

    sub-long v14, v6, v14

    cmp-long v14, v4, v14

    if-gtz v14, :cond_3

    .line 1545
    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-static {v1, v4, v5, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1546
    add-long v3, v14, v11

    and-int/lit8 v5, v13, 0x3f

    const/16 v13, 0x80

    or-int/2addr v5, v13

    int-to-byte v5, v5

    invoke-static {v1, v14, v15, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide/from16 v18, v11

    const/16 v11, 0x80

    move-wide v12, v3

    move-wide/from16 v4, v18

    goto/16 :goto_2

    .line 1547
    :cond_3
    const v3, 0xdfff

    const v14, 0xd800

    if-lt v13, v14, :cond_4

    if-ge v3, v13, :cond_5

    :cond_4
    const-wide/16 v15, 0x3

    sub-long v15, v6, v15

    cmp-long v15, v4, v15

    if-gtz v15, :cond_5

    .line 1549
    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    invoke-static {v1, v4, v5, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1550
    add-long v3, v14, v11

    ushr-int/lit8 v5, v13, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v11, 0x80

    or-int/2addr v5, v11

    int-to-byte v5, v5

    invoke-static {v1, v14, v15, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1551
    const-wide/16 v14, 0x1

    add-long v16, v3, v14

    and-int/lit8 v5, v13, 0x3f

    or-int/2addr v5, v11

    int-to-byte v5, v5

    invoke-static {v1, v3, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide/from16 v12, v16

    const-wide/16 v4, 0x1

    const/16 v11, 0x80

    goto :goto_2

    .line 1552
    :cond_5
    const-wide/16 v11, 0x4

    sub-long v11, v6, v11

    cmp-long v11, v4, v11

    if-gtz v11, :cond_8

    .line 1556
    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_7

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1559
    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    .line 1560
    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    ushr-int/lit8 v15, v2, 0x12

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    invoke-static {v1, v4, v5, v15}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1561
    add-long v4, v13, v11

    ushr-int/lit8 v15, v2, 0xc

    and-int/lit8 v15, v15, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v15, 0x80

    int-to-byte v12, v12

    invoke-static {v1, v13, v14, v12}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1562
    const-wide/16 v12, 0x1

    add-long v14, v4, v12

    ushr-int/lit8 v16, v2, 0x6

    and-int/lit8 v12, v16, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    invoke-static {v1, v4, v5, v12}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1563
    const-wide/16 v4, 0x1

    add-long v12, v14, v4

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v11

    int-to-byte v2, v2

    invoke-static {v1, v14, v15, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1564
    move v2, v3

    .line 1540
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v11

    move-wide/from16 v18, v4

    move-wide v4, v12

    move-wide/from16 v11, v18

    goto/16 :goto_1

    .line 1556
    :cond_6
    move v2, v3

    .line 1557
    :cond_7
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    .line 1565
    :cond_8
    if-gt v14, v13, :cond_a

    if-gt v13, v3, :cond_a

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_9

    .line 1566
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1568
    :cond_9
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v2, v8}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    .line 1571
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1576
    :cond_b
    long-to-int v0, v4

    return v0

    .line 1525
    :cond_c
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x1

    .line 1526
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 20

    .line 1581
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static/range {p2 .. p2}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 1582
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 1583
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    .line 1584
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 1585
    int-to-long v9, v8

    sub-long v11, v6, v4

    cmp-long v9, v9, v11

    const-string v10, " at index "

    const-string v11, "Failed writing "

    if-gtz v9, :cond_c

    .line 1593
    const/4 v9, 0x0

    .line 1594
    :goto_0
    const/16 v12, 0x80

    const-wide/16 v13, 0x1

    if-ge v9, v8, :cond_0

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v12, :cond_0

    .line 1595
    add-long v12, v4, v13

    int-to-byte v14, v15

    invoke-static {v4, v5, v14}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1594
    add-int/lit8 v9, v9, 0x1

    move-wide v4, v12

    goto :goto_0

    .line 1597
    :cond_0
    if-ne v9, v8, :cond_1

    .line 1599
    sub-long/2addr v4, v2

    long-to-int v0, v4

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1600
    return-void

    .line 1603
    :cond_1
    :goto_1
    if-ge v9, v8, :cond_b

    .line 1604
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    .line 1605
    if-ge v15, v12, :cond_2

    cmp-long v16, v4, v6

    if-gez v16, :cond_2

    .line 1606
    add-long v16, v4, v13

    int-to-byte v15, v15

    invoke-static {v4, v5, v15}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide/from16 v18, v6

    move v1, v9

    move v9, v12

    move-wide/from16 v4, v16

    move-wide/from16 v16, v2

    goto/16 :goto_2

    .line 1607
    :cond_2
    const/16 v12, 0x800

    if-ge v15, v12, :cond_3

    const-wide/16 v16, 0x2

    sub-long v16, v6, v16

    cmp-long v12, v4, v16

    if-gtz v12, :cond_3

    .line 1608
    move-wide/from16 v16, v2

    add-long v1, v4, v13

    ushr-int/lit8 v3, v15, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-static {v4, v5, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1609
    add-long v3, v1, v13

    and-int/lit8 v5, v15, 0x3f

    const/16 v12, 0x80

    or-int/2addr v5, v12

    int-to-byte v5, v5

    invoke-static {v1, v2, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide v4, v3

    move-wide/from16 v18, v6

    move v1, v9

    const/16 v9, 0x80

    goto/16 :goto_2

    .line 1607
    :cond_3
    move-wide/from16 v16, v2

    .line 1610
    const v1, 0xdfff

    const v2, 0xd800

    if-lt v15, v2, :cond_4

    if-ge v1, v15, :cond_5

    :cond_4
    const-wide/16 v18, 0x3

    sub-long v18, v6, v18

    cmp-long v3, v4, v18

    if-gtz v3, :cond_5

    .line 1612
    add-long v1, v4, v13

    ushr-int/lit8 v3, v15, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    invoke-static {v4, v5, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1613
    add-long v3, v1, v13

    ushr-int/lit8 v5, v15, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v12, 0x80

    or-int/2addr v5, v12

    int-to-byte v5, v5

    invoke-static {v1, v2, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1614
    add-long v1, v3, v13

    and-int/lit8 v5, v15, 0x3f

    or-int/2addr v5, v12

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide v4, v1

    move-wide/from16 v18, v6

    move v1, v9

    const/16 v9, 0x80

    goto :goto_2

    .line 1615
    :cond_5
    const-wide/16 v18, 0x4

    sub-long v18, v6, v18

    cmp-long v3, v4, v18

    if-gtz v3, :cond_8

    .line 1619
    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_7

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1622
    invoke-static {v15, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    .line 1623
    move-wide/from16 v18, v6

    add-long v6, v4, v13

    ushr-int/lit8 v3, v2, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    invoke-static {v4, v5, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1624
    add-long v3, v6, v13

    ushr-int/lit8 v5, v2, 0xc

    and-int/lit8 v5, v5, 0x3f

    const/16 v9, 0x80

    or-int/2addr v5, v9

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1625
    add-long v5, v3, v13

    ushr-int/lit8 v7, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v9

    int-to-byte v7, v7

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1626
    add-long v3, v5, v13

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v9

    int-to-byte v2, v2

    invoke-static {v5, v6, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1627
    move-wide v4, v3

    .line 1603
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v12, v9

    move-wide/from16 v2, v16

    move-wide/from16 v6, v18

    move v9, v1

    move-object/from16 v1, p2

    goto/16 :goto_1

    .line 1619
    :cond_6
    move v9, v1

    .line 1620
    :cond_7
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v0, v9, v8}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    .line 1628
    :cond_8
    if-gt v2, v15, :cond_a

    if-gt v15, v1, :cond_a

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_9

    .line 1629
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1631
    :cond_9
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v9, v8}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    .line 1634
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1639
    :cond_b
    move-wide/from16 v16, v2

    sub-long v4, v4, v16

    long-to-int v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1640
    return-void

    .line 1587
    :cond_c
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x1

    .line 1588
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method partialIsValidUtf8(I[BII)I
    .locals 11

    .line 1178
    or-int v0, p3, p4

    array-length v1, p2

    sub-int/2addr v1, p4

    or-int/2addr v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_12

    .line 1182
    int-to-long v2, p3

    .line 1183
    int-to-long p3, p4

    .line 1184
    if-eqz p1, :cond_11

    .line 1192
    cmp-long v0, v2, p3

    if-ltz v0, :cond_0

    .line 1193
    return p1

    .line 1195
    :cond_0
    int-to-byte v0, p1

    .line 1197
    const/16 v4, -0x20

    const/4 v5, -0x1

    const/16 v6, -0x41

    const-wide/16 v7, 0x1

    if-ge v0, v4, :cond_3

    .line 1202
    const/16 p1, -0x3e

    if-lt v0, p1, :cond_2

    add-long/2addr v7, v2

    .line 1204
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v7

    goto/16 :goto_4

    .line 1205
    :cond_2
    :goto_0
    return v5

    .line 1207
    :cond_3
    const/16 v9, -0x10

    if-ge v0, v9, :cond_a

    .line 1211
    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    .line 1212
    if-nez p1, :cond_5

    .line 1213
    add-long v9, v2, v7

    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    .line 1214
    cmp-long v1, v9, p3

    if-ltz v1, :cond_4

    .line 1215
    invoke-static {v0, p1}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    .line 1214
    :cond_4
    move-wide v2, v9

    .line 1218
    :cond_5
    if-gt p1, v6, :cond_9

    const/16 v1, -0x60

    if-ne v0, v4, :cond_6

    if-lt p1, v1, :cond_9

    :cond_6
    const/16 v4, -0x13

    if-ne v0, v4, :cond_7

    if-ge p1, v1, :cond_9

    :cond_7
    add-long v0, v2, v7

    .line 1224
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v6, :cond_8

    goto :goto_1

    .line 1227
    :cond_8
    move-wide v2, v0

    goto :goto_4

    .line 1225
    :cond_9
    :goto_1
    return v5

    .line 1231
    :cond_a
    shr-int/lit8 v4, p1, 0x8

    not-int v4, v4

    int-to-byte v4, v4

    .line 1232
    nop

    .line 1233
    if-nez v4, :cond_c

    .line 1234
    add-long v9, v2, v7

    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v4

    .line 1235
    cmp-long p1, v9, p3

    if-ltz p1, :cond_b

    .line 1236
    invoke-static {v0, v4}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    .line 1235
    :cond_b
    move-wide v2, v9

    goto :goto_2

    .line 1239
    :cond_c
    shr-int/lit8 p1, p1, 0x10

    int-to-byte v1, p1

    .line 1241
    :goto_2
    if-nez v1, :cond_e

    .line 1242
    add-long v9, v2, v7

    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v1

    .line 1243
    cmp-long p1, v9, p3

    if-ltz p1, :cond_d

    .line 1244
    invoke-static {v0, v4, v1}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p1

    return p1

    .line 1243
    :cond_d
    move-wide v2, v9

    .line 1252
    :cond_e
    if-gt v4, v6, :cond_10

    shl-int/lit8 p1, v0, 0x1c

    add-int/lit8 v4, v4, 0x70

    add-int/2addr p1, v4

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_10

    if-gt v1, v6, :cond_10

    add-long v0, v2, v7

    .line 1261
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v6, :cond_f

    goto :goto_3

    :cond_f
    move-wide v2, v0

    goto :goto_4

    .line 1262
    :cond_10
    :goto_3
    return v5

    .line 1267
    :cond_11
    :goto_4
    sub-long/2addr p3, v2

    long-to-int p1, p3

    invoke-static {p2, v2, v3, p1}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8([BJI)I

    move-result p1

    return p1

    .line 1179
    :cond_12
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    array-length p2, p2

    .line 1180
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "Array length=%d, index=%d, limit=%d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .locals 10

    .line 1274
    or-int v0, p3, p4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, p4

    or-int/2addr v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_12

    .line 1278
    invoke-static {p2}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    .line 1279
    sub-int/2addr p4, p3

    int-to-long p2, p4

    add-long/2addr p2, v2

    .line 1280
    if-eqz p1, :cond_11

    .line 1288
    cmp-long p4, v2, p2

    if-ltz p4, :cond_0

    .line 1289
    return p1

    .line 1292
    :cond_0
    int-to-byte p4, p1

    .line 1294
    const/16 v0, -0x20

    const/4 v4, -0x1

    const/16 v5, -0x41

    const-wide/16 v6, 0x1

    if-ge p4, v0, :cond_3

    .line 1299
    const/16 p1, -0x3e

    if-lt p4, p1, :cond_2

    add-long/2addr v6, v2

    .line 1301
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v5, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v6

    goto/16 :goto_4

    .line 1302
    :cond_2
    :goto_0
    return v4

    .line 1304
    :cond_3
    const/16 v8, -0x10

    if-ge p4, v8, :cond_a

    .line 1308
    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    .line 1309
    if-nez p1, :cond_5

    .line 1310
    add-long v8, v2, v6

    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    .line 1311
    cmp-long v1, v8, p2

    if-ltz v1, :cond_4

    .line 1312
    invoke-static {p4, p1}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    .line 1311
    :cond_4
    move-wide v2, v8

    .line 1315
    :cond_5
    if-gt p1, v5, :cond_9

    const/16 v1, -0x60

    if-ne p4, v0, :cond_6

    if-lt p1, v1, :cond_9

    :cond_6
    const/16 v0, -0x13

    if-ne p4, v0, :cond_7

    if-ge p1, v1, :cond_9

    :cond_7
    add-long v0, v2, v6

    .line 1321
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v5, :cond_8

    goto :goto_1

    .line 1324
    :cond_8
    move-wide v2, v0

    goto :goto_4

    .line 1322
    :cond_9
    :goto_1
    return v4

    .line 1328
    :cond_a
    shr-int/lit8 v0, p1, 0x8

    not-int v0, v0

    int-to-byte v0, v0

    .line 1329
    nop

    .line 1330
    if-nez v0, :cond_c

    .line 1331
    add-long v8, v2, v6

    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    .line 1332
    cmp-long p1, v8, p2

    if-ltz p1, :cond_b

    .line 1333
    invoke-static {p4, v0}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    .line 1332
    :cond_b
    move-wide v2, v8

    goto :goto_2

    .line 1336
    :cond_c
    shr-int/lit8 p1, p1, 0x10

    int-to-byte v1, p1

    .line 1338
    :goto_2
    if-nez v1, :cond_e

    .line 1339
    add-long v8, v2, v6

    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    .line 1340
    cmp-long p1, v8, p2

    if-ltz p1, :cond_d

    .line 1341
    invoke-static {p4, v0, v1}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p1

    return p1

    .line 1340
    :cond_d
    move-wide v2, v8

    .line 1349
    :cond_e
    if-gt v0, v5, :cond_10

    shl-int/lit8 p1, p4, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_10

    if-gt v1, v5, :cond_10

    add-long v0, v2, v6

    .line 1358
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v5, :cond_f

    goto :goto_3

    :cond_f
    move-wide v2, v0

    goto :goto_4

    .line 1359
    :cond_10
    :goto_3
    return v4

    .line 1364
    :cond_11
    :goto_4
    sub-long/2addr p2, v2

    long-to-int p1, p2

    invoke-static {v2, v3, p1}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8(JI)I

    move-result p1

    return p1

    .line 1275
    :cond_12
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1276
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
