.class public final Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RIL_SIM_SAP_CONNECT_RSP"
.end annotation


# static fields
.field public static final MAX_MESSAGE_SIZE_FIELD_NUMBER:I = 0x2

.field public static final RESPONSE_FIELD_NUMBER:I = 0x1

.field public static final RIL_E_SAP_CONNECT_FAILURE:I = 0x1

.field public static final RIL_E_SAP_CONNECT_OK_CALL_ONGOING:I = 0x4

.field public static final RIL_E_SAP_MSG_SIZE_TOO_LARGE:I = 0x2

.field public static final RIL_E_SAP_MSG_SIZE_TOO_SMALL:I = 0x3

.field public static final RIL_E_SUCCESS:I


# instance fields
.field private cachedSize:I

.field private hasMaxMessageSize:Z

.field private hasResponse:Z

.field private maxMessageSize_:I

.field private response_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 354
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 366
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->response_:I

    .line 383
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->maxMessageSize_:I

    .line 420
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->cachedSize:I

    .line 354
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 474
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object p0

    check-cast p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;

    return-object p0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;
    .locals 1

    .line 398
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->clearResponse()Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;

    .line 399
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->clearMaxMessageSize()Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;

    .line 400
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->cachedSize:I

    .line 401
    return-object p0
.end method

.method public clearMaxMessageSize()Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;
    .locals 1

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasMaxMessageSize:Z

    .line 393
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->maxMessageSize_:I

    .line 394
    return-object p0
.end method

.method public clearResponse()Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;
    .locals 1

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasResponse:Z

    .line 376
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->response_:I

    .line 377
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 423
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->cachedSize:I

    if-gez v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->getSerializedSize()I

    .line 427
    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->cachedSize:I

    return v0
.end method

.method public getMaxMessageSize()I
    .locals 1

    .line 384
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->maxMessageSize_:I

    return v0
.end method

.method public getResponse()I
    .locals 1

    .line 368
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->response_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 432
    nop

    .line 433
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasResponse()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 434
    const/4 v0, 0x1

    .line 435
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->getResponse()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 437
    :cond_0
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasMaxMessageSize()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    const/4 v0, 0x2

    .line 439
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->getMaxMessageSize()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 441
    :cond_1
    iput v1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->cachedSize:I

    .line 442
    return v1
.end method

.method public hasMaxMessageSize()Z
    .locals 1

    .line 385
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasMaxMessageSize:Z

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .line 367
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasResponse:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 405
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasResponse:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 406
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

    .line 351
    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 451
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 455
    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 456
    return-object p0

    .line 465
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->setMaxMessageSize(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;

    goto :goto_1

    .line 461
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->setResponse(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;

    .line 462
    nop

    .line 469
    :cond_2
    :goto_1
    goto :goto_0

    .line 453
    :cond_3
    return-object p0
.end method

.method public setMaxMessageSize(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;
    .locals 1

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasMaxMessageSize:Z

    .line 388
    iput p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->maxMessageSize_:I

    .line 389
    return-object p0
.end method

.method public setResponse(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;
    .locals 1

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasResponse:Z

    .line 371
    iput p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->response_:I

    .line 372
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->getResponse()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 415
    :cond_0
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasMaxMessageSize()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->getMaxMessageSize()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 418
    :cond_1
    return-void
.end method
