.class Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;
.super Landroid/bluetooth/IBluetoothSocketManager$Stub;
.source "BluetoothSocketManagerBinder.java"


# static fields
.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final INVALID_FD:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothSocketManagerBinder"


# instance fields
.field private mService:Lcom/android/bluetooth/btservice/AdapterService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothSocketManager$Stub;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 37
    return-void
.end method

.method private enforceBluetoothAndActiveUser()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const-string v0, "BluetoothSocketManagerBinder"

    const-string v1, "enforceBluetoothAndActiveUser,not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private static marshalFd(I)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 93
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 94
    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_0
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method cleanUp()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 41
    return-void
.end method

.method public connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .locals 7

    .line 47
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;->enforceBluetoothAndActiveUser()V

    .line 49
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 50
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v1

    .line 52
    invoke-static {p3}, Lcom/android/bluetooth/Utils;->uuidToByteArray(Landroid/os/ParcelUuid;)[B

    move-result-object v3

    .line 55
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 49
    move v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/btservice/AdapterService;->connectSocketNative([BI[BIII)I

    move-result p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;->marshalFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .locals 7

    .line 62
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;->enforceBluetoothAndActiveUser()V

    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 67
    invoke-static {p3}, Lcom/android/bluetooth/Utils;->uuidToByteArray(Landroid/os/ParcelUuid;)[B

    move-result-object v3

    .line 70
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 64
    move v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/btservice/AdapterService;->createSocketChannelNative(ILjava/lang/String;[BIII)I

    move-result p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;->marshalFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public requestMaximumTxDataLength(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;->enforceBluetoothAndActiveUser()V

    .line 78
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->requestMaximumTxDataLengthNative([B)V

    .line 79
    return-void
.end method
