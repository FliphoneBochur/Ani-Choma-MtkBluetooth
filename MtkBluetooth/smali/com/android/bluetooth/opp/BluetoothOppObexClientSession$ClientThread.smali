.class Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;
.super Ljava/lang/Thread;
.source "BluetoothOppObexClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientThread"
.end annotation


# static fields
.field private static final SLEEP_TIME:I = 0x1f4


# instance fields
.field private mConnected:Z

.field private mContext1:Landroid/content/Context;

.field private mCs:Ljavax/obex/ClientSession;

.field private mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mNumShares:I

.field private mTransport1:Ljavax/obex/ObexTransport;

.field private volatile mWaitingForShare:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Ljavax/obex/ObexTransport;I)V
    .locals 1

    .line 199
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    .line 200
    const-string v0, "BtOpp ClientThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 201
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    .line 202
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    .line 203
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mWaitingForShare:Z

    .line 204
    invoke-static {p1, v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 205
    iput p4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mNumShares:I

    .line 206
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    const-string p3, "power"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 207
    const-string p3, "BtOppObexClient"

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 208
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->disconnect()V

    return-void
.end method

.method private connect(I)V
    .locals 6

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create ClientSession with transport "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtOppObexClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljavax/obex/ClientSession;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-direct {v1, v2}, Ljavax/obex/ClientSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    .line 316
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    goto :goto_0

    .line 317
    :catch_0
    move-exception v1

    .line 318
    const-string v1, "BtOppObexClient"

    const-string v2, "OBEX session create error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_0
    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 321
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 322
    new-instance v1, Ljavax/obex/HeaderSet;

    invoke-direct {v1}, Ljavax/obex/HeaderSet;-><init>()V

    .line 323
    const/16 v3, 0xc0

    int-to-long v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 324
    monitor-enter p0

    .line 325
    :try_start_1
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {p1, v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 326
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    :try_start_2
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {p1, v1}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 330
    const-string p1, "BtOppObexClient"

    const-string v1, "OBEX session created"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 335
    goto :goto_1

    .line 333
    :catch_1
    move-exception p1

    .line 334
    const-string p1, "BtOppObexClient"

    const-string v0, "OBEX session connect error"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 326
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 337
    :cond_0
    :goto_1
    monitor-enter p0

    .line 338
    :try_start_4
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {p1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 339
    monitor-exit p0

    .line 340
    return-void

    .line 339
    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method private disconnect()V
    .locals 4

    .line 277
    const-string v0, "BtOppObexClient"

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v1, v2}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 280
    :cond_0
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    .line 282
    const-string v1, "OBEX session disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    goto :goto_0

    .line 284
    :catch_0
    move-exception v1

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session disconnect error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_1

    .line 290
    const-string v1, "OBEX session close mCs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v1}, Ljavax/obex/ClientSession;->close()V

    .line 294
    const-string v1, "OBEX session closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    :cond_1
    goto :goto_1

    .line 297
    :catch_1
    move-exception v1

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    if-eqz v1, :cond_2

    .line 302
    :try_start_2
    invoke-interface {v1}, Ljavax/obex/ObexTransport;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 305
    goto :goto_2

    .line 303
    :catch_2
    move-exception v1

    .line 304
    const-string v1, "mTransport.close error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_2
    :goto_2
    return-void
.end method

.method private doSend()V
    .locals 4

    .line 344
    const/16 v0, 0xc8

    move v1, v0

    .line 347
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    if-nez v2, :cond_0

    .line 349
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_1
    goto :goto_0

    .line 350
    :catch_0
    move-exception v1

    .line 351
    const/16 v1, 0x1ea

    goto :goto_1

    .line 354
    :cond_0
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    if-nez v2, :cond_1

    .line 356
    const/16 v1, 0x1f1

    .line 358
    :cond_1
    if-ne v1, v0, :cond_3

    .line 360
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 361
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I

    move-result v1

    goto :goto_2

    .line 364
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    .line 366
    :goto_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mWaitingForShare:Z

    goto :goto_3

    .line 368
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v2, v3, v1}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 371
    :goto_3
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$500(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 372
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$500(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 373
    if-ne v1, v0, :cond_4

    .line 374
    const/4 v0, 0x0

    goto :goto_4

    .line 375
    :cond_4
    const/4 v0, 0x2

    :goto_4
    iput v0, v2, Landroid/os/Message;->what:I

    .line 376
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 377
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 378
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 380
    :cond_5
    return-void
.end method

.method private handleSendException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error when sending file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtOppObexClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$500(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$500(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 715
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 716
    const-string v2, "IOException"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 717
    const/16 p1, 0x1ea

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 719
    :cond_0
    const/16 p1, 0x1f1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 721
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 726
    :cond_1
    instance-of p1, p2, Ljava/io/IOException;

    if-nez p1, :cond_2

    .line 727
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget p2, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v0, 0x1f0

    invoke-static {p1, p2, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 731
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$500(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 732
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$500(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    :cond_3
    goto :goto_1

    .line 734
    :catch_0
    move-exception p1

    .line 735
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error when handling send exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :goto_1
    return-void
.end method

.method private processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .locals 6

    .line 386
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v0

    const-string v1, "BtOppObexClient"

    if-eqz v0, :cond_0

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client thread processShareInfo() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getSendFileInfo(Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v0

    .line 391
    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-wide v2, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 398
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    const-string v2, "Generate BluetoothOppSendFileInfo:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filepath  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filename  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length    :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimetype  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 409
    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFilePath:Ljava/lang/String;

    const-string v4, "_data"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    const-string v4, "hint"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "total_bytes"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 412
    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    const-string v4, "mimetype"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 392
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 393
    const-string v2, "BluetoothOppSendFileInfo get invalid file"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    invoke-static {v1, v2, v3}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 417
    :goto_1
    return-object v0
.end method

.method private sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I
    .locals 32

    .line 421
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendFile ++, fileName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BtOppObexClient"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    nop

    .line 425
    nop

    .line 426
    nop

    .line 427
    nop

    .line 428
    nop

    .line 429
    iget-object v4, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFilePath:Ljava/lang/String;

    const v5, 0x7f0e005f

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    .line 430
    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$600(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/content/Context;

    move-result-object v4

    new-array v8, v6, [Ljava/lang/Object;

    iget-object v9, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFilePath:Ljava/lang/String;

    aput-object v9, v8, v7

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 432
    :cond_1
    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$600(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/content/Context;

    move-result-object v4

    new-array v8, v6, [Ljava/lang/Object;

    iget-object v9, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    aput-object v9, v8, v7

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 434
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 436
    new-instance v5, Ljavax/obex/HeaderSet;

    invoke-direct {v5}, Ljavax/obex/HeaderSet;-><init>()V

    .line 437
    nop

    .line 438
    nop

    .line 439
    nop

    .line 441
    const/16 v8, 0x1f0

    const-wide/16 v9, 0x0

    const/16 v11, 0xc3

    const/4 v14, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_46
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_43
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_40
    .catchall {:try_start_0 .. :try_end_0} :catchall_1b

    .line 442
    :try_start_1
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v3, v6}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 443
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_18

    .line 445
    const/16 v3, 0xc0

    :try_start_2
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 446
    const-string v15, "BtOppObexClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Set header items for "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v15, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_2
    iget-object v12, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v6, v12}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 449
    const/16 v12, 0x42

    iget-object v13, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 451
    iget-object v12, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v12, v12, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    iget-object v13, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-static {v5, v12, v13}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->applyRemoteDeviceQuirks(Ljavax/obex/HeaderSet;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v12, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v13, v13, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v12, v13, v3}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 455
    iget-wide v12, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 457
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 458
    const-string v12, "BtOppObexClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "put headerset for "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_3
    iget-object v12, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v12, v5}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v5

    check-cast v5, Ljavax/obex/ClientOperation;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 473
    move v12, v7

    const/16 v16, 0xc8

    goto/16 :goto_1

    .line 653
    :catchall_0
    move-exception v0

    move-object v4, v0

    move v6, v7

    move-object v5, v14

    move-object/from16 v20, v5

    const/16 v3, 0xc8

    goto/16 :goto_59

    .line 649
    :catch_0
    move-exception v0

    move-object v4, v0

    move v6, v7

    move-object v5, v14

    move-object/from16 v20, v5

    const/16 v3, 0xc8

    goto/16 :goto_3f

    .line 646
    :catch_1
    move-exception v0

    move-object v4, v0

    move v6, v7

    move-object v5, v14

    move-object/from16 v20, v5

    const/16 v3, 0xc8

    goto/16 :goto_47

    .line 467
    :catch_2
    move-exception v0

    .line 468
    nop

    .line 469
    :try_start_3
    iget-object v5, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v12, v12, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v5, v12, v8}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 471
    const-string v5, "BtOppObexClient"

    const-string v12, "Error when put HeaderSet "

    invoke-static {v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 472
    move v12, v6

    move/from16 v16, v8

    move-object v5, v14

    goto :goto_1

    .line 653
    :catchall_1
    move-exception v0

    move-object v4, v0

    move v6, v7

    move v3, v8

    move-object v5, v14

    move-object/from16 v20, v5

    goto/16 :goto_59

    .line 649
    :catch_3
    move-exception v0

    move-object v4, v0

    move v6, v7

    move v3, v8

    move-object v5, v14

    move-object/from16 v20, v5

    goto/16 :goto_3f

    .line 646
    :catch_4
    move-exception v0

    move-object v4, v0

    move v6, v7

    move v3, v8

    move-object v5, v14

    move-object/from16 v20, v5

    goto/16 :goto_47

    .line 643
    :catch_5
    move-exception v0

    move-object v4, v0

    move v6, v7

    move v3, v8

    move-object v5, v14

    move-object/from16 v20, v5

    goto/16 :goto_4f

    .line 461
    :catch_6
    move-exception v0

    move-object v5, v0

    .line 462
    nop

    .line 463
    :try_start_4
    iget-object v12, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v13, v13, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v12, v13, v8}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 465
    const-string v12, "BtOppObexClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error setting header items for request: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3a
    .catchall {:try_start_4 .. :try_end_4} :catchall_17

    .line 466
    nop

    .line 473
    move v12, v6

    move/from16 v16, v8

    move-object v5, v14

    .line 474
    :goto_1
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_39
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_38
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_37
    .catchall {:try_start_5 .. :try_end_5} :catchall_16

    .line 475
    :try_start_6
    iget-object v13, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v13, v7}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 476
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_13

    .line 478
    if-nez v12, :cond_5

    .line 480
    :try_start_7
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 481
    const-string v13, "BtOppObexClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "openOutputStream "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_4
    invoke-virtual {v5}, Ljavax/obex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v11
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 484
    :try_start_8
    invoke-virtual {v5}, Ljavax/obex/ClientOperation;->openInputStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 490
    goto/16 :goto_6

    .line 653
    :catchall_2
    move-exception v0

    move-object v4, v0

    move v6, v12

    move-object/from16 v20, v14

    move/from16 v3, v16

    goto :goto_3

    .line 649
    :catch_7
    move-exception v0

    move-object v4, v0

    move v6, v12

    move-object/from16 v20, v14

    move/from16 v3, v16

    goto :goto_4

    .line 646
    :catch_8
    move-exception v0

    move-object v4, v0

    move v6, v12

    move-object/from16 v20, v14

    move/from16 v3, v16

    goto :goto_5

    .line 485
    :catch_9
    move-exception v0

    goto :goto_2

    .line 653
    :catchall_3
    move-exception v0

    goto/16 :goto_33

    .line 649
    :catch_a
    move-exception v0

    goto/16 :goto_35

    .line 646
    :catch_b
    move-exception v0

    goto/16 :goto_37

    .line 485
    :catch_c
    move-exception v0

    move-object v11, v14

    .line 486
    :goto_2
    nop

    .line 487
    :try_start_9
    iget-object v13, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v15, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v15, v15, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v13, v15, v8}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 488
    const-string v13, "BtOppObexClient"

    const-string v15, "Error when openOutputStream"

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 489
    move v12, v6

    move/from16 v16, v8

    move-object v8, v14

    goto :goto_6

    .line 653
    :catchall_4
    move-exception v0

    move-object v4, v0

    move v3, v8

    move v6, v12

    move-object/from16 v20, v14

    :goto_3
    move-object v14, v11

    goto/16 :goto_59

    .line 649
    :catch_d
    move-exception v0

    move-object v4, v0

    move v3, v8

    move v6, v12

    move-object/from16 v20, v14

    :goto_4
    move-object v14, v11

    goto/16 :goto_3f

    .line 646
    :catch_e
    move-exception v0

    move-object v4, v0

    move v3, v8

    move v6, v12

    move-object/from16 v20, v14

    :goto_5
    move-object v14, v11

    goto/16 :goto_47

    .line 643
    :catch_f
    move-exception v0

    move-object v4, v0

    move v3, v8

    move v6, v12

    move-object/from16 v20, v14

    move-object v14, v11

    goto/16 :goto_4f

    .line 478
    :cond_5
    move-object v8, v14

    move-object v11, v8

    .line 492
    :goto_6
    if-nez v12, :cond_6

    .line 493
    :try_start_a
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 494
    const-string v15, "current_bytes"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 495
    const-string v6, "status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v4, v13, v14, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_10
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_b

    .line 653
    :catchall_5
    move-exception v0

    move-object v4, v0

    move-object/from16 v20, v8

    :goto_7
    move-object v14, v11

    move v6, v12

    goto/16 :goto_34

    .line 649
    :catch_10
    move-exception v0

    move-object v4, v0

    move-object/from16 v20, v8

    :goto_8
    move-object v14, v11

    move v6, v12

    goto/16 :goto_36

    .line 646
    :catch_11
    move-exception v0

    move-object v4, v0

    move-object/from16 v20, v8

    :goto_9
    move-object v14, v11

    move v6, v12

    goto/16 :goto_38

    .line 643
    :catch_12
    move-exception v0

    move-object v4, v0

    move-object/from16 v20, v8

    :goto_a
    move-object v14, v11

    move v6, v12

    goto/16 :goto_39

    .line 499
    :cond_6
    :goto_b
    if-nez v12, :cond_1f

    .line 500
    nop

    .line 501
    nop

    .line 502
    nop

    .line 503
    nop

    .line 504
    nop

    .line 505
    nop

    .line 506
    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 507
    invoke-virtual {v5}, Ljavax/obex/ClientOperation;->getMaxPacketSize()I

    move-result v3

    .line 508
    new-array v6, v3, [B

    .line 509
    new-instance v13, Ljava/io/BufferedInputStream;

    iget-object v15, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    const/16 v14, 0x4000

    invoke-direct {v13, v15, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 511
    iget-object v14, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v14}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v14
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_31
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_30
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_2f
    .catchall {:try_start_b .. :try_end_b} :catchall_12

    if-nez v14, :cond_d

    move-object/from16 v20, v8

    :try_start_c
    iget-wide v7, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v7, v9, v7

    if-eqz v7, :cond_e

    .line 512
    invoke-static {v13, v6, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$700(Ljava/io/InputStream;[BI)I

    move-result v7

    .line 514
    iget-object v8, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$500(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v8
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_1f
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    const/4 v14, 0x4

    if-eqz v8, :cond_7

    .line 515
    :try_start_d
    iget-object v8, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$500(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v8

    iget-object v15, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$500(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v15

    .line 516
    invoke-virtual {v15, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    const-wide/32 v9, 0xc350

    .line 515
    invoke-virtual {v8, v15, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_14
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_13
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_c

    .line 653
    :catchall_6
    move-exception v0

    move-object v4, v0

    move-object v14, v11

    move v6, v12

    move/from16 v3, v16

    const-wide/16 v9, 0x0

    goto/16 :goto_59

    .line 649
    :catch_13
    move-exception v0

    move-object v4, v0

    move-object v14, v11

    move v6, v12

    move/from16 v3, v16

    const-wide/16 v9, 0x0

    goto/16 :goto_3f

    .line 646
    :catch_14
    move-exception v0

    move-object v4, v0

    move-object v14, v11

    move v6, v12

    move/from16 v3, v16

    const-wide/16 v9, 0x0

    goto/16 :goto_47

    .line 643
    :catch_15
    move-exception v0

    move-object v4, v0

    move-object v14, v11

    move v6, v12

    move/from16 v3, v16

    const-wide/16 v9, 0x0

    goto/16 :goto_4f

    .line 519
    :cond_7
    :goto_c
    :try_start_e
    monitor-enter p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_1c
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    .line 520
    :try_start_f
    iget-object v8, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 521
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 524
    const/4 v8, 0x0

    :try_start_10
    invoke-virtual {v11, v6, v8, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_1c
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    .line 526
    int-to-long v8, v7

    const-wide/16 v22, 0x0

    add-long v9, v22, v8

    .line 528
    :try_start_11
    iget-wide v7, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v7, v9, v7

    if-nez v7, :cond_8

    .line 531
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 532
    const/4 v11, 0x0

    .line 536
    :cond_8
    invoke-virtual {v5}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v7

    .line 538
    iget-object v8, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$500(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 539
    iget-object v8, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$500(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 541
    :cond_9
    monitor-enter p0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_16
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 542
    :try_start_12
    iget-object v8, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v14, 0x0

    invoke-static {v8, v14}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 543
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 545
    const/16 v8, 0x90

    if-eq v7, v8, :cond_b

    const/16 v8, 0xa0

    if-ne v7, v8, :cond_a

    goto :goto_d

    .line 557
    :cond_a
    :try_start_13
    const-string v8, "BtOppObexClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Remote reject, Response code is "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v7

    move-wide/from16 v7, v22

    const/4 v15, 0x0

    goto/16 :goto_17

    .line 547
    :cond_b
    :goto_d
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 548
    const-string v8, "BtOppObexClient"

    const-string v14, "Remote accept"

    invoke-static {v8, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_c
    nop

    .line 551
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 552
    const-string v14, "current_bytes"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 553
    iget-object v14, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 554
    const/4 v15, 0x0

    invoke-virtual {v14, v4, v8, v15, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 555
    iget-object v8, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$408(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_17
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_13} :catch_16
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    move v14, v7

    move-wide/from16 v7, v22

    const/4 v15, 0x1

    goto/16 :goto_17

    .line 543
    :catchall_7
    move-exception v0

    move-object v3, v0

    :try_start_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :try_start_15
    throw v3
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_17
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_15} :catch_16
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 653
    :catchall_8
    move-exception v0

    goto :goto_13

    .line 649
    :catch_16
    move-exception v0

    goto :goto_14

    .line 646
    :catch_17
    move-exception v0

    goto :goto_15

    .line 643
    :catch_18
    move-exception v0

    goto :goto_16

    .line 521
    :catchall_9
    move-exception v0

    const-wide/16 v22, 0x0

    :goto_e
    move-object v3, v0

    :try_start_16
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    :try_start_17
    throw v3
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_1a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17 .. :try_end_17} :catch_19
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 653
    :catchall_a
    move-exception v0

    goto :goto_f

    .line 649
    :catch_19
    move-exception v0

    goto :goto_10

    .line 646
    :catch_1a
    move-exception v0

    goto :goto_11

    .line 643
    :catch_1b
    move-exception v0

    goto :goto_12

    .line 521
    :catchall_b
    move-exception v0

    goto :goto_e

    .line 653
    :catchall_c
    move-exception v0

    const-wide/16 v22, 0x0

    :goto_f
    move-object v4, v0

    move-object v14, v11

    move v6, v12

    goto/16 :goto_2f

    .line 649
    :catch_1c
    move-exception v0

    const-wide/16 v22, 0x0

    :goto_10
    move-object v4, v0

    move-object v14, v11

    move v6, v12

    goto/16 :goto_30

    .line 646
    :catch_1d
    move-exception v0

    const-wide/16 v22, 0x0

    :goto_11
    move-object v4, v0

    move-object v14, v11

    move v6, v12

    goto/16 :goto_31

    .line 643
    :catch_1e
    move-exception v0

    const-wide/16 v22, 0x0

    :goto_12
    move-object v4, v0

    move-object v14, v11

    move v6, v12

    goto/16 :goto_32

    .line 653
    :catchall_d
    move-exception v0

    move-wide/from16 v22, v9

    :goto_13
    move-object v4, v0

    goto/16 :goto_7

    .line 649
    :catch_1f
    move-exception v0

    move-wide/from16 v22, v9

    :goto_14
    move-object v4, v0

    goto/16 :goto_8

    .line 646
    :catch_20
    move-exception v0

    move-wide/from16 v22, v9

    :goto_15
    move-object v4, v0

    goto/16 :goto_9

    .line 643
    :catch_21
    move-exception v0

    move-wide/from16 v22, v9

    :goto_16
    move-object v4, v0

    goto/16 :goto_a

    .line 511
    :cond_d
    move-object/from16 v20, v8

    :cond_e
    move-wide/from16 v22, v9

    .line 561
    move-wide/from16 v7, v22

    move-wide v9, v7

    const/4 v14, -0x1

    const/4 v15, 0x0

    :goto_17
    move/from16 v24, v12

    :try_start_18
    iget-object v12, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v12}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v12

    if-nez v12, :cond_16

    if-eqz v15, :cond_16

    move v12, v14

    move/from16 v25, v15

    iget-wide v14, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v14, v9, v14

    if-gez v14, :cond_15

    .line 562
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v12
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2e
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_2d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_18} :catch_2c
    .catchall {:try_start_18 .. :try_end_18} :catchall_11

    if-eqz v12, :cond_f

    .line 563
    :try_start_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_23
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_19} :catch_22
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    move-wide/from16 v22, v14

    goto :goto_18

    .line 653
    :catchall_e
    move-exception v0

    goto/16 :goto_24

    .line 649
    :catch_22
    move-exception v0

    goto/16 :goto_25

    .line 646
    :catch_23
    move-exception v0

    goto/16 :goto_26

    .line 643
    :catch_24
    move-exception v0

    goto/16 :goto_27

    .line 566
    :cond_f
    :goto_18
    const/4 v12, 0x0

    :try_start_1a
    invoke-virtual {v13, v6, v12, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v14

    .line 567
    invoke-virtual {v11, v6, v12, v14}, Ljava/io/OutputStream;->write([BII)V

    .line 570
    invoke-virtual {v5}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v15

    .line 571
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v21
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_2e
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_2d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_1a} :catch_2c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_11

    if-eqz v21, :cond_10

    .line 572
    :try_start_1b
    const-string v12, "BtOppObexClient"

    move/from16 v26, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v6

    const-string v6, "Response code is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1b} :catch_23
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1b .. :try_end_1b} :catch_22
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    goto :goto_19

    .line 571
    :cond_10
    move/from16 v26, v3

    move-object/from16 v27, v6

    .line 574
    :goto_19
    const/16 v3, 0x90

    if-eq v15, v3, :cond_11

    const/16 v6, 0xa0

    if-eq v15, v6, :cond_11

    .line 577
    move v14, v15

    move/from16 v12, v24

    move/from16 v3, v26

    move-object/from16 v6, v27

    const/4 v15, 0x0

    goto :goto_17

    .line 579
    :cond_11
    move-object v6, v4

    int-to-long v3, v14

    add-long/2addr v9, v3

    .line 580
    :try_start_1c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 581
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 582
    const-string v12, "BtOppObexClient"
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_2e
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_2d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_1c} :catch_2c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_11

    move-object/from16 v28, v11

    :try_start_1d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v29, v15

    const-string v15, "Sending file position = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " readLength "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " bytes took "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v14, v3, v22

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " ms"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 581
    :cond_12
    move-object/from16 v28, v11

    move/from16 v29, v15

    .line 588
    :goto_1a
    const-wide/16 v11, 0x64

    mul-long/2addr v11, v9

    iget-wide v14, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    div-long/2addr v11, v14

    .line 589
    cmp-long v14, v11, v7

    if-gtz v14, :cond_14

    sub-long v14, v3, v18

    const-wide/16 v30, 0x2710

    cmp-long v14, v14, v30

    if-lez v14, :cond_13

    goto :goto_1b

    :cond_13
    move-object v4, v6

    move/from16 v12, v24

    move/from16 v15, v25

    move/from16 v3, v26

    move-object/from16 v6, v27

    move-object/from16 v11, v28

    move/from16 v14, v29

    goto/16 :goto_17

    .line 591
    :cond_14
    :goto_1b
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 592
    const-string v8, "current_bytes"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v7, v8, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 593
    iget-object v8, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 594
    const/4 v14, 0x0

    invoke-virtual {v8, v6, v7, v14, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_2b
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_1d} :catch_2a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d .. :try_end_1d} :catch_29
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    .line 595
    nop

    .line 596
    move-wide/from16 v18, v3

    move-object v4, v6

    move-wide v7, v11

    move/from16 v12, v24

    move/from16 v15, v25

    move/from16 v3, v26

    move-object/from16 v6, v27

    move-object/from16 v11, v28

    move/from16 v14, v29

    goto/16 :goto_17

    .line 561
    :cond_15
    move-object/from16 v28, v11

    goto :goto_1c

    :cond_16
    move-object/from16 v28, v11

    move v12, v14

    .line 601
    :goto_1c
    nop

    .line 603
    :try_start_1e
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_2a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_1e} :catch_29
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    .line 607
    goto :goto_1d

    .line 604
    :catch_25
    move-exception v0

    move-object v3, v0

    .line 606
    :try_start_1f
    const-string v4, "BtOppObexClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error when closing BufferedInputStream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :goto_1d
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 610
    const-string v3, "BtOppObexClient"

    const-string v4, "Close BufferedInputStream finished"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_17
    const/16 v3, 0xc3

    if-eq v12, v3, :cond_1d

    const/16 v3, 0xc6

    if-ne v12, v3, :cond_18

    goto/16 :goto_1f

    .line 620
    :cond_18
    const/16 v3, 0xcf

    if-ne v12, v3, :cond_19

    .line 621
    const-string v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote reject file type "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    move/from16 v6, v24

    move-object/from16 v11, v28

    const/16 v16, 0x196

    goto/16 :goto_28

    .line 623
    :cond_19
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v3

    if-nez v3, :cond_1b

    iget-wide v3, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v9, v3

    if-nez v3, :cond_1b

    .line 624
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 625
    const-string v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SendFile finished send out file "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " length "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 630
    :cond_1a
    const-string v3, "BtOppObexClient"

    const-string v4, "SendFile finished send out file"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_2b
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_1f} :catch_2a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1f .. :try_end_1f} :catch_29
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    .line 655
    :goto_1e
    move/from16 v6, v24

    move-object/from16 v11, v28

    goto/16 :goto_28

    .line 633
    :cond_1b
    nop

    .line 634
    const/16 v3, 0x1ea

    .line 635
    :try_start_20
    invoke-virtual {v5}, Ljavax/obex/ClientOperation;->abort()V

    .line 637
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 638
    const-string v4, "BtOppObexClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SendFile interrupted when send out file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_20} :catch_27
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20 .. :try_end_20} :catch_26
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    .line 655
    :cond_1c
    move/from16 v16, v3

    move-object/from16 v11, v28

    const/4 v6, 0x1

    goto/16 :goto_28

    .line 653
    :catchall_f
    move-exception v0

    move-object v4, v0

    move-object/from16 v14, v28

    const/4 v6, 0x1

    goto/16 :goto_59

    .line 649
    :catch_26
    move-exception v0

    move-object v4, v0

    move-object/from16 v14, v28

    const/4 v6, 0x1

    goto/16 :goto_3f

    .line 646
    :catch_27
    move-exception v0

    move-object v4, v0

    move-object/from16 v14, v28

    const/4 v6, 0x1

    goto/16 :goto_47

    .line 643
    :catch_28
    move-exception v0

    move-object v4, v0

    move-object/from16 v14, v28

    const/4 v6, 0x1

    goto/16 :goto_4f

    .line 615
    :cond_1d
    :goto_1f
    :try_start_21
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 616
    const-string v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote reject file "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " length "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_2b
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_21} :catch_2a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_21 .. :try_end_21} :catch_29
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    .line 619
    :cond_1e
    move/from16 v6, v24

    move-object/from16 v11, v28

    const/16 v16, 0x193

    goto/16 :goto_28

    .line 653
    :catchall_10
    move-exception v0

    goto :goto_20

    .line 649
    :catch_29
    move-exception v0

    goto :goto_21

    .line 646
    :catch_2a
    move-exception v0

    goto :goto_22

    .line 643
    :catch_2b
    move-exception v0

    goto :goto_23

    .line 653
    :catchall_11
    move-exception v0

    move-object/from16 v28, v11

    :goto_20
    move-object v4, v0

    move/from16 v3, v16

    move/from16 v6, v24

    move-object/from16 v14, v28

    goto/16 :goto_59

    .line 649
    :catch_2c
    move-exception v0

    move-object/from16 v28, v11

    :goto_21
    move-object v4, v0

    move/from16 v3, v16

    move/from16 v6, v24

    move-object/from16 v14, v28

    goto/16 :goto_3f

    .line 646
    :catch_2d
    move-exception v0

    move-object/from16 v28, v11

    :goto_22
    move-object v4, v0

    move/from16 v3, v16

    move/from16 v6, v24

    move-object/from16 v14, v28

    goto/16 :goto_47

    .line 643
    :catch_2e
    move-exception v0

    move-object/from16 v28, v11

    :goto_23
    move-object v4, v0

    move/from16 v3, v16

    move/from16 v6, v24

    move-object/from16 v14, v28

    goto/16 :goto_4f

    .line 653
    :catchall_12
    move-exception v0

    move-object/from16 v20, v8

    move-wide/from16 v22, v9

    move/from16 v24, v12

    :goto_24
    move-object v4, v0

    move-object v14, v11

    move/from16 v3, v16

    move/from16 v6, v24

    goto/16 :goto_59

    .line 649
    :catch_2f
    move-exception v0

    move-object/from16 v20, v8

    move-wide/from16 v22, v9

    move/from16 v24, v12

    :goto_25
    move-object v4, v0

    move-object v14, v11

    move/from16 v3, v16

    move/from16 v6, v24

    goto/16 :goto_3f

    .line 646
    :catch_30
    move-exception v0

    move-object/from16 v20, v8

    move-wide/from16 v22, v9

    move/from16 v24, v12

    :goto_26
    move-object v4, v0

    move-object v14, v11

    move/from16 v3, v16

    move/from16 v6, v24

    goto/16 :goto_47

    .line 643
    :catch_31
    move-exception v0

    move-object/from16 v20, v8

    move-wide/from16 v22, v9

    move/from16 v24, v12

    :goto_27
    move-object v4, v0

    move-object v14, v11

    move/from16 v3, v16

    move/from16 v6, v24

    goto/16 :goto_4f

    .line 499
    :cond_1f
    move-object/from16 v20, v8

    move-wide/from16 v22, v9

    move/from16 v24, v12

    move/from16 v6, v24

    .line 655
    :goto_28
    :try_start_22
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 657
    if-nez v6, :cond_26

    .line 658
    if-eqz v11, :cond_20

    .line 659
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 661
    :cond_20
    invoke-virtual {v5}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v3

    .line 662
    const/4 v4, -0x1

    if-eq v3, v4, :cond_25

    .line 663
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 664
    const-string v4, "BtOppObexClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get response code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_21
    const/16 v4, 0xa0

    if-eq v3, v4, :cond_26

    .line 667
    const-string v4, "BtOppObexClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response error code is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_33

    .line 668
    nop

    .line 669
    const/16 v4, 0xcf

    if-ne v3, v4, :cond_22

    .line 670
    const/16 v11, 0x196

    goto :goto_29

    .line 669
    :cond_22
    const/16 v11, 0x1ef

    .line 672
    :goto_29
    const/16 v4, 0xc3

    if-eq v3, v4, :cond_24

    const/16 v4, 0xc6

    if-ne v3, v4, :cond_23

    goto :goto_2a

    :cond_23
    move v12, v11

    goto :goto_2b

    .line 674
    :cond_24
    :goto_2a
    const/16 v12, 0x193

    goto :goto_2b

    .line 679
    :cond_25
    const/16 v12, 0x1f1

    goto :goto_2b

    .line 683
    :cond_26
    move/from16 v12, v16

    :goto_2b
    if-eqz v20, :cond_27

    .line 684
    :try_start_23
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    goto :goto_2c

    .line 690
    :catch_32
    move-exception v0

    move-object v3, v0

    move/from16 v16, v12

    goto :goto_2d

    .line 686
    :cond_27
    :goto_2c
    if-eqz v5, :cond_28

    .line 687
    invoke-virtual {v5}, Ljavax/obex/ClientOperation;->close()V

    .line 689
    :cond_28
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v3, v4, v12}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_32

    goto/16 :goto_54

    .line 690
    :catch_33
    move-exception v0

    move-object v3, v0

    .line 691
    :goto_2d
    const-string v4, "BtOppObexClient"

    const-string v5, "Error when closing stream after send"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 696
    iget-wide v2, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v2, v9, v2

    if-eqz v2, :cond_29

    .line 697
    goto/16 :goto_56

    .line 696
    :cond_29
    move/from16 v3, v16

    goto/16 :goto_57

    .line 476
    :catchall_13
    move-exception v0

    move-wide/from16 v22, v9

    :goto_2e
    move-object v3, v0

    :try_start_24
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_15

    :try_start_25
    throw v3
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_25} :catch_35
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_25 .. :try_end_25} :catch_34
    .catchall {:try_start_25 .. :try_end_25} :catchall_14

    .line 653
    :catchall_14
    move-exception v0

    move-object v4, v0

    move v6, v12

    move-object/from16 v20, v14

    :goto_2f
    move/from16 v3, v16

    move-wide/from16 v9, v22

    goto/16 :goto_59

    .line 649
    :catch_34
    move-exception v0

    move-object v4, v0

    move v6, v12

    move-object/from16 v20, v14

    :goto_30
    move/from16 v3, v16

    move-wide/from16 v9, v22

    goto/16 :goto_3f

    .line 646
    :catch_35
    move-exception v0

    move-object v4, v0

    move v6, v12

    move-object/from16 v20, v14

    :goto_31
    move/from16 v3, v16

    move-wide/from16 v9, v22

    goto/16 :goto_47

    .line 643
    :catch_36
    move-exception v0

    move-object v4, v0

    move v6, v12

    move-object/from16 v20, v14

    :goto_32
    move/from16 v3, v16

    move-wide/from16 v9, v22

    goto/16 :goto_4f

    .line 476
    :catchall_15
    move-exception v0

    goto :goto_2e

    .line 653
    :catchall_16
    move-exception v0

    move-wide/from16 v22, v9

    :goto_33
    move-object v4, v0

    move v6, v12

    move-object/from16 v20, v14

    :goto_34
    move/from16 v3, v16

    goto/16 :goto_59

    .line 649
    :catch_37
    move-exception v0

    move-wide/from16 v22, v9

    :goto_35
    move-object v4, v0

    move v6, v12

    move-object/from16 v20, v14

    :goto_36
    move/from16 v3, v16

    goto/16 :goto_3f

    .line 646
    :catch_38
    move-exception v0

    move-wide/from16 v22, v9

    :goto_37
    move-object v4, v0

    move v6, v12

    move-object/from16 v20, v14

    :goto_38
    move/from16 v3, v16

    goto/16 :goto_47

    .line 643
    :catch_39
    move-exception v0

    move-wide/from16 v22, v9

    move-object v4, v0

    move v6, v12

    move-object/from16 v20, v14

    :goto_39
    move/from16 v3, v16

    goto/16 :goto_4f

    .line 653
    :catchall_17
    move-exception v0

    move-wide/from16 v22, v9

    move-object v4, v0

    move v3, v8

    move-object v5, v14

    move-object/from16 v20, v5

    goto/16 :goto_3c

    .line 649
    :catch_3a
    move-exception v0

    move-wide/from16 v22, v9

    move-object v4, v0

    move v3, v8

    move-object v5, v14

    move-object/from16 v20, v5

    goto/16 :goto_3e

    .line 646
    :catch_3b
    move-exception v0

    move-wide/from16 v22, v9

    move-object v4, v0

    move v3, v8

    move-object v5, v14

    move-object/from16 v20, v5

    goto/16 :goto_46

    .line 643
    :catch_3c
    move-exception v0

    move-wide/from16 v22, v9

    move-object v4, v0

    move v3, v8

    move-object v5, v14

    move-object/from16 v20, v5

    goto/16 :goto_4e

    .line 443
    :catchall_18
    move-exception v0

    move-wide/from16 v22, v9

    :goto_3a
    move-object v3, v0

    :try_start_26
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1a

    :try_start_27
    throw v3
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_3f
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_27} :catch_3e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_27 .. :try_end_27} :catch_3d
    .catchall {:try_start_27 .. :try_end_27} :catchall_19

    .line 653
    :catchall_19
    move-exception v0

    move-object v4, v0

    move-object v5, v14

    move-object/from16 v20, v5

    move-wide/from16 v9, v22

    goto :goto_3b

    .line 649
    :catch_3d
    move-exception v0

    move-object v4, v0

    move-object v5, v14

    move-object/from16 v20, v5

    move-wide/from16 v9, v22

    goto :goto_3d

    .line 646
    :catch_3e
    move-exception v0

    move-object v4, v0

    move-object v5, v14

    move-object/from16 v20, v5

    move-wide/from16 v9, v22

    goto/16 :goto_45

    .line 643
    :catch_3f
    move-exception v0

    move-object v4, v0

    move-object v5, v14

    move-object/from16 v20, v5

    move-wide/from16 v9, v22

    goto/16 :goto_4d

    .line 443
    :catchall_1a
    move-exception v0

    goto :goto_3a

    .line 653
    :catchall_1b
    move-exception v0

    move-wide/from16 v22, v9

    move-object v4, v0

    move-object v5, v14

    move-object/from16 v20, v5

    :goto_3b
    const/16 v3, 0xc8

    :goto_3c
    const/4 v6, 0x0

    goto/16 :goto_59

    .line 649
    :catch_40
    move-exception v0

    move-wide/from16 v22, v9

    move-object v4, v0

    move-object v5, v14

    move-object/from16 v20, v5

    :goto_3d
    const/16 v3, 0xc8

    :goto_3e
    const/4 v6, 0x0

    .line 650
    :goto_3f
    :try_start_28
    invoke-virtual {v4}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 651
    invoke-virtual {v4}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1c

    .line 655
    :try_start_29
    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 657
    if-nez v6, :cond_30

    .line 658
    if-eqz v14, :cond_2a

    .line 659
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 661
    :cond_2a
    invoke-virtual {v5}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v4

    .line 662
    const/4 v6, -0x1

    if-eq v4, v6, :cond_2f

    .line 663
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 664
    const-string v6, "BtOppObexClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get response code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_2b
    const/16 v6, 0xa0

    if-eq v4, v6, :cond_30

    .line 667
    const-string v6, "BtOppObexClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response error code is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_42

    .line 668
    nop

    .line 669
    const/16 v3, 0xcf

    if-ne v4, v3, :cond_2c

    .line 670
    const/16 v11, 0x196

    goto :goto_40

    .line 669
    :cond_2c
    const/16 v11, 0x1ef

    .line 672
    :goto_40
    const/16 v3, 0xc3

    if-eq v4, v3, :cond_2e

    const/16 v3, 0xc6

    if-ne v4, v3, :cond_2d

    goto :goto_41

    :cond_2d
    move v12, v11

    goto :goto_42

    .line 674
    :cond_2e
    :goto_41
    const/16 v12, 0x193

    goto :goto_42

    .line 679
    :cond_2f
    const/16 v12, 0x1f1

    goto :goto_42

    .line 683
    :cond_30
    move v12, v3

    :goto_42
    if-eqz v20, :cond_31

    .line 684
    :try_start_2a
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    goto :goto_43

    .line 690
    :catch_41
    move-exception v0

    move-object v4, v0

    move v3, v12

    goto :goto_44

    .line 686
    :cond_31
    :goto_43
    if-eqz v5, :cond_32

    .line 687
    invoke-virtual {v5}, Ljavax/obex/ClientOperation;->close()V

    .line 689
    :cond_32
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v3, v4, v12}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_41

    goto/16 :goto_54

    .line 690
    :catch_42
    move-exception v0

    move-object v4, v0

    .line 691
    :goto_44
    const-string v5, "BtOppObexClient"

    const-string v6, "Error when closing stream after send"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 696
    iget-wide v4, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v2, v9, v4

    if-eqz v2, :cond_45

    .line 697
    goto/16 :goto_56

    .line 646
    :catch_43
    move-exception v0

    move-wide/from16 v22, v9

    move-object v4, v0

    move-object v5, v14

    move-object/from16 v20, v5

    :goto_45
    const/16 v3, 0xc8

    :goto_46
    const/4 v6, 0x0

    .line 647
    :goto_47
    :try_start_2b
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 648
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1c

    .line 655
    :try_start_2c
    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 657
    if-nez v6, :cond_39

    .line 658
    if-eqz v14, :cond_33

    .line 659
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 661
    :cond_33
    invoke-virtual {v5}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v4

    .line 662
    const/4 v6, -0x1

    if-eq v4, v6, :cond_38

    .line 663
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 664
    const-string v6, "BtOppObexClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get response code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_34
    const/16 v6, 0xa0

    if-eq v4, v6, :cond_39

    .line 667
    const-string v6, "BtOppObexClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response error code is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_45

    .line 668
    nop

    .line 669
    const/16 v3, 0xcf

    if-ne v4, v3, :cond_35

    .line 670
    const/16 v11, 0x196

    goto :goto_48

    .line 669
    :cond_35
    const/16 v11, 0x1ef

    .line 672
    :goto_48
    const/16 v3, 0xc3

    if-eq v4, v3, :cond_37

    const/16 v3, 0xc6

    if-ne v4, v3, :cond_36

    goto :goto_49

    :cond_36
    move v12, v11

    goto :goto_4a

    .line 674
    :cond_37
    :goto_49
    const/16 v12, 0x193

    goto :goto_4a

    .line 679
    :cond_38
    const/16 v12, 0x1f1

    goto :goto_4a

    .line 683
    :cond_39
    move v12, v3

    :goto_4a
    if-eqz v20, :cond_3a

    .line 684
    :try_start_2d
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    goto :goto_4b

    .line 690
    :catch_44
    move-exception v0

    move-object v4, v0

    move v3, v12

    goto :goto_4c

    .line 686
    :cond_3a
    :goto_4b
    if-eqz v5, :cond_3b

    .line 687
    invoke-virtual {v5}, Ljavax/obex/ClientOperation;->close()V

    .line 689
    :cond_3b
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v3, v4, v12}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_44

    goto/16 :goto_54

    .line 690
    :catch_45
    move-exception v0

    move-object v4, v0

    .line 691
    :goto_4c
    const-string v5, "BtOppObexClient"

    const-string v6, "Error when closing stream after send"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 696
    iget-wide v4, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v2, v9, v4

    if-eqz v2, :cond_45

    .line 697
    goto/16 :goto_56

    .line 643
    :catch_46
    move-exception v0

    move-wide/from16 v22, v9

    move-object v4, v0

    move-object v5, v14

    move-object/from16 v20, v5

    :goto_4d
    const/16 v3, 0xc8

    :goto_4e
    const/4 v6, 0x0

    .line 644
    :goto_4f
    :try_start_2e
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 645
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1c

    .line 655
    :try_start_2f
    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 657
    if-nez v6, :cond_42

    .line 658
    if-eqz v14, :cond_3c

    .line 659
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 661
    :cond_3c
    invoke-virtual {v5}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v4

    .line 662
    const/4 v6, -0x1

    if-eq v4, v6, :cond_41

    .line 663
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 664
    const-string v6, "BtOppObexClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get response code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_3d
    const/16 v6, 0xa0

    if-eq v4, v6, :cond_42

    .line 667
    const-string v6, "BtOppObexClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response error code is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_48

    .line 668
    nop

    .line 669
    const/16 v3, 0xcf

    if-ne v4, v3, :cond_3e

    .line 670
    const/16 v11, 0x196

    goto :goto_50

    .line 669
    :cond_3e
    const/16 v11, 0x1ef

    .line 672
    :goto_50
    const/16 v3, 0xc3

    if-eq v4, v3, :cond_40

    const/16 v3, 0xc6

    if-ne v4, v3, :cond_3f

    goto :goto_51

    :cond_3f
    move v12, v11

    goto :goto_52

    .line 674
    :cond_40
    :goto_51
    const/16 v12, 0x193

    goto :goto_52

    .line 679
    :cond_41
    const/16 v12, 0x1f1

    goto :goto_52

    .line 683
    :cond_42
    move v12, v3

    :goto_52
    if-eqz v20, :cond_43

    .line 684
    :try_start_30
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    goto :goto_53

    .line 690
    :catch_47
    move-exception v0

    move-object v4, v0

    move v3, v12

    goto :goto_55

    .line 686
    :cond_43
    :goto_53
    if-eqz v5, :cond_44

    .line 687
    invoke-virtual {v5}, Ljavax/obex/ClientOperation;->close()V

    .line 689
    :cond_44
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v3, v4, v12}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_47

    .line 700
    :goto_54
    goto :goto_58

    .line 690
    :catch_48
    move-exception v0

    move-object v4, v0

    .line 691
    :goto_55
    const-string v5, "BtOppObexClient"

    const-string v6, "Error when closing stream after send"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 696
    iget-wide v4, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v2, v9, v4

    if-eqz v2, :cond_45

    .line 697
    :goto_56
    nop

    .line 698
    iget-object v2, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v4, 0x193

    invoke-static {v2, v3, v4}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    const/16 v3, 0x193

    .line 701
    :cond_45
    :goto_57
    move v12, v3

    .line 702
    :goto_58
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 703
    const-string v2, "BtOppObexClient"

    const-string v3, "Cancel notification"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_46
    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$600(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->cancelNotification(Landroid/content/Context;)V

    .line 706
    return v12

    .line 653
    :catchall_1c
    move-exception v0

    move-object v4, v0

    .line 655
    :goto_59
    :try_start_31
    iget-object v7, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v7, v7, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 657
    if-nez v6, :cond_4d

    .line 658
    if-eqz v14, :cond_47

    .line 659
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 661
    :cond_47
    invoke-virtual {v5}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v6

    .line 662
    const/4 v7, -0x1

    if-eq v6, v7, :cond_4c

    .line 663
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 664
    const-string v7, "BtOppObexClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get response code "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_48
    const/16 v7, 0xa0

    if-eq v6, v7, :cond_4d

    .line 667
    const-string v3, "BtOppObexClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response error code is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    nop

    .line 669
    const/16 v3, 0xcf

    if-ne v6, v3, :cond_49

    .line 670
    const/16 v11, 0x196

    goto :goto_5a

    .line 669
    :cond_49
    const/16 v11, 0x1ef

    .line 672
    :goto_5a
    const/16 v3, 0xc3

    if-eq v6, v3, :cond_4b

    const/16 v3, 0xc6

    if-ne v6, v3, :cond_4a

    goto :goto_5b

    :cond_4a
    move v12, v11

    goto :goto_5c

    .line 674
    :cond_4b
    :goto_5b
    const/16 v12, 0x193

    goto :goto_5c

    .line 679
    :cond_4c
    const/16 v12, 0x1f1

    goto :goto_5c

    .line 683
    :cond_4d
    move v12, v3

    :goto_5c
    if-eqz v20, :cond_4e

    .line 684
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    .line 686
    :cond_4e
    if-eqz v5, :cond_4f

    .line 687
    invoke-virtual {v5}, Ljavax/obex/ClientOperation;->close()V

    .line 689
    :cond_4f
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v3, v5, v12}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_49

    .line 700
    goto :goto_5d

    .line 690
    :catch_49
    move-exception v0

    move-object v3, v0

    .line 691
    const-string v5, "BtOppObexClient"

    const-string v6, "Error when closing stream after send"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 696
    iget-wide v2, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v2, v9, v2

    if-eqz v2, :cond_50

    .line 697
    nop

    .line 698
    iget-object v2, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v3, 0x193

    invoke-static {v2, v1, v3}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 701
    :cond_50
    :goto_5d
    throw v4
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 212
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 213
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mWaitingForShare:Z

    .line 214
    return-void
.end method

.method public interrupt()V
    .locals 2

    .line 741
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 742
    monitor-enter p0

    .line 743
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 744
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    const-string v0, "BtOppObexClient"

    const-string v1, "Interrupted when waitingForRemote"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-interface {v0}, Ljavax/obex/ObexTransport;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 751
    goto :goto_0

    .line 749
    :catch_0
    move-exception v0

    .line 750
    :try_start_2
    const-string v0, "BtOppObexClient"

    const-string v1, "mTransport.close error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$500(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 753
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$500(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 754
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 755
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v1, :cond_1

    .line 756
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 758
    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 761
    :cond_2
    monitor-exit p0

    .line 762
    return-void

    .line 761
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 5

    .line 218
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 220
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v1

    const-string v2, "BtOppObexClient"

    if-eqz v1, :cond_0

    .line 221
    const-string v1, "acquire partial WakeLock"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 226
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    const-string v1, "Client thread was interrupted (1), exiting"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$302(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 234
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mNumShares:I

    invoke-direct {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->connect(I)V

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$402(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;I)I

    .line 238
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 239
    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mWaitingForShare:Z

    if-nez v1, :cond_3

    .line 240
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->doSend()V

    goto :goto_1

    .line 244
    :cond_3
    :try_start_1
    const-string v1, "Client thread waiting for next share, sleep for 500"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 248
    :catch_1
    move-exception v1

    .line 250
    :goto_2
    goto :goto_1

    .line 253
    :cond_4
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->disconnect()V

    .line 255
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 256
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 257
    const-string v1, "release partial WakeLock"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 262
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$400(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I

    move-result v1

    if-lez v1, :cond_7

    .line 264
    sget-object v1, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->OPP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/MetricsLogger;->logProfileConnectionEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    .line 267
    :cond_7
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$500(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 268
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$500(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 269
    iput v0, v1, Landroid/os/Message;->what:I

    .line 270
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 271
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 273
    :cond_8
    return-void
.end method
