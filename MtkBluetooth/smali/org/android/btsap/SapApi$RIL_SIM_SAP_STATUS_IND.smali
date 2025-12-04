.class public final Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RIL_SIM_SAP_STATUS_IND"
.end annotation


# static fields
.field public static final RIL_SIM_STATUS_CARD_INSERTED:I = 0x4

.field public static final RIL_SIM_STATUS_CARD_NOT_ACCESSIBLE:I = 0x2

.field public static final RIL_SIM_STATUS_CARD_REMOVED:I = 0x3

.field public static final RIL_SIM_STATUS_CARD_RESET:I = 0x1

.field public static final RIL_SIM_STATUS_RECOVERED:I = 0x5

.field public static final RIL_SIM_STATUS_UNKNOWN_ERROR:I = 0x0

.field public static final STATUSCHANGE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasStatusChange:Z

.field private statusChange_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1601
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1614
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->statusChange_:I

    .line 1647
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->cachedSize:I

    .line 1601
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1699
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 1693
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object p0

    check-cast p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;

    return-object p0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;
    .locals 1

    .line 1629
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->clearStatusChange()Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;

    .line 1630
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->cachedSize:I

    .line 1631
    return-object p0
.end method

.method public clearStatusChange()Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;
    .locals 1

    .line 1623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->hasStatusChange:Z

    .line 1624
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->statusChange_:I

    .line 1625
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .line 1650
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->cachedSize:I

    if-gez v0, :cond_0

    .line 1652
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->getSerializedSize()I

    .line 1654
    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1659
    nop

    .line 1660
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->hasStatusChange()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1661
    const/4 v0, 0x1

    .line 1662
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->getStatusChange()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 1664
    :cond_0
    iput v1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->cachedSize:I

    .line 1665
    return v1
.end method

.method public getStatusChange()I
    .locals 1

    .line 1616
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->statusChange_:I

    return v0
.end method

.method public hasStatusChange()Z
    .locals 1

    .line 1615
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->hasStatusChange:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1635
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->hasStatusChange:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1636
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

    .line 1598
    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1673
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1674
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1678
    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1679
    return-object p0

    .line 1684
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->setStatusChange(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;

    .line 1688
    :cond_1
    goto :goto_0

    .line 1676
    :cond_2
    return-object p0
.end method

.method public setStatusChange(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;
    .locals 1

    .line 1618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->hasStatusChange:Z

    .line 1619
    iput p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->statusChange_:I

    .line 1620
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1642
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->hasStatusChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1643
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->getStatusChange()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1645
    :cond_0
    return-void
.end method
