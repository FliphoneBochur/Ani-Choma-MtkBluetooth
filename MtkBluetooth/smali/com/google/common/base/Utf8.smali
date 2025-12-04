.class public final Lcom/google/common/base/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodedLength(Ljava/lang/CharSequence;)I
    .locals 5

    .line 52
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 53
    nop

    .line 54
    const/4 v1, 0x0

    .line 57
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    move v2, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 63
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 64
    const/16 v4, 0x800

    if-ge v3, v4, :cond_1

    .line 65
    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 67
    :cond_1
    invoke-static {p0, v1}, Lcom/google/common/base/Utf8;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result p0

    add-int/2addr v2, p0

    .line 72
    :cond_2
    if-lt v2, v0, :cond_3

    .line 77
    return v2

    .line 74
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UTF-8 length does not fit in int: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, v2

    const-wide v3, 0x100000000L

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .locals 4

    .line 81
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 82
    nop

    .line 83
    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_3

    .line 84
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 85
    const/16 v3, 0x800

    if-ge v2, v3, :cond_0

    .line 86
    rsub-int/lit8 v2, v2, 0x7f

    ushr-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    goto :goto_1

    .line 88
    :cond_0
    add-int/lit8 v1, v1, 0x2

    .line 90
    const v3, 0xd800

    if-gt v3, v2, :cond_2

    const v3, 0xdfff

    if-gt v2, v3, :cond_2

    .line 92
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 95
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 93
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lcom/google/common/base/Utf8;->unpairedSurrogateMsg(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 99
    :cond_3
    return v1
.end method

.method public static isWellFormed([B)Z
    .locals 2

    .line 113
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/common/base/Utf8;->isWellFormed([BII)Z

    move-result p0

    return p0
.end method

.method public static isWellFormed([BII)Z
    .locals 1

    .line 126
    add-int/2addr p2, p1

    .line 127
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 129
    nop

    :goto_0
    if-ge p1, p2, :cond_1

    .line 130
    aget-byte v0, p0, p1

    if-gez v0, :cond_0

    .line 131
    invoke-static {p0, p1, p2}, Lcom/google/common/base/Utf8;->isWellFormedSlowPath([BII)Z

    move-result p0

    return p0

    .line 129
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 134
    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static isWellFormedSlowPath([BII)Z
    .locals 6

    .line 138
    nop

    .line 144
    :goto_0
    if-lt p1, p2, :cond_0

    .line 145
    const/4 p0, 0x1

    return p0

    .line 147
    :cond_0
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-gez p1, :cond_e

    .line 149
    const/16 v1, -0x20

    const/16 v2, -0x41

    const/4 v3, 0x0

    if-ge p1, v1, :cond_3

    .line 151
    if-ne v0, p2, :cond_1

    .line 152
    return v3

    .line 156
    :cond_1
    const/16 v1, -0x3e

    if-lt p1, v1, :cond_2

    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    if-le v0, v2, :cond_c

    .line 157
    :cond_2
    return v3

    .line 159
    :cond_3
    const/16 v4, -0x10

    if-ge p1, v4, :cond_9

    .line 161
    add-int/lit8 v4, v0, 0x1

    if-lt v4, p2, :cond_4

    .line 162
    return v3

    .line 164
    :cond_4
    aget-byte v0, p0, v0

    .line 165
    if-gt v0, v2, :cond_8

    const/16 v5, -0x60

    if-ne p1, v1, :cond_5

    if-lt v0, v5, :cond_8

    :cond_5
    const/16 v1, -0x13

    if-ne p1, v1, :cond_6

    if-le v5, v0, :cond_8

    :cond_6
    add-int/lit8 p1, v4, 0x1

    aget-byte v0, p0, v4

    if-le v0, v2, :cond_7

    goto :goto_1

    .line 174
    :cond_7
    goto :goto_2

    .line 172
    :cond_8
    :goto_1
    return v3

    .line 176
    :cond_9
    add-int/lit8 v1, v0, 0x2

    if-lt v1, p2, :cond_a

    .line 177
    return v3

    .line 179
    :cond_a
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    .line 180
    if-gt v0, v2, :cond_d

    shl-int/lit8 p1, p1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_d

    add-int/lit8 p1, v1, 0x1

    aget-byte v0, p0, v1

    if-gt v0, v2, :cond_d

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-le p1, v2, :cond_b

    goto :goto_3

    :cond_b
    move p1, v0

    .line 193
    :cond_c
    :goto_2
    goto :goto_0

    .line 190
    :cond_d
    :goto_3
    return v3

    .line 147
    :cond_e
    move p1, v0

    goto :goto_0
.end method

.method private static unpairedSurrogateMsg(I)Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unpaired surrogate at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
