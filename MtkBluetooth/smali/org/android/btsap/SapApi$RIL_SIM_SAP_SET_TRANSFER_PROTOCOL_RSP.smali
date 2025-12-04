.class public final Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP"
.end annotation


# static fields
.field public static final RESPONSE_FIELD_NUMBER:I = 0x1

.field public static final RIL_E_GENERIC_FAILURE:I = 0x2

.field public static final RIL_E_SIM_ABSENT:I = 0xb

.field public static final RIL_E_SIM_ALREADY_POWERED_OFF:I = 0x11

.field public static final RIL_E_SIM_NOT_READY:I = 0x10

.field public static final RIL_E_SUCCESS:I


# instance fields
.field private cachedSize:I

.field private hasResponse:Z

.field private response_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2075
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2087
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->response_:I

    .line 2120
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->cachedSize:I

    .line 2075
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2172
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 2166
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object p0

    check-cast p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;

    return-object p0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;
    .locals 1

    .line 2102
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->clearResponse()Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;

    .line 2103
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->cachedSize:I

    .line 2104
    return-object p0
.end method

.method public clearResponse()Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;
    .locals 1

    .line 2096
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->hasResponse:Z

    .line 2097
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->response_:I

    .line 2098
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 2123
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->cachedSize:I

    if-gez v0, :cond_0

    .line 2125
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->getSerializedSize()I

    .line 2127
    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->cachedSize:I

    return v0
.end method

.method public getResponse()I
    .locals 1

    .line 2089
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->response_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 2132
    nop

    .line 2133
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->hasResponse()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2134
    const/4 v0, 0x1

    .line 2135
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->getResponse()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 2137
    :cond_0
    iput v1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->cachedSize:I

    .line 2138
    return v1
.end method

.method public hasResponse()Z
    .locals 1

    .line 2088
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->hasResponse:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 2108
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->hasResponse:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2109
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

    .line 2072
    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2146
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2147
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2151
    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2152
    return-object p0

    .line 2157
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->setResponse(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;

    .line 2161
    :cond_1
    goto :goto_0

    .line 2149
    :cond_2
    return-object p0
.end method

.method public setResponse(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;
    .locals 1

    .line 2091
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->hasResponse:Z

    .line 2092
    iput p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->response_:I

    .line 2093
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2115
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2116
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->getResponse()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2118
    :cond_0
    return-void
.end method
