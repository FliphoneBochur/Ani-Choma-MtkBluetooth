.class public Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;
.super Ljava/lang/Object;
.source "BluetoothMapbMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapbMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VCard"
.end annotation


# instance fields
.field private mBtUcis:[Ljava/lang/String;

.field private mBtUids:[Ljava/lang/String;

.field private mEmailAddresses:[Ljava/lang/String;

.field private mEnvLevel:I

.field private mFormattedName:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPhoneNumbers:[Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mName:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mFormattedName:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mPhoneNumbers:[Ljava/lang/String;

    .line 69
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mEmailAddresses:[Ljava/lang/String;

    .line 70
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mEnvLevel:I

    .line 71
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mBtUcis:[Ljava/lang/String;

    .line 72
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mBtUids:[Ljava/lang/String;

    .line 89
    iput p5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mEnvLevel:I

    .line 90
    const-string p5, "3.0"

    iput-object p5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mVersion:Ljava/lang/String;

    .line 91
    const-string p5, ""

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p5

    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mName:Ljava/lang/String;

    .line 92
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p5

    :goto_1
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mFormattedName:Ljava/lang/String;

    .line 93
    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->setPhoneNumbers([Ljava/lang/String;)V

    .line 94
    if-eqz p4, :cond_2

    .line 95
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mEmailAddresses:[Ljava/lang/String;

    .line 97
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 p5, 0x0

    iput-object p5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mName:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mFormattedName:Ljava/lang/String;

    .line 68
    const/4 p5, 0x0

    new-array v0, p5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mPhoneNumbers:[Ljava/lang/String;

    .line 69
    new-array v0, p5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mEmailAddresses:[Ljava/lang/String;

    .line 70
    iput p5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mEnvLevel:I

    .line 71
    new-array v0, p5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mBtUcis:[Ljava/lang/String;

    .line 72
    new-array p5, p5, [Ljava/lang/String;

    iput-object p5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mBtUids:[Ljava/lang/String;

    .line 127
    const-string p5, "3.0"

    iput-object p5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mVersion:Ljava/lang/String;

    .line 128
    const-string p5, ""

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p5

    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mName:Ljava/lang/String;

    .line 129
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p5

    :goto_1
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mFormattedName:Ljava/lang/String;

    .line 130
    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->setPhoneNumbers([Ljava/lang/String;)V

    .line 131
    if-eqz p4, :cond_2

    .line 132
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mEmailAddresses:[Ljava/lang/String;

    .line 134
    :cond_2
    if-eqz p6, :cond_3

    .line 135
    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mBtUcis:[Ljava/lang/String;

    .line 137
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mName:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mFormattedName:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mPhoneNumbers:[Ljava/lang/String;

    .line 69
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mEmailAddresses:[Ljava/lang/String;

    .line 70
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mEnvLevel:I

    .line 71
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mBtUcis:[Ljava/lang/String;

    .line 72
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mBtUids:[Ljava/lang/String;

    .line 146
    const-string v0, "2.1"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mVersion:Ljava/lang/String;

    .line 147
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mName:Ljava/lang/String;

    .line 148
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->setPhoneNumbers([Ljava/lang/String;)V

    .line 149
    if-eqz p3, :cond_1

    .line 150
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mEmailAddresses:[Ljava/lang/String;

    .line 152
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mName:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mFormattedName:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mPhoneNumbers:[Ljava/lang/String;

    .line 69
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mEmailAddresses:[Ljava/lang/String;

    .line 70
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mEnvLevel:I

    .line 71
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mBtUcis:[Ljava/lang/String;

    .line 72
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mBtUids:[Ljava/lang/String;

    .line 107
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mEnvLevel:I

    .line 108
    const-string p4, "2.1"

    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mVersion:Ljava/lang/String;

    .line 109
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mName:Ljava/lang/String;

    .line 110
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->setPhoneNumbers([Ljava/lang/String;)V

    .line 111
    if-eqz p3, :cond_1

    .line 112
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mEmailAddresses:[Ljava/lang/String;

    .line 114
    :cond_1
    return-void
.end method

.method public static parseVcard(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;
    .locals 13

    .line 262
    nop

    .line 263
    nop

    .line 264
    nop

    .line 265
    nop

    .line 266
    nop

    .line 267
    nop

    .line 269
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    .line 271
    :goto_0
    const-string v8, "END:VCARD"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 272
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 273
    const-string v8, "N:"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v9, ""

    const/4 v10, 0x2

    const-string v11, "[^\\\\]:"

    const/4 v12, 0x1

    if-eqz v8, :cond_1

    .line 274
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 275
    array-length v3, v0

    if-ne v3, v10, :cond_0

    .line 276
    aget-object v3, v0, v12

    goto/16 :goto_1

    .line 278
    :cond_0
    move-object v3, v9

    goto/16 :goto_1

    .line 280
    :cond_1
    const-string v8, "FN:"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 281
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 282
    array-length v4, v0

    if-ne v4, v10, :cond_2

    .line 283
    aget-object v4, v0, v12

    goto/16 :goto_1

    .line 285
    :cond_2
    move-object v4, v9

    goto/16 :goto_1

    .line 287
    :cond_3
    const-string v8, "TEL:"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "[^\\\\];"

    if-eqz v8, :cond_5

    .line 288
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 289
    array-length v8, v0

    if-ne v8, v10, :cond_b

    .line 290
    aget-object v0, v0, v12

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 291
    if-nez v2, :cond_4

    .line 292
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    :cond_4
    array-length v8, v0

    sub-int/2addr v8, v12

    aget-object v0, v0, v8

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    goto :goto_1

    .line 298
    :cond_5
    const-string v8, "EMAIL:"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 299
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 300
    array-length v8, v0

    if-ne v8, v10, :cond_b

    .line 301
    aget-object v0, v0, v12

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 302
    if-nez v5, :cond_6

    .line 303
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 306
    :cond_6
    array-length v8, v0

    sub-int/2addr v8, v12

    aget-object v0, v0, v8

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    goto :goto_1

    .line 309
    :cond_7
    const-string v8, "X-BT-UCI:"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 310
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 311
    array-length v8, v0

    if-ne v8, v10, :cond_b

    .line 312
    aget-object v0, v0, v12

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 313
    if-nez v6, :cond_8

    .line 314
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 316
    :cond_8
    array-length v8, v0

    sub-int/2addr v8, v12

    aget-object v0, v0, v8

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    goto :goto_1

    .line 319
    :cond_9
    const-string v8, "X-BT-UID:"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 320
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 321
    array-length v8, v0

    if-ne v8, v10, :cond_b

    .line 322
    aget-object v0, v0, v12

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 323
    if-nez v7, :cond_a

    .line 324
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 326
    :cond_a
    array-length v8, v0

    sub-int/2addr v8, v12

    aget-object v0, v0, v8

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_b
    :goto_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 334
    :cond_c
    new-instance p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;

    if-nez v2, :cond_d

    move-object v0, v1

    goto :goto_2

    .line 335
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 336
    :goto_2
    if-nez v5, :cond_e

    move-object v6, v1

    goto :goto_3

    .line 337
    :cond_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v6, v1

    :goto_3
    move-object v2, p0

    move-object v5, v0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 334
    return-object p0
.end method

.method private setPhoneNumbers([Ljava/lang/String;)V
    .locals 7

    .line 155
    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    .line 156
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mPhoneNumbers:[Ljava/lang/String;

    .line 157
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 158
    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    aget-object v4, p1, v2

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 166
    if-eqz v4, :cond_0

    .line 167
    const-string v5, "[0-9]*[a-zA-Z]+[0-9]*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 169
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 170
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mPhoneNumbers:[Ljava/lang/String;

    aput-object v3, v4, v2

    goto :goto_1

    .line 172
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mPhoneNumbers:[Ljava/lang/String;

    aget-object v4, p1, v2

    aput-object v4, v3, v2

    .line 157
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_2
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/StringBuilder;)V
    .locals 7

    .line 231
    const-string v0, "BEGIN:VCARD"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v1, "VERSION:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mVersion:Ljava/lang/String;

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mFormattedName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 234
    const-string v1, "FN:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mFormattedName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 237
    const-string v1, "N:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mPhoneNumbers:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 240
    const-string v6, "TEL:"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 242
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mEmailAddresses:[Ljava/lang/String;

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 243
    const-string v6, "EMAIL:"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 245
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mBtUids:[Ljava/lang/String;

    array-length v2, v1

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 246
    const-string v6, "X-BT-UID:"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 248
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mBtUcis:[Ljava/lang/String;

    array-length v2, v1

    :goto_3
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 249
    const-string v5, "X-BT-UCI:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 251
    :cond_5
    const-string v1, "END:VCARD"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    return-void
.end method

.method public getEmail()[Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mEmailAddresses:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnvLevel()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mEnvLevel:I

    return v0
.end method

.method public getFirstBtUci()Ljava/lang/String;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mBtUcis:[Ljava/lang/String;

    array-length v1, v0

    if-lez v1, :cond_0

    .line 216
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 218
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstBtUid()Ljava/lang/String;
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mBtUids:[Ljava/lang/String;

    array-length v1, v0

    if-lez v1, :cond_0

    .line 224
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 226
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstEmail()Ljava/lang/String;
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mEmailAddresses:[Ljava/lang/String;

    array-length v1, v0

    if-lez v1, :cond_0

    .line 202
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 204
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstPhoneNumber()Ljava/lang/String;
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mPhoneNumbers:[Ljava/lang/String;

    array-length v1, v0

    if-lez v1, :cond_0

    .line 180
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 182
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mFormattedName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()[Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->mPhoneNumbers:[Ljava/lang/String;

    return-object v0
.end method
