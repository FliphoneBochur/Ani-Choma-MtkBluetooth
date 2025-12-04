.class public final Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ"
.end annotation


# static fields
.field public static final PROTOCOL_FIELD_NUMBER:I = 0x1

.field public static final t0:I = 0x0

.field public static final t1:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasProtocol:Z

.field private protocol_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1973
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1982
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->protocol_:I

    .line 2015
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->cachedSize:I

    .line 1973
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2067
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 2061
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object p0

    check-cast p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;

    return-object p0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;
    .locals 1

    .line 1997
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->clearProtocol()Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;

    .line 1998
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->cachedSize:I

    .line 1999
    return-object p0
.end method

.method public clearProtocol()Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;
    .locals 1

    .line 1991
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->hasProtocol:Z

    .line 1992
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->protocol_:I

    .line 1993
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 2018
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->cachedSize:I

    if-gez v0, :cond_0

    .line 2020
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->getSerializedSize()I

    .line 2022
    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->cachedSize:I

    return v0
.end method

.method public getProtocol()I
    .locals 1

    .line 1984
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->protocol_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 2027
    nop

    .line 2028
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->hasProtocol()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2029
    const/4 v0, 0x1

    .line 2030
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->getProtocol()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 2032
    :cond_0
    iput v1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->cachedSize:I

    .line 2033
    return v1
.end method

.method public hasProtocol()Z
    .locals 1

    .line 1983
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->hasProtocol:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 2003
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->hasProtocol:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2004
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

    .line 1970
    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2041
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2042
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2046
    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2047
    return-object p0

    .line 2052
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->setProtocol(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;

    .line 2056
    :cond_1
    goto :goto_0

    .line 2044
    :cond_2
    return-object p0
.end method

.method public setProtocol(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;
    .locals 1

    .line 1986
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->hasProtocol:Z

    .line 1987
    iput p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->protocol_:I

    .line 1988
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2010
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->hasProtocol()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2011
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;->getProtocol()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2013
    :cond_0
    return-void
.end method
