.class public Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;
.super Ljava/lang/Object;
.source "AdvtFilterOnFoundOnLostInfo.java"


# instance fields
.field private mAddrType:I

.field private mAddress:Ljava/lang/String;

.field private mAdvInfoPresent:I

.field private mAdvPkt:[B

.field private mAdvPktLen:I

.field private mAdvState:I

.field private mClientIf:I

.field private mFiltIndex:I

.field private mRssiValue:I

.field private mScanRsp:[B

.field private mScanRspLen:I

.field private mTimeStamp:I

.field private mTxPower:I


# direct methods
.method public constructor <init>(II[BI[BIIILjava/lang/String;IIII)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mClientIf:I

    .line 47
    iput p2, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPktLen:I

    .line 48
    iput-object p3, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPkt:[B

    .line 49
    iput p4, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRspLen:I

    .line 50
    iput-object p5, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRsp:[B

    .line 51
    iput p6, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mFiltIndex:I

    .line 52
    iput p7, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvState:I

    .line 53
    iput p8, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvInfoPresent:I

    .line 54
    iput-object p9, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAddress:Ljava/lang/String;

    .line 55
    iput p10, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAddrType:I

    .line 56
    iput p11, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mTxPower:I

    .line 57
    iput p12, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mRssiValue:I

    .line 58
    iput p13, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mTimeStamp:I

    .line 59
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressType()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAddrType:I

    return v0
.end method

.method public getAdvInfoPresent()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvInfoPresent:I

    return v0
.end method

.method public getAdvPacketData()[B
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPkt:[B

    return-object v0
.end method

.method public getAdvPacketLen()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPktLen:I

    return v0
.end method

.method public getAdvState()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvState:I

    return v0
.end method

.method public getClientIf()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mClientIf:I

    return v0
.end method

.method public getFiltIndex()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mFiltIndex:I

    return v0
.end method

.method public getRSSIValue()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mRssiValue:I

    return v0
.end method

.method public getResult()[B
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPkt:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRsp:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v1, v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    .line 115
    new-array v0, v0, [B

    .line 116
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPkt:[B

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRsp:[B

    if-eqz v1, :cond_1

    .line 118
    iget-object v3, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPkt:[B

    array-length v3, v3

    array-length v4, v1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    :cond_1
    return-object v0
.end method

.method public getScanRspData()[B
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRsp:[B

    return-object v0
.end method

.method public getScanRspLen()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRspLen:I

    return v0
.end method

.method public getTimeStamp()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mTimeStamp:I

    return v0
.end method

.method public getTxPower()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mTxPower:I

    return v0
.end method
