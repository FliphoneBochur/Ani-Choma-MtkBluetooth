.class Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;
.super Lcom/android/bluetooth/hfp/HeadsetMessageObject;
.source "HeadsetVendorSpecificResultCode.java"


# instance fields
.field mArg:Ljava/lang/String;

.field mCommand:Ljava/lang/String;

.field mDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetMessageObject;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 27
    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mCommand:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mArg:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public buildString(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 33
    if-nez p1, :cond_0

    .line 34
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v0, "[device="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    const-string v0, ", command="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mCommand:Ljava/lang/String;

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v0, ", arg="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mArg:Ljava/lang/String;

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    return-void
.end method
