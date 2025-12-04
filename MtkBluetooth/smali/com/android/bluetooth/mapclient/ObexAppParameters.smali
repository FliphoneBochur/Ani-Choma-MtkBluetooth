.class public final Lcom/android/bluetooth/mapclient/ObexAppParameters;
.super Ljava/lang/Object;
.source "ObexAppParameters.java"


# instance fields
.field private final mParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Byte;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/ObexAppParameters;->mParams:Ljava/util/HashMap;

    .line 32
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/ObexAppParameters;->mParams:Ljava/util/HashMap;

    .line 37
    if-eqz p1, :cond_2

    .line 38
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 39
    array-length v2, p1

    sub-int/2addr v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 40
    goto :goto_1

    .line 43
    :cond_0
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    .line 44
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    .line 46
    array-length v4, p1

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    if-gez v4, :cond_1

    .line 47
    goto :goto_1

    .line 50
    :cond_1
    new-array v4, v2, [B

    .line 52
    invoke-static {p1, v3, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    invoke-virtual {p0, v1, v4}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(B[B)V

    .line 55
    add-int v1, v3, v2

    .line 56
    goto :goto_0

    .line 58
    :cond_2
    :goto_1
    return-void
.end method

.method public static fromHeaderSet(Ljavax/obex/HeaderSet;)Lcom/android/bluetooth/mapclient/ObexAppParameters;
    .locals 1

    .line 62
    const/16 v0, 0x4c

    :try_start_0
    invoke-virtual {p0, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 63
    new-instance v0, Lcom/android/bluetooth/mapclient/ObexAppParameters;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/mapclient/ObexAppParameters;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 64
    :catch_0
    move-exception p0

    .line 68
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public add(BB)V
    .locals 1

    .line 104
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 105
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public add(BI)V
    .locals 1

    .line 114
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 115
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public add(BJ)V
    .locals 1

    .line 119
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 120
    iget-object p3, p0, Lcom/android/bluetooth/mapclient/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public add(BLjava/lang/String;)V
    .locals 1

    .line 124
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 125
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public add(BS)V
    .locals 1

    .line 109
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 110
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public add(B[B)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public addToHeaderSet(Ljavax/obex/HeaderSet;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    const/16 v0, 0x4c

    invoke-virtual {p0}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->getHeader()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 97
    :cond_0
    return-void
.end method

.method public exists(B)Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getByte(B)B
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 135
    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    return p1

    .line 136
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getByteArray(B)[B
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 175
    return-object p1
.end method

.method public getHeader()[B
    .locals 8

    .line 72
    nop

    .line 74
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 76
    goto :goto_0

    .line 78
    :cond_0
    new-array v0, v2, [B

    .line 80
    nop

    .line 81
    iget-object v2, p0, Lcom/android/bluetooth/mapclient/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    array-length v5, v5

    .line 84
    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    aput-byte v7, v0, v3

    .line 85
    add-int/lit8 v3, v6, 0x1

    int-to-byte v7, v5

    aput-byte v7, v0, v6

    .line 86
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    add-int/2addr v3, v5

    .line 88
    goto :goto_1

    .line 90
    :cond_1
    return-object v0
.end method

.method public getInt(B)I
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 155
    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    return p1

    .line 156
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getShort(B)S
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 145
    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    return p1

    .line 146
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getString(B)Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 165
    if-nez p1, :cond_0

    .line 166
    const/4 p1, 0x0

    return-object p1

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
