.class public Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;
.super Ljava/lang/Object;
.source "BluetoothMapSmsPdu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapSmsPdu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsPdu"
.end annotation


# static fields
.field private static final BEARER_DATA:B = 0x8t

.field private static final BEARER_DATA_MSG_ID:B = 0x0t

.field private static final BEARER_REPLY_OPTION:B = 0x6t

.field private static final CAUSE_CODES:B = 0x7t

.field private static final DESTINATION_ADDRESS:B = 0x4t

.field private static final DESTINATION_SUB_ADDRESS:B = 0x5t

.field private static final ORIGINATING_ADDRESS:B = 0x2t

.field private static final ORIGINATING_SUB_ADDRESS:B = 0x3t

.field private static final SERVICE_CATEGORY:B = 0x1t

.field private static final TELESERVICE_IDENTIFIER:B = 0x0t

.field private static final TP_MIT_DELIVER:B = 0x0t

.field private static final TP_MMS_NO_MORE:B = 0x4t

.field private static final TP_RP_NO_REPLY_PATH:B = 0x0t

.field private static final TP_SRI_NO_REPORT:B = 0x0t

.field private static final TP_UDHI_MASK:B = 0x40t


# instance fields
.field private mData:[B

.field private mEncoding:I

.field private mLanguageShiftTable:I

.field private mLanguageTable:I

.field private mMsgSeptetCount:I

.field private mScAddress:[B

.field private mType:I

.field private mUserDataMsgOffset:I

.field private mUserDataSeptetPadding:I


# direct methods
.method constructor <init>([BI)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mScAddress:[B

    .line 78
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataSeptetPadding:I

    .line 86
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mMsgSeptetCount:I

    .line 89
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    .line 90
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    .line 91
    iput p2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mType:I

    .line 92
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageTable:I

    .line 93
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageShiftTable:I

    .line 94
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    .line 95
    return-void
.end method

.method constructor <init>([BIII)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mScAddress:[B

    .line 78
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataSeptetPadding:I

    .line 86
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mMsgSeptetCount:I

    .line 105
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    .line 106
    iput p2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    .line 107
    iput p3, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mType:I

    .line 108
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageTable:I

    .line 109
    return-void
.end method

.method private cdmaGetParameterOffset(B)I
    .locals 8

    .line 176
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 177
    nop

    .line 178
    nop

    .line 181
    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/io/ByteArrayInputStream;->skip(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v3

    .line 183
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_1

    .line 184
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 185
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 187
    if-ne v2, p1, :cond_0

    .line 188
    const/4 p1, 0x1

    .line 189
    goto :goto_1

    .line 191
    :cond_0
    int-to-long v5, v4

    invoke-virtual {v0, v5, v6}, Ljava/io/ByteArrayInputStream;->skip(J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    add-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    .line 194
    goto :goto_0

    .line 183
    :cond_1
    move p1, v3

    .line 195
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 198
    goto :goto_3

    .line 196
    :catch_0
    move-exception v0

    move-object v7, v0

    move v0, p1

    move-object p1, v7

    goto :goto_2

    :catch_1
    move-exception p1

    move v0, v3

    goto :goto_2

    :catch_2
    move-exception p1

    move v0, v3

    move v1, v0

    .line 197
    :goto_2
    const-string v2, "BluetoothMapSmsPdu"

    const-string v4, "cdmaGetParameterOffset: "

    invoke-static {v2, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p1, v0

    .line 200
    :goto_3
    if-eqz p1, :cond_2

    .line 201
    return v1

    .line 203
    :cond_2
    return v3
.end method

.method private cdmaGetSubParameterOffset(B)I
    .locals 8

    .line 210
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 211
    nop

    .line 212
    nop

    .line 213
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->cdmaGetParameterOffset(B)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    .line 215
    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 218
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    if-lez v3, :cond_1

    .line 219
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 220
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 222
    if-ne v3, p1, :cond_0

    .line 223
    const/4 p1, 0x1

    .line 224
    goto :goto_1

    .line 226
    :cond_0
    int-to-long v5, v4

    invoke-virtual {v0, v5, v6}, Ljava/io/ByteArrayInputStream;->skip(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    add-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    .line 229
    goto :goto_0

    .line 218
    :cond_1
    move p1, v2

    .line 230
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    goto :goto_3

    .line 231
    :catch_0
    move-exception v0

    move-object v7, v0

    move v0, p1

    move-object p1, v7

    goto :goto_2

    :catch_1
    move-exception p1

    move v0, v2

    .line 232
    :goto_2
    const-string v3, "BluetoothMapSmsPdu"

    const-string v4, "cdmaGetParameterOffset: "

    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p1, v0

    .line 235
    :goto_3
    if-eqz p1, :cond_2

    .line 236
    return v1

    .line 238
    :cond_2
    return v2
.end method

.method private gsmSubmitGetTpDcsOffset()I
    .locals 1

    .line 318
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private gsmSubmitGetTpPidOffset()I
    .locals 4

    .line 300
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    const/4 v1, 0x2

    aget-byte v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    div-int/2addr v2, v1

    add-int/2addr v2, v1

    add-int/2addr v2, v1

    .line 302
    array-length v0, v0

    if-gt v2, v0, :cond_0

    const/16 v0, 0xe

    if-gt v2, v0, :cond_0

    .line 306
    return v2

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrongly formatted gsm submit PDU. offset = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private gsmSubmitGetTpUdOffset()I
    .locals 1

    .line 335
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdlOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private gsmSubmitGetTpUdlOffset()I
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    return v0

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    return v0

    .line 324
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private gsmWriteDate(Ljava/io/ByteArrayOutputStream;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 385
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 386
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 390
    const-string p3, "US-ASCII"

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    .line 392
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 393
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p3, v2

    add-int/lit8 v2, v2, -0x30

    shl-int/lit8 v2, v2, 0x4

    aget-byte v3, p3, v1

    add-int/lit8 v3, v3, -0x30

    or-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 392
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 397
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 398
    const/16 p3, 0xf

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p3, p2

    const p2, 0xdbba0

    div-int/2addr p3, p2

    .line 401
    const-string p2, "%1$02d"

    const/4 v1, 0x1

    if-gez p3, :cond_1

    .line 402
    new-array v2, v1, [Ljava/lang/Object;

    neg-int p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v0

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 403
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    .line 404
    aget-char p3, p2, v1

    add-int/lit8 p3, p3, -0x30

    shl-int/lit8 p3, p3, 0x4

    or-int/lit8 p3, p3, 0x40

    aget-char p2, p2, v0

    add-int/lit8 p2, p2, -0x30

    or-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 405
    goto :goto_1

    .line 406
    :cond_1
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v0

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 407
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    .line 408
    aget-char p3, p2, v1

    add-int/lit8 p3, p3, -0x30

    shl-int/lit8 p3, p3, 0x4

    aget-char p2, p2, v0

    add-int/lit8 p2, p2, -0x30

    or-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 410
    :goto_1
    return-void
.end method


# virtual methods
.method public cdmaChangeToDeliverPdu(J)V
    .locals 3

    .line 250
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    const-string p2, "Unable to convert PDU to Deliver type"

    if-eqz p1, :cond_3

    .line 253
    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->cdmaGetParameterOffset(B)I

    move-result p1

    .line 254
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    array-length v1, v0

    if-lt v1, p1, :cond_2

    .line 257
    const/4 v1, 0x2

    aput-byte v1, v0, p1

    .line 259
    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->cdmaGetParameterOffset(B)I

    move-result p1

    .line 260
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    array-length v2, v0

    if-lt v2, p1, :cond_1

    .line 263
    const/4 v2, 0x3

    aput-byte v2, v0, p1

    .line 265
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->cdmaGetSubParameterOffset(B)I

    move-result p1

    .line 267
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    array-length v2, v0

    add-int/2addr p1, v1

    if-le v2, p1, :cond_0

    .line 268
    aget-byte p2, v0, p1

    and-int/lit16 p2, p2, 0xff

    .line 271
    and-int/lit8 p2, p2, 0xf

    .line 273
    or-int/lit8 p2, p2, 0x10

    .line 275
    int-to-byte p2, p2

    aput-byte p2, v0, p1

    .line 277
    nop

    .line 286
    return-void

    .line 278
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 261
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 251
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getData()[B
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    return-object v0
.end method

.method public getEncoding()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    return v0
.end method

.method public getEncodingString()Ljava/lang/String;
    .locals 5

    .line 475
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mType:I

    const-string v1, ""

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    .line 476
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    .line 489
    return-object v1

    .line 486
    :cond_0
    const-string v0, "G-16BIT"

    return-object v0

    .line 484
    :cond_1
    const-string v0, "G-8BIT"

    return-object v0

    .line 478
    :cond_2
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageTable:I

    if-nez v0, :cond_3

    .line 479
    const-string v0, "G-7BIT"

    return-object v0

    .line 481
    :cond_3
    const-string v0, "G-7BITEXT"

    return-object v0

    .line 492
    :cond_4
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_6

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    .line 503
    return-object v1

    .line 500
    :cond_5
    const-string v0, "C-KOREAN"

    return-object v0

    .line 498
    :cond_6
    const-string v0, "C-UNICODE"

    return-object v0

    .line 496
    :cond_7
    const-string v0, "C-8BIT"

    return-object v0

    .line 494
    :cond_8
    const-string v0, "C-7ASCII"

    return-object v0
.end method

.method public getLanguageShiftTable()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageShiftTable:I

    return v0
.end method

.method public getLanguageTable()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageTable:I

    return v0
.end method

.method public getMsgSeptetCount()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mMsgSeptetCount:I

    return v0
.end method

.method public getScAddress()[B
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mScAddress:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mType:I

    return v0
.end method

.method public getUserDataMsgOffset()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    return v0
.end method

.method public getUserDataMsgSize()I
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getUserDataSeptetPadding()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataSeptetPadding:I

    return v0
.end method

.method public gsmChangeToDeliverPdu(JLjava/lang/String;)V
    .locals 5

    .line 432
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 435
    nop

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x40

    or-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 440
    nop

    .line 441
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object p3

    .line 442
    if-eqz p3, :cond_1

    .line 444
    array-length v1, p3

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget-byte v1, p3, v1

    const/16 v4, 0xf0

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 445
    :goto_0
    aget-byte v4, p3, v2

    sub-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v1

    int-to-byte v1, v4

    aput-byte v1, p3, v2

    .line 448
    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 449
    goto :goto_1

    .line 450
    :cond_1
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 451
    const/16 p3, 0x81

    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 454
    :goto_1
    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v1

    aget-byte p3, p3, v1

    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 455
    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpDcsOffset()I

    move-result v1

    aget-byte p3, p3, v1

    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 457
    invoke-direct {p0, v0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmWriteDate(Ljava/io/ByteArrayOutputStream;J)V

    .line 458
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdlOffset()I

    move-result p2

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 459
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 462
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result p2

    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    array-length p3, p3

    .line 463
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v1

    sub-int/2addr p3, v1

    .line 462
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    nop

    .line 468
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    .line 469
    return-void

    .line 464
    :catch_0
    move-exception p1

    .line 465
    const-string p2, "BluetoothMapSmsPdu"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed to change type to deliver PDU."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public gsmDecodeUserDataHeader()V
    .locals 8

    .line 339
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 341
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdlOffset()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 342
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 343
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitHasUserDataHeader()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 344
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 348
    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 349
    new-array v4, v2, [B

    .line 351
    :try_start_0
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    const-string v6, "BluetoothMapSmsPdu"

    const-string v7, "unable to read userDataHeader"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    :goto_0
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->access$000([B)[I

    move-result-object v0

    .line 356
    aget v4, v0, v3

    iput v4, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageTable:I

    .line 357
    aget v0, v0, v5

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageShiftTable:I

    .line 359
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v0, 0x8

    .line 360
    div-int/lit8 v4, v0, 0x7

    .line 361
    rem-int/lit8 v6, v0, 0x7

    if-lez v6, :cond_0

    move v3, v5

    :cond_0
    add-int/2addr v4, v3

    .line 362
    mul-int/lit8 v3, v4, 0x7

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataSeptetPadding:I

    .line 363
    sub-int/2addr v1, v4

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mMsgSeptetCount:I

    .line 365
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v0

    add-int/2addr v0, v2

    add-int/2addr v0, v5

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    .line 367
    goto :goto_1

    .line 368
    :cond_2
    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataSeptetPadding:I

    .line 369
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mMsgSeptetCount:I

    .line 370
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    .line 380
    :goto_1
    return-void
.end method

.method public gsmSubmitGetTpDcs()I
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpDcsOffset()I

    move-result v1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public gsmSubmitHasUserDataHeader()Z
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x40

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public setEncoding(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    .line 121
    return-void
.end method
