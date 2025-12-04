.class Lcom/android/bluetooth/gatt/ScanFilterQueue;
.super Ljava/lang/Object;
.source "ScanFilterQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    }
.end annotation


# static fields
.field private static final DEVICE_TYPE_ALL:B = 0x2t

.field private static final MAX_LEN_PER_FIELD:I = 0x1a

.field public static final TYPE_DEVICE_ADDRESS:I = 0x0

.field public static final TYPE_LOCAL_NAME:I = 0x4

.field public static final TYPE_MANUFACTURER_DATA:I = 0x5

.field public static final TYPE_SERVICE_DATA:I = 0x6

.field public static final TYPE_SERVICE_DATA_CHANGED:I = 0x1

.field public static final TYPE_SERVICE_UUID:I = 0x2

.field public static final TYPE_SOLICIT_UUID:I = 0x3


# instance fields
.field private mEntries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    return-void
.end method

.method private concate(Landroid/os/ParcelUuid;[B)[B
    .locals 3

    .line 224
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->uuidToBytes(Landroid/os/ParcelUuid;)[B

    move-result-object p1

    .line 226
    array-length v0, p1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, p2

    :goto_0
    add-int/2addr v0, v2

    .line 228
    const/16 v2, 0x1a

    if-le v0, v2, :cond_1

    .line 229
    const/4 p1, 0x0

    return-object p1

    .line 231
    :cond_1
    new-array v0, v0, [B

    .line 232
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    if-eqz p2, :cond_2

    .line 234
    array-length p1, p1

    array-length v2, p2

    invoke-static {p2, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    :cond_2
    return-object v0
.end method


# virtual methods
.method addDeviceAddress(Ljava/lang/String;B)V
    .locals 2

    .line 65
    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    .line 66
    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    .line 67
    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->address:Ljava/lang/String;

    .line 68
    iput-byte p2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->addr_type:B

    .line 69
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method addManufacturerData(II[B[B)V
    .locals 2

    .line 129
    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    .line 130
    const/4 v1, 0x5

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    .line 131
    iput p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company:I

    .line 132
    iput p2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company_mask:I

    .line 133
    iput-object p3, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    .line 134
    iput-object p4, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    .line 135
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method addManufacturerData(I[B)V
    .locals 2

    .line 118
    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    .line 119
    const/4 v1, 0x5

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    .line 120
    iput p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company:I

    .line 121
    const p1, 0xffff

    iput p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->company_mask:I

    .line 122
    iput-object p2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    .line 123
    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    .line 124
    iget-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    const/4 p2, -0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([BB)V

    .line 125
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method addName(Ljava/lang/String;)V
    .locals 2

    .line 111
    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    .line 112
    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    .line 113
    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->name:Ljava/lang/String;

    .line 114
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method addScanFilter(Landroid/bluetooth/le/ScanFilter;)V
    .locals 4

    .line 175
    if-nez p1, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addName(Ljava/lang/String;)V

    .line 181
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addDeviceAddress(Ljava/lang/String;B)V

    .line 184
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 185
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceUuidMask()Landroid/os/ParcelUuid;

    move-result-object v0

    if-nez v0, :cond_3

    .line 186
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addUuid(Ljava/util/UUID;)V

    goto :goto_0

    .line 188
    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceUuidMask()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addUuid(Ljava/util/UUID;Ljava/util/UUID;)V

    .line 191
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceSolicitationUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 192
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceSolicitationUuidMask()Landroid/os/ParcelUuid;

    move-result-object v0

    if-nez v0, :cond_5

    .line 193
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceSolicitationUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addSolicitUuid(Ljava/util/UUID;)V

    goto :goto_1

    .line 195
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceSolicitationUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 196
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceSolicitationUuidMask()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 195
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addSolicitUuid(Ljava/util/UUID;Ljava/util/UUID;)V

    .line 199
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerData()[B

    move-result-object v0

    if-eqz v0, :cond_8

    .line 200
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerDataMask()[B

    move-result-object v0

    if-nez v0, :cond_7

    .line 201
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerId()I

    move-result v0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerData()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addManufacturerData(I[B)V

    goto :goto_2

    .line 203
    :cond_7
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerId()I

    move-result v0

    const v1, 0xffff

    .line 204
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerData()[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getManufacturerDataMask()[B

    move-result-object v3

    .line 203
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addManufacturerData(II[B[B)V

    .line 207
    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceData()[B

    move-result-object v0

    if-eqz v0, :cond_a

    .line 208
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    .line 209
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceData()[B

    move-result-object v1

    .line 210
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter;->getServiceDataMask()[B

    move-result-object p1

    .line 211
    if-nez p1, :cond_9

    .line 212
    array-length p1, v1

    new-array p1, p1, [B

    .line 213
    const/4 v2, -0x1

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 215
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->concate(Landroid/os/ParcelUuid;[B)[B

    move-result-object v1

    .line 216
    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->concate(Landroid/os/ParcelUuid;[B)[B

    move-result-object p1

    .line 217
    if-eqz v1, :cond_a

    if-eqz p1, :cond_a

    .line 218
    invoke-virtual {p0, v1, p1}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addServiceData([B[B)V

    .line 221
    :cond_a
    return-void
.end method

.method addServiceChanged()V
    .locals 2

    .line 73
    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    .line 74
    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    .line 75
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method addServiceData([B[B)V
    .locals 2

    .line 139
    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    .line 140
    const/4 v1, 0x6

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    .line 141
    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data:[B

    .line 142
    iput-object p2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->data_mask:[B

    .line 143
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method addSolicitUuid(Ljava/util/UUID;)V
    .locals 3

    .line 95
    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    .line 96
    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    .line 97
    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid:Ljava/util/UUID;

    .line 98
    new-instance p1, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid_mask:Ljava/util/UUID;

    .line 99
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method addSolicitUuid(Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 2

    .line 103
    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    .line 104
    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    .line 105
    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid:Ljava/util/UUID;

    .line 106
    iput-object p2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid_mask:Ljava/util/UUID;

    .line 107
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method addUuid(Ljava/util/UUID;)V
    .locals 3

    .line 79
    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    .line 80
    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    .line 81
    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid:Ljava/util/UUID;

    .line 82
    new-instance p1, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid_mask:Ljava/util/UUID;

    .line 83
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method addUuid(Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 2

    .line 87
    new-instance v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/ScanFilterQueue;)V

    .line 88
    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    .line 89
    iput-object p1, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid:Ljava/util/UUID;

    .line 90
    iput-object p2, v0, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->uuid_mask:Ljava/util/UUID;

    .line 91
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method getFeatureSelection()I
    .locals 4

    .line 160
    nop

    .line 161
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    .line 162
    const/4 v3, 0x1

    iget-byte v2, v2, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;->type:B

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    .line 163
    goto :goto_0

    .line 164
    :cond_0
    return v1
.end method

.method pop()Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 153
    return-object v1
.end method

.method toArray()[Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanFilterQueue;->mEntries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    return-object v0
.end method
