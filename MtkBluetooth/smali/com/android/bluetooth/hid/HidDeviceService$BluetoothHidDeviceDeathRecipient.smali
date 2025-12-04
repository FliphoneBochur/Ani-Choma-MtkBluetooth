.class Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;
.super Ljava/lang/Object;
.source "HidDeviceService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHidDeviceDeathRecipient"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/hid/HidDeviceService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hid/HidDeviceService;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;->mService:Lcom/android/bluetooth/hid/HidDeviceService;

    .line 252
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 256
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Binder died, need to unregister app :("

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;->mService:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidDeviceService;->unregisterApp()Z

    .line 258
    return-void
.end method

.method public cleanup()V
    .locals 1

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;->mService:Lcom/android/bluetooth/hid/HidDeviceService;

    .line 262
    return-void
.end method
