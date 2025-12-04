.class public final Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RIL_SIM_SAP_APDU_RSP"
.end annotation


# static fields
.field public static final APDURESPONSE_FIELD_NUMBER:I = 0x3

.field public static final RESPONSE_FIELD_NUMBER:I = 0x2

.field public static final RIL_E_GENERIC_FAILURE:I = 0x1

.field public static final RIL_E_SIM_ABSENT:I = 0x4

.field public static final RIL_E_SIM_ALREADY_POWERED_OFF:I = 0x3

.field public static final RIL_E_SIM_NOT_READY:I = 0x2

.field public static final RIL_E_SUCCESS:I = 0x0

.field public static final RIL_TYPE_APDU:I = 0x0

.field public static final RIL_TYPE_APDU7816:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private apduResponse_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private cachedSize:I

.field private hasApduResponse:Z

.field private hasResponse:Z

.field private hasType:Z

.field private response_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 856
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 872
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->type_:I

    .line 889
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->response_:I

    .line 906
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->apduResponse_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 948
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->cachedSize:I

    .line 856
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1016
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 1010
    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object p0

    check-cast p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    return-object p0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
    .locals 1

    .line 921
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->clearType()Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    .line 922
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->clearResponse()Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    .line 923
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->clearApduResponse()Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    .line 924
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->cachedSize:I

    .line 925
    return-object p0
.end method

.method public clearApduResponse()Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
    .locals 1

    .line 915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasApduResponse:Z

    .line 916
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->apduResponse_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 917
    return-object p0
.end method

.method public clearResponse()Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
    .locals 1

    .line 898
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasResponse:Z

    .line 899
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->response_:I

    .line 900
    return-object p0
.end method

.method public clearType()Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
    .locals 1

    .line 881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasType:Z

    .line 882
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->type_:I

    .line 883
    return-object p0
.end method

.method public getApduResponse()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .line 907
    iget-object v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->apduResponse_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .line 951
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->cachedSize:I

    if-gez v0, :cond_0

    .line 953
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->getSerializedSize()I

    .line 955
    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->cachedSize:I

    return v0
.end method

.method public getResponse()I
    .locals 1

    .line 891
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->response_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 960
    nop

    .line 961
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 962
    const/4 v0, 0x1

    .line 963
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->getType()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 965
    :cond_0
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 966
    const/4 v0, 0x2

    .line 967
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->getResponse()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 969
    :cond_1
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasApduResponse()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 970
    const/4 v0, 0x3

    .line 971
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->getApduResponse()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v0

    add-int/2addr v1, v0

    .line 973
    :cond_2
    iput v1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->cachedSize:I

    .line 974
    return v1
.end method

.method public getType()I
    .locals 1

    .line 874
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->type_:I

    return v0
.end method

.method public hasApduResponse()Z
    .locals 1

    .line 908
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasApduResponse:Z

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .line 890
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasResponse:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .line 873
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 929
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasType:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 930
    :cond_0
    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasResponse:Z

    if-nez v0, :cond_1

    return v1

    .line 931
    :cond_1
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

    .line 853
    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 982
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 983
    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 987
    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 988
    return-object p0

    .line 1001
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->setApduResponse(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    goto :goto_1

    .line 997
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->setResponse(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    .line 998
    goto :goto_1

    .line 993
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->setType(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    .line 994
    nop

    .line 1005
    :cond_3
    :goto_1
    goto :goto_0

    .line 985
    :cond_4
    return-object p0
.end method

.method public setApduResponse(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
    .locals 1

    .line 910
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasApduResponse:Z

    .line 911
    iput-object p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->apduResponse_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 912
    return-object p0
.end method

.method public setResponse(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
    .locals 1

    .line 893
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasResponse:Z

    .line 894
    iput p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->response_:I

    .line 895
    return-object p0
.end method

.method public setType(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;
    .locals 1

    .line 876
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasType:Z

    .line 877
    iput p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->type_:I

    .line 878
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 937
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 940
    :cond_0
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 941
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->getResponse()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 943
    :cond_1
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasApduResponse()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 944
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->getApduResponse()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 946
    :cond_2
    return-void
.end method
