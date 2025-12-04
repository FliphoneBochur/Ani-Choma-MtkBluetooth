.class Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
.super Ljava/lang/Object;
.source "RemoteDevices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/RemoteDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceProperties"
.end annotation


# instance fields
.field private mAddress:[B

.field private mAlias:Ljava/lang/String;

.field private mBatteryLevel:I

.field private mBluetoothClass:I

.field mBondState:I

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field mDeviceType:I

.field private mIsBondingInitiatedLocally:Z

.field private mName:Ljava/lang/String;

.field private mRssi:S

.field mUuids:[Landroid/os/ParcelUuid;

.field final synthetic this$0:Lcom/android/bluetooth/btservice/RemoteDevices;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/RemoteDevices;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/16 p1, 0x1f00

    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I

    .line 219
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBatteryLevel:I

    .line 225
    const/16 p1, 0xa

    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBondState:I

    .line 226
    return-void
.end method

.method static synthetic access$102(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[B)[B
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I
    .locals 0

    .line 211
    iget p0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I
    .locals 0

    .line 211
    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)S
    .locals 0

    .line 211
    iget-short p0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRssi:S

    return p0
.end method

.method static synthetic access$802(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;S)S
    .locals 0

    .line 211
    iput-short p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRssi:S

    return p1
.end method


# virtual methods
.method getAddress()[B
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$300(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B

    monitor-exit v0

    return-object v1

    .line 261
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getAlias()Ljava/lang/String;
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$300(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 296
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBatteryLevel()I
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$300(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 370
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBatteryLevel:I

    monitor-exit v0

    return v1

    .line 371
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBluetoothClass()I
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$300(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 242
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I

    monitor-exit v0

    return v1

    .line 243
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBondState()I
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$300(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 338
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBondState:I

    monitor-exit v0

    return v1

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$300(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mDevice:Landroid/bluetooth/BluetoothDevice;

    monitor-exit v0

    return-object v1

    .line 270
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceType()I
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$300(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 286
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mDeviceType:I

    monitor-exit v0

    return v1

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getName()Ljava/lang/String;
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$300(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 234
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getRssi()S
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$300(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 278
    :try_start_0
    iget-short v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRssi:S

    monitor-exit v0

    return v1

    .line 279
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getUuids()[Landroid/os/ParcelUuid;
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$300(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;

    monitor-exit v0

    return-object v1

    .line 252
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isBonding()Z
    .locals 2

    .line 343
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isBondingInitiatedLocally()Z
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$300(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 364
    :try_start_0
    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mIsBondingInitiatedLocally:Z

    monitor-exit v0

    return v1

    .line 365
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isBondingOrBonded()Z
    .locals 2

    .line 347
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->isBonding()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method setAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 5

    .line 303
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$300(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 304
    :try_start_0
    iput-object p2, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;

    .line 305
    invoke-static {}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$400()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B

    const/16 v3, 0xa

    .line 306
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 305
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->setDevicePropertyNative([BI[B)Z

    .line 307
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 309
    const-string p1, "android.bluetooth.device.extra.NAME"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    invoke-static {}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$400()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object p1

    const-string p2, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 311
    monitor-exit v0

    .line 312
    return-void

    .line 311
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setBatteryLevel(I)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$300(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 379
    :try_start_0
    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBatteryLevel:I

    .line 380
    monitor-exit v0

    .line 381
    return-void

    .line 380
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setBondState(I)V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$300(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 319
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBondState:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    const/16 v1, 0xb

    if-eq p1, v1, :cond_1

    :cond_0
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    .line 326
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;

    .line 327
    iput-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;

    .line 329
    :cond_2
    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBondState:I

    .line 330
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setBondingInitiatedLocally(Z)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$300(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 355
    :try_start_0
    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mIsBondingInitiatedLocally:Z

    .line 356
    monitor-exit v0

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
