.class Lcom/android/bluetooth/btservice/RemoteDevices$RemoteDevicesHandler;
.super Landroid/os/Handler;
.source "RemoteDevices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/RemoteDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteDevicesHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/RemoteDevices;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/RemoteDevices;Landroid/os/Looper;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$RemoteDevicesHandler;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 77
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 85
    if-eqz p1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$RemoteDevicesHandler;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$RemoteDevicesHandler;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {v1, p1, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$000(Lcom/android/bluetooth/btservice/RemoteDevices;Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)V

    .line 91
    :cond_1
    :goto_0
    return-void
.end method
