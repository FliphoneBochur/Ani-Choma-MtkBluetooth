.class public final Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RIL_SIM_SAP_DISCONNECT_IND"
.end annotation


# static fields
.field public static final DISCONNECTTYPE_FIELD_NUMBER:I = 0x1

.field public static final RIL_S_DISCONNECT_TYPE_GRACEFUL:I = 0x0

.field public static final RIL_S_DISCONNECT_TYPE_IMMEDIATE:I = 0x1


# instance fields
.field private cachedSize:I

.field private disconnectType_:I

.field private hasDisconnectType:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 622
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 631
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->disconnectType_:I

    .line 664
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->cachedSize:I

    .line 622
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 716
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 710
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object p0

    check-cast p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;

    return-object p0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;
    .locals 1

    .line 646
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->clearDisconnectType()Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;

    .line 647
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->cachedSize:I

    .line 648
    return-object p0
.end method

.method public clearDisconnectType()Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;
    .locals 1

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->hasDisconnectType:Z

    .line 641
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->disconnectType_:I

    .line 642
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 667
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->cachedSize:I

    if-gez v0, :cond_0

    .line 669
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->getSerializedSize()I

    .line 671
    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->cachedSize:I

    return v0
.end method

.method public getDisconnectType()I
    .locals 1

    .line 633
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->disconnectType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 676
    nop

    .line 677
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->hasDisconnectType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 678
    const/4 v0, 0x1

    .line 679
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->getDisconnectType()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 681
    :cond_0
    iput v1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->cachedSize:I

    .line 682
    return v1
.end method

.method public hasDisconnectType()Z
    .locals 1

    .line 632
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->hasDisconnectType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 652
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->hasDisconnectType:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 653
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

    .line 619
    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 690
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 691
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 695
    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 696
    return-object p0

    .line 701
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->setDisconnectType(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;

    .line 705
    :cond_1
    goto :goto_0

    .line 693
    :cond_2
    return-object p0
.end method

.method public setDisconnectType(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;
    .locals 1

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->hasDisconnectType:Z

    .line 636
    iput p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->disconnectType_:I

    .line 637
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->hasDisconnectType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->getDisconnectType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 662
    :cond_0
    return-void
.end method
