.class Lcom/android/bluetooth/pan/PanService$1;
.super Landroid/os/Handler;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pan/PanService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pan/PanService;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 205
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/pan/PanService$ConnectState;

    .line 206
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    iget-object v1, p1, Lcom/android/bluetooth/pan/PanService$ConnectState;->addr:[B

    invoke-static {v0, v1}, Lcom/android/bluetooth/pan/PanService;->access$500(Lcom/android/bluetooth/pan/PanService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 208
    invoke-static {}, Lcom/android/bluetooth/pan/PanService;->access$600()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MESSAGE_CONNECT_STATE_CHANGED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/bluetooth/pan/PanService$ConnectState;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v2}, Lcom/android/bluetooth/pan/PanService;->access$400(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;

    move-result-object v4

    iget v0, p1, Lcom/android/bluetooth/pan/PanService$ConnectState;->state:I

    .line 213
    invoke-static {v0}, Lcom/android/bluetooth/pan/PanService;->access$700(I)I

    move-result v5

    iget v6, p1, Lcom/android/bluetooth/pan/PanService$ConnectState;->local_role:I

    iget v7, p1, Lcom/android/bluetooth/pan/PanService$ConnectState;->remote_role:I

    .line 212
    invoke-virtual/range {v2 .. v7}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    goto :goto_0

    .line 192
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 193
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/pan/PanService;->access$300(Lcom/android/bluetooth/pan/PanService;[B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v0}, Lcom/android/bluetooth/pan/PanService;->access$400(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    .line 197
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {v0}, Lcom/android/bluetooth/pan/PanService;->access$400(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    .line 200
    goto :goto_0

    .line 203
    :cond_3
    goto :goto_0

    .line 179
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 180
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-static {v0, v3, v1, v2}, Lcom/android/bluetooth/pan/PanService;->access$200(Lcom/android/bluetooth/pan/PanService;[BII)Z

    move-result v0

    if-nez v0, :cond_5

    .line 182
    iget-object v3, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    .line 184
    iget-object v3, p0, Lcom/android/bluetooth/pan/PanService$1;->this$0:Lcom/android/bluetooth/pan/PanService;

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    .line 187
    goto :goto_0

    .line 190
    :cond_5
    nop

    .line 217
    :goto_0
    return-void
.end method
