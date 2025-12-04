.class Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    .locals 0

    .line 3592
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;)V
    .locals 0

    .line 3592
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 3616
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 3617
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: action"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluetoothMapContentObserver"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3619
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3621
    :try_start_0
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1800(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3624
    goto :goto_0

    .line 3622
    :catch_0
    move-exception p1

    .line 3623
    const-string p1, "Error initializing SMS/MMS message lists."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    :goto_0
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1900()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    .line 3627
    new-instance p2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const-wide/16 v3, -0x1

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1200(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v6

    const-string v2, "NewMessage"

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 3628
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v0, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$1300(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 3629
    goto :goto_1

    .line 3630
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$202(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Z)Z

    .line 3632
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;->unregister()V

    goto :goto_2

    .line 3634
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: Unknown action "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    :goto_2
    return-void
.end method

.method public register()V
    .locals 4

    .line 3594
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$900(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 3595
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3600
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3601
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3602
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3603
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$900(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3604
    return-void

    .line 3596
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$202(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Z)Z

    .line 3597
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 3608
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$900(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3611
    goto :goto_0

    .line 3609
    :catch_0
    move-exception v0

    .line 3612
    :goto_0
    return-void
.end method
