.class public final Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RIL_SIM_SAP_CONNECT_REQ"
.end annotation


# static fields
.field public static final MAX_MESSAGE_SIZE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasMaxMessageSize:Z

.field private maxMessageSize_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 256
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->maxMessageSize_:I

    .line 294
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->cachedSize:I

    .line 256
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 340
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object p0

    check-cast p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;

    return-object p0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;
    .locals 1

    .line 276
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->clearMaxMessageSize()Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;

    .line 277
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->cachedSize:I

    .line 278
    return-object p0
.end method

.method public clearMaxMessageSize()Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;
    .locals 1

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->hasMaxMessageSize:Z

    .line 271
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->maxMessageSize_:I

    .line 272
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 297
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->cachedSize:I

    if-gez v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->getSerializedSize()I

    .line 301
    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->cachedSize:I

    return v0
.end method

.method public getMaxMessageSize()I
    .locals 1

    .line 262
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->maxMessageSize_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 306
    nop

    .line 307
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->hasMaxMessageSize()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x1

    .line 309
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->getMaxMessageSize()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 311
    :cond_0
    iput v1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->cachedSize:I

    .line 312
    return v1
.end method

.method public hasMaxMessageSize()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->hasMaxMessageSize:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->hasMaxMessageSize:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 283
    :cond_0
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

    .line 253
    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 321
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 325
    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    return-object p0

    .line 331
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->setMaxMessageSize(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;

    .line 335
    :cond_1
    goto :goto_0

    .line 323
    :cond_2
    return-object p0
.end method

.method public setMaxMessageSize(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;
    .locals 1

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->hasMaxMessageSize:Z

    .line 266
    iput p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->maxMessageSize_:I

    .line 267
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->hasMaxMessageSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;->getMaxMessageSize()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 292
    :cond_0
    return-void
.end method
