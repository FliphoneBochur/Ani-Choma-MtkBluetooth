.class Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;
.super Ljava/lang/Object;
.source "HfpClientConnectionService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    .line 274
    const-string p1, "HfpClientConnService"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v0, p2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->access$102(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    .line 278
    iget-object p2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {p2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->access$100(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/bluetooth/BluetoothHeadsetClient;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectedDevices()Ljava/util/List;

    move-result-object p2

    .line 279
    if-nez p2, :cond_0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No connected or more than one connected devices found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void

    .line 283
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating phone account for device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->createBlockForDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;

    .line 291
    goto :goto_0

    .line 292
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HfpClientConnService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->access$102(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    .line 300
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->access$200(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)V

    .line 301
    return-void
.end method
