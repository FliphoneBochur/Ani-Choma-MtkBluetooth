.class Lcom/android/bluetooth/hid/HidHostService$1;
.super Landroid/os/Handler;
.source "HidHostService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidHostService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hid/HidHostService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hid/HidHostService;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 155
    invoke-static {}, Lcom/android/bluetooth/hid/HidHostService;->access$000()Z

    move-result v0

    const-string v1, "BluetoothHidHostService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage(): msg.what="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/hid/HidHostService;->access$100()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/bluetooth/hid/HidHostService;->access$100()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hid/HidHostService;->access$200(Lcom/android/bluetooth/hid/HidHostService;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 164
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, "Error: get idle time native returns false"

    const/4 v3, 0x3

    const-string v4, "android.bluetooth.BluetoothHidHost.extra.REPORT_BUFFER_SIZE"

    const-string v5, "android.bluetooth.BluetoothHidHost.extra.REPORT_TYPE"

    const-string v6, "android.bluetooth.BluetoothHidHost.extra.REPORT"

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 316
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 317
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 318
    const-string v3, "android.bluetooth.BluetoothHidHost.extra.IDLE_TIME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result p1

    .line 319
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    invoke-static {v3, v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->access$2700(Lcom/android/bluetooth/hid/HidHostService;[BB)Z

    move-result p1

    if-nez p1, :cond_11

    .line 320
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 310
    :pswitch_1
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/android/bluetooth/hid/HidHostService;->access$2500(Lcom/android/bluetooth/hid/HidHostService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 311
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 312
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {v1, v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->access$2600(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 314
    goto/16 :goto_2

    .line 303
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 304
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->access$2400(Lcom/android/bluetooth/hid/HidHostService;[B)Z

    move-result p1

    if-nez p1, :cond_2

    .line 305
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_2
    goto/16 :goto_2

    .line 272
    :pswitch_3
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/android/bluetooth/hid/HidHostService;->access$1800(Lcom/android/bluetooth/hid/HidHostService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 273
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 274
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {v1, v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->access$1900(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 276
    goto/16 :goto_2

    .line 297
    :pswitch_4
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/android/bluetooth/hid/HidHostService;->access$2200(Lcom/android/bluetooth/hid/HidHostService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 298
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 299
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {v1, v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->access$2300(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 301
    goto/16 :goto_2

    .line 288
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 289
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 290
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 291
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    invoke-static {v2, v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->access$2100(Lcom/android/bluetooth/hid/HidHostService;[BLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 292
    const-string p1, "Error: send data native returns false"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_3
    goto/16 :goto_2

    .line 278
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 279
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 280
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    .line 281
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 282
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    invoke-static {v3, v0, v2, p1}, Lcom/android/bluetooth/hid/HidHostService;->access$2000(Lcom/android/bluetooth/hid/HidHostService;[BBLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 283
    const-string p1, "Error: set report native returns false"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_4
    goto/16 :goto_2

    .line 264
    :pswitch_7
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/android/bluetooth/hid/HidHostService;->access$1600(Lcom/android/bluetooth/hid/HidHostService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 265
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 266
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 267
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 268
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {v2, v0, v1, p1}, Lcom/android/bluetooth/hid/HidHostService;->access$1700(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;[BI)V

    .line 270
    goto/16 :goto_2

    .line 252
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 253
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 254
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    .line 255
    const-string v3, "android.bluetooth.BluetoothHidHost.extra.REPORT_ID"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v3

    .line 256
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 257
    iget-object v4, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    invoke-static {v4, v0, v2, v3, p1}, Lcom/android/bluetooth/hid/HidHostService;->access$1500(Lcom/android/bluetooth/hid/HidHostService;[BBBI)Z

    move-result p1

    if-nez p1, :cond_5

    .line 259
    const-string p1, "Error: get report native returns false"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_5
    goto/16 :goto_2

    .line 243
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 244
    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-byte p1, p1

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending set protocol mode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    invoke-static {v2, v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->access$1400(Lcom/android/bluetooth/hid/HidHostService;[BB)Z

    move-result p1

    if-nez p1, :cond_6

    .line 247
    const-string p1, "Error: set protocol mode native returns false"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_6
    goto/16 :goto_2

    .line 230
    :pswitch_a
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/android/bluetooth/hid/HidHostService;->access$1200(Lcom/android/bluetooth/hid/HidHostService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 231
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 232
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {v1, v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->access$1300(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 234
    goto/16 :goto_2

    .line 236
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 237
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->access$1000(Lcom/android/bluetooth/hid/HidHostService;[B)Z

    move-result p1

    if-nez p1, :cond_7

    .line 238
    const-string p1, "Error: virtual unplug native returns false"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_7
    goto/16 :goto_2

    .line 222
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 223
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->access$1100(Lcom/android/bluetooth/hid/HidHostService;[B)Z

    move-result p1

    if-nez p1, :cond_8

    .line 224
    const-string p1, "Error: get protocol mode native returns false"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_8
    goto/16 :goto_2

    .line 185
    :pswitch_d
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v0, v2}, Lcom/android/bluetooth/hid/HidHostService;->access$700(Lcom/android/bluetooth/hid/HidHostService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 186
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 187
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {v2}, Lcom/android/bluetooth/hid/HidHostService;->access$800(Lcom/android/bluetooth/hid/HidHostService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 189
    if-nez v2, :cond_9

    move v2, v7

    goto :goto_0

    .line 190
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 191
    :goto_0
    invoke-static {}, Lcom/android/bluetooth/hid/HidHostService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_CONNECT_STATE_CHANGED newState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/bluetooth/hid/HidHostService;->access$900(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", prevState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_a
    if-nez p1, :cond_d

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    .line 197
    invoke-virtual {v2, v0}, Lcom/android/bluetooth/hid/HidHostService;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 198
    invoke-static {}, Lcom/android/bluetooth/hid/HidHostService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 199
    const-string v2, "Incoming HID connection rejected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_b
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hid/HidHostService;->justDisconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 203
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/hid/HidHostService;->access$600(Lcom/android/bluetooth/hid/HidHostService;[B)Z

    .line 204
    return-void

    .line 207
    :cond_c
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/hid/HidHostService;->access$1000(Lcom/android/bluetooth/hid/HidHostService;[B)Z

    goto :goto_1

    .line 209
    :cond_d
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {p1}, Lcom/android/bluetooth/hid/HidHostService;->access$900(I)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/bluetooth/hid/HidHostService;->access$400(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 211
    :goto_1
    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {p1}, Lcom/android/bluetooth/hid/HidHostService;->access$500(Lcom/android/bluetooth/hid/HidHostService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    .line 212
    invoke-static {p1}, Lcom/android/bluetooth/hid/HidHostService;->access$500(Lcom/android/bluetooth/hid/HidHostService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 213
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/bluetooth/hid/HidHostService;->access$502(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 216
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object p1

    .line 217
    invoke-virtual {p1, v7}, Lcom/android/bluetooth/btservice/AdapterService;->enable(Z)Z

    .line 220
    :cond_e
    goto :goto_2

    .line 176
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 177
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hid/HidHostService;->access$600(Lcom/android/bluetooth/hid/HidHostService;[B)Z

    move-result v0

    if-nez v0, :cond_f

    .line 178
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {v0, p1, v3}, Lcom/android/bluetooth/hid/HidHostService;->access$400(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 179
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {v0, p1, v7}, Lcom/android/bluetooth/hid/HidHostService;->access$400(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 180
    goto :goto_2

    .line 183
    :cond_f
    goto :goto_2

    .line 166
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 167
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hid/HidHostService;->access$300(Lcom/android/bluetooth/hid/HidHostService;[B)Z

    move-result v0

    if-nez v0, :cond_10

    .line 168
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {v0, p1, v3}, Lcom/android/bluetooth/hid/HidHostService;->access$400(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 169
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {v0, p1, v7}, Lcom/android/bluetooth/hid/HidHostService;->access$400(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 170
    goto :goto_2

    .line 172
    :cond_10
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService$1;->this$0:Lcom/android/bluetooth/hid/HidHostService;

    invoke-static {v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->access$502(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 174
    nop

    .line 325
    :cond_11
    :goto_2
    return-void

    .line 159
    :cond_12
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage: service is null or unavailable sHidHostService:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {}, Lcom/android/bluetooth/hid/HidHostService;->access$100()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
