.class Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
.super Landroid/os/Handler;
.source "BluetoothOppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/os/Looper;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 208
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 209
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 213
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_15

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_13

    const/4 v3, 0x3

    if-eq v0, v1, :cond_10

    if-eq v0, v3, :cond_b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa

    const/4 v4, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v1, v3, p1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;Z)V

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$502(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 217
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->start()V

    .line 218
    goto/16 :goto_5

    .line 239
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    const-string v0, "BtOppTransfer"

    const-string v1, "Transfer receive TRANSPORT_CONNECTED msg"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$600(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v1, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$502(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 244
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljavax/obex/ObexTransport;

    invoke-static {v0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$802(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;

    .line 246
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$900(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    .line 248
    goto/16 :goto_5

    .line 244
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 224
    :cond_3
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 225
    const-string p1, "BtOppTransfer"

    const-string v0, "receive TRANSPORT_ERROR msg"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$600(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 228
    :try_start_2
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$502(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 229
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 230
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    const/16 v0, 0x1f1

    invoke-static {p1, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    .line 231
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object p1

    iput v3, p1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 233
    goto/16 :goto_5

    .line 229
    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 383
    :cond_5
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "BtOppTransfer"

    const-string v1, "receive MSG_FAST_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v0

    iput v3, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 385
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->interrupt(I)V

    .line 386
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_5

    .line 346
    :cond_7
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 347
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "receive MSG_CONNECT_TIMEOUT for batch "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtOppTransfer"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_8
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object p1

    iget p1, p1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez p1, :cond_a

    .line 354
    :try_start_4
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$800(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object p1

    if-nez p1, :cond_9

    .line 355
    const-string p1, "BtOppTransfer"

    const-string v0, "receive MSG_SHARE_INTERRUPTED but mTransport = null"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    :cond_9
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$800(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object p1

    invoke-interface {p1}, Ljavax/obex/ObexTransport;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 361
    :goto_0
    goto :goto_1

    .line 359
    :catch_0
    move-exception p1

    .line 360
    const-string p1, "BtOppTransfer"

    const-string v0, "failed to close mTransport"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :goto_1
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 363
    const-string p1, "BtOppTransfer"

    const-string v0, "mTransport closed "

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 372
    :cond_a
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 374
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 376
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 379
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 381
    goto/16 :goto_5

    .line 318
    :cond_b
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive MSG_SHARE_INTERRUPTED for batch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v1

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtOppTransfer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 322
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v0, :cond_1a

    .line 324
    :try_start_5
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$800(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v0

    if-nez v0, :cond_d

    .line 325
    const-string v0, "BtOppTransfer"

    const-string v1, "receive MSG_SHARE_INTERRUPTED but mTransport = null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 327
    :cond_d
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$800(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v0

    invoke-interface {v0}, Ljavax/obex/ObexTransport;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 331
    :goto_2
    goto :goto_3

    .line 329
    :catch_1
    move-exception v0

    .line 330
    const-string v0, "BtOppTransfer"

    const-string v1, "failed to close mTransport"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_3
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 333
    const-string v0, "BtOppTransfer"

    const-string v1, "mTransport closed "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_e
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v0

    iput v3, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 336
    if-eqz p1, :cond_f

    .line 337
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget p1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    goto :goto_4

    .line 339
    :cond_f
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    const/16 v0, 0x1eb

    invoke-static {p1, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    .line 341
    :goto_4
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_5

    .line 299
    :cond_10
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive MSG_SESSION_ERROR for batch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v1

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtOppTransfer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_11
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    .line 304
    :try_start_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 305
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 306
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->stop()V

    .line 308
    :cond_12
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v0

    iput v3, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 309
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget p1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    .line 310
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 314
    goto/16 :goto_5

    .line 311
    :catch_2
    move-exception p1

    .line 312
    const-string v0, "BtOppTransfer"

    const-string v1, "Exception while handling MSG_SESSION_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 315
    goto/16 :goto_5

    .line 285
    :cond_13
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    .line 286
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 287
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive MSG_SESSION_COMPLETE for batch "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v2

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BtOppTransfer"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_14
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v0

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 294
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 295
    goto/16 :goto_5

    .line 257
    :cond_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 258
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive MSG_SHARE_COMPLETE for info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtOppTransfer"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_16
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object p1

    iget p1, p1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez p1, :cond_1a

    .line 262
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$102(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 264
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 266
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 267
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "continue session for info "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from batch "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 268
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 267
    const-string v0, "BtOppTransfer"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_17
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    goto :goto_5

    .line 273
    :cond_18
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Batch "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is done"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtOppTransfer"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_19
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->stop()V

    .line 389
    :cond_1a
    :goto_5
    return-void
.end method
