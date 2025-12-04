.class public final Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RIL_SIM_SAP_TRANSFER_ATR_RSP"
.end annotation


# static fields
.field public static final ATR_FIELD_NUMBER:I = 0x2

.field public static final RESPONSE_FIELD_NUMBER:I = 0x1

.field public static final RIL_E_GENERIC_FAILURE:I = 0x1

.field public static final RIL_E_SIM_ABSENT:I = 0x4

.field public static final RIL_E_SIM_ALREADY_POWERED_OFF:I = 0x3

.field public static final RIL_E_SIM_ALREADY_POWERED_ON:I = 0x12

.field public static final RIL_E_SIM_DATA_NOT_AVAILABLE:I = 0x6

.field public static final RIL_E_SUCCESS:I


# instance fields
.field private atr_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private cachedSize:I

.field private hasAtr:Z

.field private hasResponse:Z

.field private response_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1091
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1104
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->response_:I

    .line 1121
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->atr_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1158
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->cachedSize:I

    .line 1091
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1218
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 1212
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object p0

    check-cast p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;

    return-object p0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;
    .locals 1

    .line 1136
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->clearResponse()Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;

    .line 1137
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->clearAtr()Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;

    .line 1138
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->cachedSize:I

    .line 1139
    return-object p0
.end method

.method public clearAtr()Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;
    .locals 1

    .line 1130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasAtr:Z

    .line 1131
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->atr_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1132
    return-object p0
.end method

.method public clearResponse()Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;
    .locals 1

    .line 1113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasResponse:Z

    .line 1114
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->response_:I

    .line 1115
    return-object p0
.end method

.method public getAtr()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .line 1122
    iget-object v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->atr_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .line 1161
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->cachedSize:I

    if-gez v0, :cond_0

    .line 1163
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->getSerializedSize()I

    .line 1165
    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->cachedSize:I

    return v0
.end method

.method public getResponse()I
    .locals 1

    .line 1106
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->response_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1170
    nop

    .line 1171
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasResponse()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1172
    const/4 v0, 0x1

    .line 1173
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->getResponse()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 1175
    :cond_0
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasAtr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1176
    const/4 v0, 0x2

    .line 1177
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->getAtr()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1179
    :cond_1
    iput v1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->cachedSize:I

    .line 1180
    return v1
.end method

.method public hasAtr()Z
    .locals 1

    .line 1123
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasAtr:Z

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .line 1105
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasResponse:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1143
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasResponse:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1144
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

    .line 1088
    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1188
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1189
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    .line 1193
    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1194
    return-object p0

    .line 1203
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->setAtr(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;

    goto :goto_1

    .line 1199
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->setResponse(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;

    .line 1200
    nop

    .line 1207
    :cond_2
    :goto_1
    goto :goto_0

    .line 1191
    :cond_3
    return-object p0
.end method

.method public setAtr(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;
    .locals 1

    .line 1125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasAtr:Z

    .line 1126
    iput-object p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->atr_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1127
    return-object p0
.end method

.method public setResponse(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;
    .locals 1

    .line 1108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasResponse:Z

    .line 1109
    iput p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->response_:I

    .line 1110
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1150
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->getResponse()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1153
    :cond_0
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasAtr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1154
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->getAtr()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 1156
    :cond_1
    return-void
.end method
