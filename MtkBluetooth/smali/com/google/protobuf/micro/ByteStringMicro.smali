.class public final Lcom/google/protobuf/micro/ByteStringMicro;
.super Ljava/lang/Object;
.source "ByteStringMicro.java"


# static fields
.field public static final EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;


# instance fields
.field private final bytes:[B

.field private volatile hash:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Lcom/google/protobuf/micro/ByteStringMicro;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/protobuf/micro/ByteStringMicro;-><init>([B)V

    sput-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->hash:I

    .line 45
    iput-object p1, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    .line 46
    return-void
.end method

.method public static copyFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/google/protobuf/micro/ByteStringMicro;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/protobuf/micro/ByteStringMicro;-><init>([B)V

    return-object v0
.end method

.method public static copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 2

    .line 93
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([BII)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object p0

    return-object p0
.end method

.method public static copyFrom([BII)Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 2

    .line 84
    new-array v0, p2, [B

    .line 85
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    new-instance p0, Lcom/google/protobuf/micro/ByteStringMicro;

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/ByteStringMicro;-><init>([B)V

    return-object p0
.end method

.method public static copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 2

    .line 111
    :try_start_0
    new-instance v0, Lcom/google/protobuf/micro/ByteStringMicro;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/protobuf/micro/ByteStringMicro;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 112
    :catch_0
    move-exception p0

    .line 113
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "UTF-8 not supported?"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public byteAt(I)B
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public copyTo([BI)V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    return-void
.end method

.method public copyTo([BIII)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 179
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 180
    return v0

    .line 183
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/micro/ByteStringMicro;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 184
    return v2

    .line 187
    :cond_1
    check-cast p1, Lcom/google/protobuf/micro/ByteStringMicro;

    .line 188
    iget-object v1, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    array-length v3, v1

    .line 189
    iget-object p1, p1, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    array-length v4, p1

    if-eq v3, v4, :cond_2

    .line 190
    return v2

    .line 193
    :cond_2
    nop

    .line 194
    nop

    .line 195
    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_4

    .line 196
    aget-byte v5, v1, v4

    aget-byte v6, p1, v4

    if-eq v5, v6, :cond_3

    .line 197
    return v2

    .line 195
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 201
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 208
    iget v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->hash:I

    .line 210
    if-nez v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    .line 212
    array-length v1, v0

    .line 214
    nop

    .line 215
    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v2, v1, :cond_0

    .line 216
    mul-int/lit8 v3, v3, 0x1f

    aget-byte v4, v0, v2

    add-int/2addr v3, v4

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_0
    if-nez v3, :cond_1

    .line 219
    const/4 v0, 0x1

    goto :goto_1

    .line 218
    :cond_1
    move v0, v3

    .line 222
    :goto_1
    iput v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->hash:I

    .line 225
    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    array-length v1, v0

    .line 149
    new-array v2, v1, [B

    .line 150
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    return-object v2
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public toStringUtf8()Ljava/lang/String;
    .locals 3

    .line 168
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/protobuf/micro/ByteStringMicro;->bytes:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
