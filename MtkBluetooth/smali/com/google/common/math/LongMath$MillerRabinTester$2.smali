.class final enum Lcom/google/common/math/LongMath$MillerRabinTester$2;
.super Lcom/google/common/math/LongMath$MillerRabinTester;
.source "LongMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LongMath$MillerRabinTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1086
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/math/LongMath$MillerRabinTester;-><init>(Ljava/lang/String;ILcom/google/common/math/LongMath$1;)V

    return-void
.end method

.method private plusMod(JJJ)J
    .locals 2

    .line 1089
    sub-long v0, p5, p3

    cmp-long v0, p1, v0

    add-long/2addr p1, p3

    if-ltz v0, :cond_0

    sub-long/2addr p1, p5

    :cond_0
    return-wide p1
.end method

.method private times2ToThe32Mod(JJ)J
    .locals 2

    .line 1094
    const/16 v0, 0x20

    .line 1096
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1099
    shl-long/2addr p1, v1

    invoke-static {p1, p2, p3, p4}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide p1

    .line 1100
    sub-int/2addr v0, v1

    .line 1101
    if-gtz v0, :cond_0

    .line 1102
    return-wide p1

    .line 1101
    :cond_0
    goto :goto_0
.end method


# virtual methods
.method mulMod(JJJ)J
    .locals 15

    .line 1107
    move-object v0, p0

    move-wide/from16 v5, p5

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    .line 1108
    ushr-long v7, p3, v1

    .line 1109
    const-wide v9, 0xffffffffL

    and-long v11, p1, v9

    .line 1110
    and-long v9, p3, v9

    .line 1120
    mul-long v13, v2, v7

    invoke-direct {p0, v13, v14, v5, v6}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v13

    .line 1121
    mul-long/2addr v2, v9

    add-long/2addr v13, v2

    .line 1122
    const-wide/16 v1, 0x0

    cmp-long v1, v13, v1

    if-gez v1, :cond_0

    .line 1123
    invoke-static {v13, v14, v5, v6}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v13

    .line 1126
    :cond_0
    mul-long/2addr v7, v11

    add-long/2addr v13, v7

    .line 1127
    invoke-direct {p0, v13, v14, v5, v6}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v1

    .line 1128
    mul-long/2addr v11, v9

    invoke-static {v11, v12, v5, v6}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v3

    move-object v0, p0

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->plusMod(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method squareMod(JJ)J
    .locals 11

    .line 1133
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    .line 1134
    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    .line 1143
    mul-long v2, v0, v0

    invoke-direct {p0, v2, v3, p3, p4}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v2

    .line 1144
    mul-long/2addr v0, p1

    const-wide/16 v4, 0x2

    mul-long/2addr v0, v4

    .line 1145
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 1146
    invoke-static {v0, v1, p3, p4}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v0

    .line 1149
    :cond_0
    add-long/2addr v2, v0

    .line 1150
    invoke-direct {p0, v2, v3, p3, p4}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->times2ToThe32Mod(JJ)J

    move-result-wide v5

    .line 1151
    mul-long/2addr p1, p1

    invoke-static {p1, p2, p3, p4}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v7

    move-object v4, p0

    move-wide v9, p3

    invoke-direct/range {v4 .. v10}, Lcom/google/common/math/LongMath$MillerRabinTester$2;->plusMod(JJJ)J

    move-result-wide p1

    return-wide p1
.end method
