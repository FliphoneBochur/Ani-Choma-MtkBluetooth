.class public Lcom/android/bluetooth/util/BtInfoActivity;
.super Landroid/app/Activity;
.source "BtInfoActivity.java"


# static fields
.field private static final BLUETOOTH_PRIVILEGED:Ljava/lang/String; = "android.permission.BLUETOOTH_PRIVILEGED"

.field private static final LINE_FEED:Ljava/lang/String; = "<br>"

.field private static final MTK_BLE_BATCH_SCAN_PROPERTY:Ljava/lang/String; = "vendor.bluetooth.batchscan"

.field private static final MTK_BLE_SCAN_COUNT_PROPERTY:Ljava/lang/String; = "vendor.bluetooth.scancount"

.field private static final MTK_BLE_SET_LESCAN_PROPERTY:Ljava/lang/String; = "vendor.bluetooth.setlescan"

.field private static final REQUEST_CODE_RESET_BT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BtInfoActivity"

.field private static mProfileList:[Ljava/lang/String;


# instance fields
.field private bRefresh:Z

.field private bleBtnArea:Landroid/widget/LinearLayout;

.field private disableOnClick:Landroid/view/View$OnClickListener;

.field private enableOnClick:Landroid/view/View$OnClickListener;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private final mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private refreshBox:Landroid/widget/CheckBox;

.field private refreshOnCheckedChange:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private refreshThread:Ljava/lang/Thread;

.field private runnable:Ljava/lang/Runnable;

.field private textBtInfo:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 53
    const-string v0, ""

    const-string v1, "HEADSET"

    const-string v2, "A2DP"

    const-string v3, "HEALTH"

    const-string v4, "HID_HOST"

    const-string v5, "PAN"

    const-string v6, "PBAP"

    const-string v7, "GATT"

    const-string v8, "GATT_SERVER"

    const-string v9, "MAP"

    const-string v10, "SAP"

    const-string v11, "A2DP_SINK"

    const-string v12, "AVRCP_CONTROLLER"

    const-string v13, "AVRCP"

    const-string v14, "NA"

    const-string v15, "NA"

    const-string v16, "HEADSET_CLIENT"

    const-string v17, "PBAP_CLIENT"

    const-string v18, "MAP_CLIENT"

    const-string v19, "HID_DEVICE"

    const-string v20, "OPP"

    const-string v21, "HEARING_AID"

    const-string v22, "MAX_PROFILE"

    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/util/BtInfoActivity;->mProfileList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 72
    iput-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 75
    iput-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->textBtInfo:Landroid/widget/TextView;

    .line 76
    iput-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->refreshBox:Landroid/widget/CheckBox;

    .line 77
    iput-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->bleBtnArea:Landroid/widget/LinearLayout;

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->bRefresh:Z

    .line 79
    iput-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->refreshThread:Ljava/lang/Thread;

    .line 84
    new-instance v0, Lcom/android/bluetooth/util/BtInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/util/BtInfoActivity$1;-><init>(Lcom/android/bluetooth/util/BtInfoActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 114
    new-instance v0, Lcom/android/bluetooth/util/BtInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/util/BtInfoActivity$2;-><init>(Lcom/android/bluetooth/util/BtInfoActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v0, Lcom/android/bluetooth/util/BtInfoActivity$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/util/BtInfoActivity$3;-><init>(Lcom/android/bluetooth/util/BtInfoActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mRunnable:Ljava/lang/Runnable;

    .line 172
    new-instance v0, Lcom/android/bluetooth/util/BtInfoActivity$6;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/util/BtInfoActivity$6;-><init>(Lcom/android/bluetooth/util/BtInfoActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->disableOnClick:Landroid/view/View$OnClickListener;

    .line 182
    new-instance v0, Lcom/android/bluetooth/util/BtInfoActivity$7;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/util/BtInfoActivity$7;-><init>(Lcom/android/bluetooth/util/BtInfoActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->enableOnClick:Landroid/view/View$OnClickListener;

    .line 193
    new-instance v0, Lcom/android/bluetooth/util/BtInfoActivity$8;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/util/BtInfoActivity$8;-><init>(Lcom/android/bluetooth/util/BtInfoActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->refreshOnCheckedChange:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 210
    new-instance v0, Lcom/android/bluetooth/util/BtInfoActivity$9;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/util/BtInfoActivity$9;-><init>(Lcom/android/bluetooth/util/BtInfoActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/util/BtInfoActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/util/BtInfoActivity;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/util/BtInfoActivity;)Landroid/widget/TextView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->textBtInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/util/BtInfoActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/bluetooth/util/BtInfoActivity;->stopBleScan()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/util/BtInfoActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/bluetooth/util/BtInfoActivity;->startBleScan()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/util/BtInfoActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/bluetooth/util/BtInfoActivity;->showBTDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/util/BtInfoActivity;)Ljava/lang/Thread;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->refreshThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/util/BtInfoActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->refreshThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/util/BtInfoActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/util/BtInfoActivity;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->bRefresh:Z

    return p0
.end method

.method static synthetic access$702(Lcom/android/bluetooth/util/BtInfoActivity;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->bRefresh:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/bluetooth/util/BtInfoActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->refreshBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/util/BtInfoActivity;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/bluetooth/util/BtInfoActivity;->getBtProfileInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getBtProfileInfo()Ljava/lang/String;
    .locals 7

    .line 311
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 313
    iget-object v1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 314
    const-string v1, "Bluetooth not supported.<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 318
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth Enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    if-eqz v1, :cond_3

    .line 323
    iget-object v1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    iget-object v1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Address: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    iget-object v1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isBleScanAlwaysAvailable()Z

    move-result v1

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BleScanAlwaysAvailable: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ble Scan State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "vendor.bluetooth.setlescan"

    const-string v4, "N/A"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ble Scan Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "vendor.bluetooth.scancount"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ble Batch Scan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "vendor.bluetooth.batchscan"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    iget-object v1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bonded Devices: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 338
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 339
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    .line 340
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 341
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font color=\'#0000FF\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")</font>"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    goto :goto_0

    .line 345
    :cond_1
    const/4 v1, 0x1

    :goto_1
    const/16 v2, 0x15

    if-gt v1, v2, :cond_3

    .line 346
    iget-object v2, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v2

    .line 347
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 348
    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    goto :goto_2

    .line 350
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<font color=\'#FF0000\'>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</font>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 351
    nop

    .line 358
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/bluetooth/util/BtInfoActivity;->mProfileList:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 362
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isSupportQ()Z
    .locals 2

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportQ(): Build.VERSION.SDK_INT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Build.VERSION.RELEASE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtInfoActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showBTDialog()V
    .locals 3

    .line 149
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    const-string v1, "Reset Bluetooth"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 151
    const-string v1, "Need to off/on Bluetooth, or reboot handset to reset"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/bluetooth/util/BtInfoActivity$5;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/util/BtInfoActivity$5;-><init>(Lcom/android/bluetooth/util/BtInfoActivity;)V

    .line 152
    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/bluetooth/util/BtInfoActivity$4;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/util/BtInfoActivity$4;-><init>(Lcom/android/bluetooth/util/BtInfoActivity;)V

    .line 159
    const-string v2, "Go to settings"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 168
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 170
    return-void
.end method

.method private startBleScan()V
    .locals 5

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startBleScan: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtInfoActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 135
    if-nez v0, :cond_0

    .line 136
    const-string v0, "LeScanner is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v2, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 144
    iget-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    const-string v0, "start ble scan"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method private stopBleScan()V
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopBleScan: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtInfoActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 104
    if-nez v0, :cond_0

    .line 105
    const-string v0, "LeScanner is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v2, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 111
    const-string v0, "stop ble scan"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 277
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 278
    nop

    .line 280
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 236
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 237
    const-string p1, "BtInfoActivity"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const p1, 0x7f090002

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/util/BtInfoActivity;->setContentView(I)V

    .line 241
    const p1, 0x7f07008c

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/util/BtInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->textBtInfo:Landroid/widget/TextView;

    .line 242
    const p1, 0x7f07002f

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/util/BtInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->bleBtnArea:Landroid/widget/LinearLayout;

    .line 243
    const p1, 0x7f07002c

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/util/BtInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->refreshBox:Landroid/widget/CheckBox;

    .line 244
    const p1, 0x7f07002d

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/util/BtInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 245
    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/util/BtInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 246
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->bRefresh:Z

    .line 249
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/util/BtInfoActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 251
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    .line 252
    if-eqz v2, :cond_1

    .line 254
    invoke-static {}, Lcom/android/bluetooth/util/BtInfoActivity;->isSupportQ()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/android/bluetooth/util/BtInfoActivity;->bleBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/util/BtInfoActivity;->refreshBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->bleBtnArea:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    iget-object v1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->refreshBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->refreshBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/bluetooth/util/BtInfoActivity;->refreshOnCheckedChange:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 266
    iget-object v1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->disableOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->enableOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->textBtInfo:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/bluetooth/util/BtInfoActivity;->getBtProfileInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity;->textBtInfo:Landroid/widget/TextView;

    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 273
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 283
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/util/BtInfoActivity;->bRefresh:Z

    .line 285
    const-string v0, "BtInfoActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method
