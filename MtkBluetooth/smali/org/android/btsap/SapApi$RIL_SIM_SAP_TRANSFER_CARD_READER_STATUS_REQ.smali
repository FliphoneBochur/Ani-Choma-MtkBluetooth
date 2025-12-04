.class public final Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ"
.end annotation


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1707
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1722
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->cachedSize:I

    .line 1707
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1766
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 1760
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object p0

    check-cast p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;

    return-object p0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;
    .locals 1

    .line 1710
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->cachedSize:I

    .line 1711
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 1725
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->cachedSize:I

    if-gez v0, :cond_0

    .line 1727
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->getSerializedSize()I

    .line 1729
    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .line 1734
    nop

    .line 1735
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->cachedSize:I

    .line 1736
    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1715
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

    .line 1704
    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1744
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1745
    if-eqz v0, :cond_1

    .line 1749
    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1750
    return-object p0

    .line 1755
    :cond_0
    goto :goto_0

    .line 1747
    :cond_1
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 0

    .line 1720
    return-void
.end method
