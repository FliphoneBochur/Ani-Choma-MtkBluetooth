.class public Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppHandoverReceiver.java"


# static fields
.field private static final D:Z = true

.field public static final TAG:Ljava/lang/String; = "BluetoothOppHandoverReceiver"

.field private static final V:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver;->V:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothOppHandoverReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    const-string v1, "android.nfc.handover.intent.action.HANDOVER_SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "android.nfc.handover.intent.action.HANDOVER_SEND_MULTIPLE"

    const-string v5, "android.bluetooth.device.extra.DEVICE"

    if-nez v3, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_0

    .line 79
    :cond_1
    const-string v1, "android.btopp.intent.action.WHITELIST_DEVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    nop

    .line 81
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 82
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver;->V:Z

    if-eqz v0, :cond_2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to whitelist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_2
    if-nez p2, :cond_3

    .line 86
    return-void

    .line 88
    :cond_3
    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->addToWhitelist(Ljava/lang/String;)V

    .line 89
    goto/16 :goto_3

    :cond_4
    const-string v1, "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 90
    const-string v0, "android.nfc.handover.intent.extra.TRANSFER_ID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 91
    if-eq p2, v1, :cond_5

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping handover transfer with Uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 99
    :cond_5
    goto/16 :goto_3

    .line 101
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown action: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 40
    :cond_7
    :goto_0
    nop

    .line 41
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 42
    if-nez v10, :cond_8

    .line 44
    const-string p1, "No device attached to handover intent."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 49
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "android.intent.extra.STREAM"

    if-eqz v1, :cond_9

    .line 52
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    .line 53
    if-eqz p2, :cond_a

    .line 54
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 56
    :cond_9
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 57
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    move-object v9, p2

    goto :goto_2

    .line 56
    :cond_a
    :goto_1
    nop

    .line 60
    move-object v9, v3

    :goto_2
    if-eqz v8, :cond_b

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_b

    .line 61
    nop

    .line 62
    nop

    .line 63
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver$1;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppHandoverReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 72
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 73
    nop

    .line 79
    nop

    .line 104
    :goto_3
    return-void

    .line 75
    :cond_b
    const-string p1, "No mimeType or stream attached to handover request"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method
