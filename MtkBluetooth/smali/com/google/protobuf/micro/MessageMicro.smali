.class public abstract Lcom/google/protobuf/micro/MessageMicro;
.super Ljava/lang/Object;
.source "MessageMicro.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCachedSize()I
.end method

.method public abstract getSerializedSize()I
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 105
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/protobuf/micro/MessageMicro;->mergeFrom([BII)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom([BII)Lcom/google/protobuf/micro/MessageMicro;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 115
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->newInstance([BII)Lcom/google/protobuf/micro/CodedInputStreamMicro;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/MessageMicro;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;

    .line 117
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    return-object p0

    .line 121
    :catch_0
    move-exception p1

    .line 122
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :catch_1
    move-exception p1

    .line 120
    throw p1
.end method

.method protected parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-virtual {p1, p2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->skipField(I)Z

    move-result p1

    return p1
.end method

.method public toByteArray([BII)V
    .locals 0

    .line 91
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->newInstance([BII)Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/MessageMicro;->writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    .line 93
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    nop

    .line 98
    return-void

    .line 94
    :catch_0
    move-exception p1

    .line 95
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toByteArray()[B
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/google/protobuf/micro/MessageMicro;->getSerializedSize()I

    move-result v0

    new-array v1, v0, [B

    .line 76
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/protobuf/micro/MessageMicro;->toByteArray([BII)V

    .line 77
    return-object v1
.end method

.method public abstract writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
