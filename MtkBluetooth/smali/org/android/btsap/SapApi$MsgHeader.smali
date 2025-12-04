.class public final Lorg/android/btsap/SapApi$MsgHeader;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MsgHeader"
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x3

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x5

.field public static final TOKEN_FIELD_NUMBER:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private error_:I

.field private hasError:Z

.field private hasId:Z

.field private hasPayload:Z

.field private hasToken:Z

.field private hasType:Z

.field private id_:I

.field private payload_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private token_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->token_:I

    .line 60
    iput v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->type_:I

    .line 77
    iput v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->id_:I

    .line 94
    iput v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->error_:I

    .line 111
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->payload_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->cachedSize:I

    .line 38
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$MsgHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    new-instance v0, Lorg/android/btsap/SapApi$MsgHeader;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$MsgHeader;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$MsgHeader;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$MsgHeader;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$MsgHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 242
    new-instance v0, Lorg/android/btsap/SapApi$MsgHeader;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$MsgHeader;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$MsgHeader;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object p0

    check-cast p0, Lorg/android/btsap/SapApi$MsgHeader;

    return-object p0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$MsgHeader;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->clearToken()Lorg/android/btsap/SapApi$MsgHeader;

    .line 127
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->clearType()Lorg/android/btsap/SapApi$MsgHeader;

    .line 128
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->clearId()Lorg/android/btsap/SapApi$MsgHeader;

    .line 129
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->clearError()Lorg/android/btsap/SapApi$MsgHeader;

    .line 130
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->clearPayload()Lorg/android/btsap/SapApi$MsgHeader;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->cachedSize:I

    .line 132
    return-object p0
.end method

.method public clearError()Lorg/android/btsap/SapApi$MsgHeader;
    .locals 1

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->hasError:Z

    .line 104
    iput v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->error_:I

    .line 105
    return-object p0
.end method

.method public clearId()Lorg/android/btsap/SapApi$MsgHeader;
    .locals 1

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->hasId:Z

    .line 87
    iput v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->id_:I

    .line 88
    return-object p0
.end method

.method public clearPayload()Lorg/android/btsap/SapApi$MsgHeader;
    .locals 1

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->hasPayload:Z

    .line 121
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->payload_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 122
    return-object p0
.end method

.method public clearToken()Lorg/android/btsap/SapApi$MsgHeader;
    .locals 1

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->hasToken:Z

    .line 53
    iput v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->token_:I

    .line 54
    return-object p0
.end method

.method public clearType()Lorg/android/btsap/SapApi$MsgHeader;
    .locals 1

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->hasType:Z

    .line 70
    iput v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->type_:I

    .line 71
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 167
    iget v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->cachedSize:I

    if-gez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->getSerializedSize()I

    .line 171
    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->cachedSize:I

    return v0
.end method

.method public getError()I
    .locals 1

    .line 96
    iget v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->error_:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 79
    iget v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->id_:I

    return v0
.end method

.method public getPayload()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->payload_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 176
    nop

    .line 177
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->hasToken()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x1

    .line 179
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->getToken()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const/4 v0, 0x2

    .line 183
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->getType()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 185
    :cond_1
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    const/4 v0, 0x3

    .line 187
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->getId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 189
    :cond_2
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->hasError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    const/4 v0, 0x4

    .line 191
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->getError()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 193
    :cond_3
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->hasPayload()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    const/4 v0, 0x5

    .line 195
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v0

    add-int/2addr v1, v0

    .line 197
    :cond_4
    iput v1, p0, Lorg/android/btsap/SapApi$MsgHeader;->cachedSize:I

    .line 198
    return v1
.end method

.method public getToken()I
    .locals 1

    .line 44
    iget v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->token_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->type_:I

    return v0
.end method

.method public hasError()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->hasError:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->hasId:Z

    return v0
.end method

.method public hasPayload()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->hasPayload:Z

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->hasToken:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 136
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->hasToken:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 137
    :cond_0
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->hasType:Z

    if-nez v0, :cond_1

    return v1

    .line 138
    :cond_1
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->hasId:Z

    if-nez v0, :cond_2

    return v1

    .line 139
    :cond_2
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->hasError:Z

    if-nez v0, :cond_3

    return v1

    .line 140
    :cond_3
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->hasPayload:Z

    if-nez v0, :cond_4

    return v1

    .line 141
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$MsgHeader;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$MsgHeader;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$MsgHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 207
    if-eqz v0, :cond_6

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    .line 211
    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$MsgHeader;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 212
    return-object p0

    .line 233
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/android/btsap/SapApi$MsgHeader;->setPayload(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$MsgHeader;

    goto :goto_1

    .line 229
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/android/btsap/SapApi$MsgHeader;->setError(I)Lorg/android/btsap/SapApi$MsgHeader;

    .line 230
    goto :goto_1

    .line 225
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/android/btsap/SapApi$MsgHeader;->setId(I)Lorg/android/btsap/SapApi$MsgHeader;

    .line 226
    goto :goto_1

    .line 221
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/android/btsap/SapApi$MsgHeader;->setType(I)Lorg/android/btsap/SapApi$MsgHeader;

    .line 222
    goto :goto_1

    .line 217
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/android/btsap/SapApi$MsgHeader;->setToken(I)Lorg/android/btsap/SapApi$MsgHeader;

    .line 218
    nop

    .line 237
    :cond_5
    :goto_1
    goto :goto_0

    .line 209
    :cond_6
    return-object p0
.end method

.method public setError(I)Lorg/android/btsap/SapApi$MsgHeader;
    .locals 1

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->hasError:Z

    .line 99
    iput p1, p0, Lorg/android/btsap/SapApi$MsgHeader;->error_:I

    .line 100
    return-object p0
.end method

.method public setId(I)Lorg/android/btsap/SapApi$MsgHeader;
    .locals 1

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->hasId:Z

    .line 82
    iput p1, p0, Lorg/android/btsap/SapApi$MsgHeader;->id_:I

    .line 83
    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$MsgHeader;
    .locals 1

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->hasPayload:Z

    .line 116
    iput-object p1, p0, Lorg/android/btsap/SapApi$MsgHeader;->payload_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 117
    return-object p0
.end method

.method public setToken(I)Lorg/android/btsap/SapApi$MsgHeader;
    .locals 1

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->hasToken:Z

    .line 48
    iput p1, p0, Lorg/android/btsap/SapApi$MsgHeader;->token_:I

    .line 49
    return-object p0
.end method

.method public setType(I)Lorg/android/btsap/SapApi$MsgHeader;
    .locals 1

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$MsgHeader;->hasType:Z

    .line 65
    iput p1, p0, Lorg/android/btsap/SapApi$MsgHeader;->type_:I

    .line 66
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->getToken()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 153
    :cond_1
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 156
    :cond_2
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->hasError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->getError()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 159
    :cond_3
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->hasPayload()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 162
    :cond_4
    return-void
.end method
