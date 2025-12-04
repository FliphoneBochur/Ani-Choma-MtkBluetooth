.class public final Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RIL_SIM_SAP_DISCONNECT_RSP"
.end annotation


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 555
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 570
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;->cachedSize:I

    .line 555
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 614
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 608
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object p0

    check-cast p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;

    return-object p0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;
    .locals 1

    .line 558
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;->cachedSize:I

    .line 559
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 573
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;->cachedSize:I

    if-gez v0, :cond_0

    .line 575
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;->getSerializedSize()I

    .line 577
    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .line 582
    nop

    .line 583
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;->cachedSize:I

    .line 584
    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 563
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

    .line 552
    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 592
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 593
    if-eqz v0, :cond_1

    .line 597
    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    return-object p0

    .line 603
    :cond_0
    goto :goto_0

    .line 595
    :cond_1
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 0

    .line 568
    return-void
.end method
