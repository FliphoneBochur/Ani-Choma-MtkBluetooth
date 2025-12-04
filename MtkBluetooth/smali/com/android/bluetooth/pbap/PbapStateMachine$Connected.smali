.class Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;
.super Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;
.source "PbapStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/PbapStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/PbapStateMachine;)V
    .locals 1

    .line 287
    iput-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;-><init>(Lcom/android/bluetooth/pbap/PbapStateMachine;Lcom/android/bluetooth/pbap/PbapStateMachine$1;)V

    return-void
.end method

.method private createPbapNotification()V
    .locals 9

    .line 368
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 369
    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 370
    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 372
    invoke-static {v2}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v2

    const v3, 0x7f0e006f

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pbap_obex_notification_channel"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 374
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 377
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 378
    iget-object v2, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v2

    const-class v4, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 379
    iget-object v2, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$200(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const-string v4, "com.android.bluetooth.pbap.device"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 380
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 381
    const-string v2, "com.android.bluetooth.pbap.authchall"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 386
    iget-object v4, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v4

    const-class v5, Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 387
    const-string v4, "com.android.bluetooth.pbap.authcancelled"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    iget-object v4, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$200(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    .line 391
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 392
    invoke-static {v6}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 392
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 394
    invoke-static {v5}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v5

    const v6, 0x7f0e0008

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 395
    invoke-static {v5}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const v4, 0x7f0e0006

    invoke-virtual {v5, v4, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 396
    const v4, 0x1080080

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 397
    invoke-static {v4}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v4

    const v5, 0x7f0e0007

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 398
    invoke-static {v4}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 402
    invoke-static {v5}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 399
    const v7, 0x106001c

    invoke-virtual {v4, v7, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 398
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 403
    const/16 v4, 0x10

    invoke-virtual {v3, v4, v6}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 404
    const/16 v4, 0x8

    invoke-virtual {v3, v4, v6}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 406
    invoke-static {v4}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v4

    invoke-static {v4, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 405
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 408
    invoke-static {v3}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v3

    invoke-static {v3, v8, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 407
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 409
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 410
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 411
    iget-object v2, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$1200(Lcom/android/bluetooth/pbap/PbapStateMachine;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 412
    return-void
.end method

.method private declared-synchronized notifyAuthCancelled()V
    .locals 2

    monitor-enter p0

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$1300(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setCancelled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    monitor-exit p0

    return-void

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyAuthKeyInput(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 425
    if-eqz p1, :cond_0

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$1300(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setSessionKey(Ljava/lang/String;)V

    .line 428
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$1300(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setChallenged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    monitor-exit p0

    return-void

    .line 424
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private removePbapNotification(I)V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 416
    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 417
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 418
    return-void
.end method

.method private startObexServerSession()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    invoke-static {}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const-string v0, "PbapStateMachine"

    const-string v1, "Pbap Service startObexServerSession"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$800(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 339
    invoke-static {v1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$800(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x138c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 338
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 341
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    new-instance v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 342
    invoke-static {v2}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$800(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/bluetooth/pbap/PbapStateMachine;)V

    .line 341
    invoke-static {v0, v1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$902(Lcom/android/bluetooth/pbap/PbapStateMachine;Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;)Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    .line 343
    monitor-enter p0

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    new-instance v1, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-direct {v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;-><init>(Lcom/android/bluetooth/pbap/PbapStateMachine;)V

    invoke-static {v0, v1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$1302(Lcom/android/bluetooth/pbap/PbapStateMachine;Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;)Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    .line 345
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$1300(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setChallenged(Z)V

    .line 346
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$1300(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setCancelled(Z)V

    .line 347
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :try_start_1
    new-instance v0, Lcom/android/bluetooth/BluetoothObexTransport;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$1000(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 350
    iget-object v1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    new-instance v2, Ljavax/obex/ServerSession;

    iget-object v3, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$900(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$1300(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    invoke-static {v1, v2}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$1102(Lcom/android/bluetooth/pbap/PbapStateMachine;Ljavax/obex/ServerSession;)Ljavax/obex/ServerSession;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 355
    nop

    .line 358
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    const-string v1, "PbapStateMachine"

    const-string v2, "mConnSocket is null, stopObexServerSession"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->stopObexServerSession()V

    .line 354
    return-void

    .line 347
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private stopObexServerSession()V
    .locals 2

    .line 361
    invoke-static {}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const-string v0, "PbapStateMachine"

    const-string v1, "Pbap Service stopObexServerSession"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$400(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 365
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 296
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->startObexServerSession()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception starting OBEX server session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PbapStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->broadcastStateTransitions()V

    .line 301
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->PBAP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/MetricsLogger;->logProfileConnectionEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    .line 302
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 303
    invoke-static {v1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$200(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/16 v2, 0x64

    .line 302
    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 304
    return-void
.end method

.method getConnectionStateInt()I
    .locals 1

    .line 290
    const/4 v0, 0x2

    return v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2

    .line 308
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 p1, 0x8

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->notifyAuthCancelled()V

    goto :goto_0

    .line 322
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 323
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->notifyAuthKeyInput(Ljava/lang/String;)V

    .line 324
    goto :goto_0

    .line 316
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.bluetooth.pbap.userconfirmtimeout"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;)V

    .line 318
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->notifyAuthCancelled()V

    .line 319
    iget-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbap/PbapStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->access$1200(Lcom/android/bluetooth/pbap/PbapStateMachine;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->removePbapNotification(I)V

    .line 320
    goto :goto_0

    .line 313
    :cond_3
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->createPbapNotification()V

    .line 314
    goto :goto_0

    .line 310
    :cond_4
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;->stopObexServerSession()V

    .line 311
    nop

    .line 329
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
