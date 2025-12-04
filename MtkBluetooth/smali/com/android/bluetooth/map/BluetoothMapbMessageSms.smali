.class public Lcom/android/bluetooth/map/BluetoothMapbMessageSms;
.super Lcom/android/bluetooth/map/BluetoothMapbMessage;
.source "BluetoothMapbMessageSms.java"


# instance fields
.field private mSmsBody:Ljava/lang/String;

.field private mSmsBodyPdus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBodyPdus:Ljava/util/ArrayList;

    .line 29
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBody:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encode()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBody:Ljava/lang/String;

    const-string v2, "UTF-8"

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 86
    const-string v4, "END:MSG"

    const-string v5, "/END\\:MSG"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 91
    const-string v5, "9C:DF:03"

    invoke-static {v4, v5}, Lcom/android/bluetooth/DeviceWorkArounds;->addressStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_0

    .line 92
    const-string v3, "\r"

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 95
    :cond_0
    const-string v5, "00:1E:AE"

    invoke-static {v4, v5}, Lcom/android/bluetooth/DeviceWorkArounds;->addressStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 97
    const-string v3, "\n"

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 100
    :cond_1
    const-string v5, "D0:39:72"

    invoke-static {v4, v5}, Lcom/android/bluetooth/DeviceWorkArounds;->addressStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 103
    move v4, v3

    .line 104
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 107
    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBodyPdus:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 109
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBodyPdus:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;

    .line 111
    nop

    .line 112
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getData()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getScAddress()[B

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->encodeBinary([B[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 111
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    goto :goto_2

    :cond_5
    goto :goto_3

    .line 115
    :cond_6
    new-array v1, v3, [B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->encodeGeneric(Ljava/util/ArrayList;)[B

    move-result-object v0

    return-object v0
.end method

.method public getSmsBody()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBody:Ljava/lang/String;

    return-object v0
.end method

.method public parseMsgInit()V
    .locals 1

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBody:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public parseMsgPart(Ljava/lang/String;)V
    .locals 5

    .line 51
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mAppParamCharset:I

    if-nez v0, :cond_4

    .line 52
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->D:Z

    const-string v1, "BluetoothMapbMessage"

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoding \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" as native PDU"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->decodeBinary(Ljava/lang/String;)[B

    move-result-object p1

    .line 56
    array-length v0, p1

    const/4 v2, 0x1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget-byte v3, p1, v0

    array-length v4, p1

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_2

    aget-byte v0, p1, v0

    add-int/2addr v0, v2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x3

    if-eq v0, v2, :cond_2

    .line 58
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->D:Z

    const-string v0, "Only submit PDUs are supported"

    if-eqz p1, :cond_1

    .line 59
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v1, v3, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    .line 66
    :cond_3
    nop

    .line 64
    :goto_0
    invoke-static {p1, v2}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->decodePdu([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBody:Ljava/lang/String;

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBody:Ljava/lang/String;

    .line 70
    :goto_1
    return-void
.end method

.method public setSmsBody(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBody:Ljava/lang/String;

    .line 45
    const-string p1, "UTF-8"

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mCharset:Ljava/lang/String;

    .line 46
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mEncoding:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setSmsBodyPdus(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBodyPdus:Ljava/util/ArrayList;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mCharset:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getEncodingString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mEncoding:Ljava/lang/String;

    .line 37
    :cond_0
    return-void
.end method
