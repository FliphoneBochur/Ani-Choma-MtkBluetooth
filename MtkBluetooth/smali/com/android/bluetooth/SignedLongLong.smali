.class public Lcom/android/bluetooth/SignedLongLong;
.super Ljava/lang/Object;
.source "SignedLongLong.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/bluetooth/SignedLongLong;",
        ">;"
    }
.end annotation


# instance fields
.field private mLeastSigBits:J

.field private mMostSigBits:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p3, p0, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    .line 36
    iput-wide p1, p0, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    .line 37
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/bluetooth/SignedLongLong;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 47
    nop

    .line 49
    nop

    .line 50
    if-eqz p0, :cond_2

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 55
    if-eqz v0, :cond_1

    const/16 v1, 0x20

    if-gt v0, v1, :cond_1

    .line 58
    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    .line 59
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 61
    :cond_0
    add-int/lit8 v1, v0, -0x10

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 62
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongFromString(Ljava/lang/String;)J

    move-result-wide v1

    move-object p0, v0

    move-wide v0, v1

    .line 65
    :goto_0
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongFromString(Ljava/lang/String;)J

    move-result-wide v2

    .line 66
    new-instance p0, Lcom/android/bluetooth/SignedLongLong;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/bluetooth/SignedLongLong;-><init>(JJ)V

    return-object p0

    .line 56
    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid string length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_2
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public compareTo(Lcom/android/bluetooth/SignedLongLong;)I
    .locals 7

    .line 71
    iget-wide v0, p0, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    iget-wide v2, p1, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-nez v4, :cond_2

    .line 72
    iget-wide v0, p0, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    iget-wide v2, p1, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 73
    const/4 p1, 0x0

    return p1

    .line 75
    :cond_0
    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    .line 76
    return v5

    .line 78
    :cond_1
    return v6

    .line 80
    :cond_2
    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    .line 81
    return v5

    .line 83
    :cond_3
    return v6
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/SignedLongLong;->compareTo(Lcom/android/bluetooth/SignedLongLong;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 101
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 102
    return v0

    .line 104
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 105
    return v1

    .line 107
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 108
    return v1

    .line 110
    :cond_2
    check-cast p1, Lcom/android/bluetooth/SignedLongLong;

    .line 111
    iget-wide v2, p0, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    iget-wide v4, p1, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 112
    return v1

    .line 114
    :cond_3
    iget-wide v2, p0, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    iget-wide v4, p1, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_4

    .line 115
    return v1

    .line 117
    :cond_4
    return v0
.end method

.method public getLeastSignificantBits()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    return-wide v0
.end method

.method public getMostSignificantBits()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    return-wide v0
.end method

.method public toHexString()Ljava/lang/String;
    .locals 4

    .line 96
    iget-wide v0, p0, Lcom/android/bluetooth/SignedLongLong;->mLeastSigBits:J

    iget-wide v2, p0, Lcom/android/bluetooth/SignedLongLong;->mMostSigBits:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongLongAsString(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/android/bluetooth/SignedLongLong;->toHexString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
