.class Lcom/android/bluetooth/gatt/AdvertiseHelper;
.super Ljava/lang/Object;
.source "AdvertiseHelper.java"


# static fields
.field private static final COMPLETE_LIST_128_BIT_SERVICE_UUIDS:I = 0x7

.field private static final COMPLETE_LIST_16_BIT_SERVICE_UUIDS:I = 0x3

.field private static final COMPLETE_LIST_32_BIT_SERVICE_UUIDS:I = 0x5

.field private static final COMPLETE_LOCAL_NAME:I = 0x9

.field private static final DEVICE_NAME_MAX:I = 0x1a

.field private static final MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field private static final SERVICE_DATA_128_BIT_UUID:I = 0x21

.field private static final SERVICE_DATA_16_BIT_UUID:I = 0x16

.field private static final SERVICE_DATA_32_BIT_UUID:I = 0x20

.field private static final SHORTENED_LOCAL_NAME:I = 0x8

.field private static final TAG:Ljava/lang/String; = "AdvertiseHelper"

.field private static final TX_POWER_LEVEL:I = 0xa


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static advertiseDataToBytes(Landroid/bluetooth/le/AdvertiseData;Ljava/lang/String;)[B
    .locals 11

    .line 45
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 46
    new-array p0, v0, [B

    return-object p0

    .line 52
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 54
    invoke-virtual {p0}, Landroid/bluetooth/le/AdvertiseData;->getIncludeDeviceName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 58
    array-length v2, p1

    .line 62
    const/16 v3, 0x1a

    if-le v2, v3, :cond_1

    .line 63
    nop

    .line 64
    const/16 v2, 0x8

    move v10, v3

    move v3, v2

    move v2, v10

    goto :goto_0

    .line 66
    :cond_1
    const/16 v3, 0x9

    .line 69
    :goto_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 70
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 71
    invoke-virtual {v1, p1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_1

    .line 72
    :catch_0
    move-exception p1

    .line 73
    const-string v2, "AdvertiseHelper"

    const-string v3, "Can\'t include name - encoding error!"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    :cond_2
    :goto_1
    move p1, v0

    :goto_2
    invoke-virtual {p0}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge p1, v2, :cond_5

    .line 78
    invoke-virtual {p0}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 80
    invoke-virtual {p0}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 81
    if-nez v5, :cond_3

    move v6, v0

    goto :goto_3

    :cond_3
    array-length v6, v5

    :goto_3
    add-int/2addr v6, v3

    .line 82
    new-array v7, v6, [B

    .line 84
    and-int/lit16 v8, v2, 0xff

    int-to-byte v8, v8

    aput-byte v8, v7, v0

    .line 85
    shr-int/lit8 v2, v2, 0x8

    const/16 v8, 0xff

    and-int/2addr v2, v8

    int-to-byte v2, v2

    aput-byte v2, v7, v4

    .line 86
    if-eqz v5, :cond_4

    .line 87
    array-length v2, v5

    invoke-static {v5, v0, v7, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    :cond_4
    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 91
    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 92
    invoke-virtual {v1, v7, v0, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 77
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 95
    :cond_5
    invoke-virtual {p0}, Landroid/bluetooth/le/AdvertiseData;->getIncludeTxPowerLevel()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 96
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 97
    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 98
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 101
    :cond_6
    invoke-virtual {p0}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x4

    if-eqz p1, :cond_c

    .line 102
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 103
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 104
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 106
    invoke-virtual {p0}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .line 107
    invoke-static {v8}, Landroid/bluetooth/BluetoothUuid;->uuidToBytes(Landroid/os/ParcelUuid;)[B

    move-result-object v8

    .line 109
    array-length v9, v8

    if-ne v9, v3, :cond_7

    .line 110
    array-length v9, v8

    invoke-virtual {p1, v8, v0, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    .line 111
    :cond_7
    array-length v9, v8

    if-ne v9, v2, :cond_8

    .line 112
    array-length v9, v8

    invoke-virtual {v5, v8, v0, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    .line 114
    :cond_8
    array-length v9, v8

    invoke-virtual {v6, v8, v0, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 116
    :goto_5
    goto :goto_4

    .line 118
    :cond_9
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    if-eqz v7, :cond_a

    .line 119
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 120
    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 121
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-virtual {v1, v7, v0, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 124
    :cond_a
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-eqz p1, :cond_b

    .line 125
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    add-int/2addr p1, v4

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 126
    const/4 p1, 0x5

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 127
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    invoke-virtual {v1, p1, v0, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 130
    :cond_b
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-eqz p1, :cond_c

    .line 131
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    add-int/2addr p1, v4

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 132
    const/4 p1, 0x7

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 133
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {v1, p1, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 137
    :cond_c
    invoke-virtual {p0}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11

    .line 138
    invoke-virtual {p0}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 139
    invoke-virtual {p0}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 141
    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->uuidToBytes(Landroid/os/ParcelUuid;)[B

    move-result-object v4

    .line 142
    array-length v6, v4

    .line 144
    if-nez v5, :cond_d

    move v7, v0

    goto :goto_7

    :cond_d
    array-length v7, v5

    :goto_7
    add-int/2addr v7, v6

    .line 145
    new-array v8, v7, [B

    .line 147
    invoke-static {v4, v0, v8, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    if-eqz v5, :cond_e

    .line 150
    array-length v9, v5

    invoke-static {v5, v0, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    :cond_e
    array-length v5, v4

    if-ne v5, v3, :cond_f

    .line 154
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 155
    const/16 v4, 0x16

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 156
    invoke-virtual {v1, v8, v0, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_8

    .line 157
    :cond_f
    array-length v4, v4

    if-ne v4, v2, :cond_10

    .line 158
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 159
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 160
    invoke-virtual {v1, v8, v0, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_8

    .line 162
    :cond_10
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 163
    const/16 v4, 0x21

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 164
    invoke-virtual {v1, v8, v0, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 166
    :goto_8
    goto :goto_6

    .line 169
    :cond_11
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
