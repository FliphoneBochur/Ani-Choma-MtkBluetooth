.class Lcom/android/bluetooth/btservice/storage/DatabaseManager$1;
.super Landroid/content/BroadcastReceiver;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/storage/DatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/storage/DatabaseManager;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager$1;->this$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 174
    if-nez p1, :cond_0

    .line 175
    const-string p1, "BluetoothDatabase"

    const-string p2, "Received intent with null action"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void

    .line 178
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5b36f014

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x7e2cc189

    if-eq v1, v2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v3

    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_1

    .line 190
    :cond_4
    const/16 p1, 0xa

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 192
    iget-object p2, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager$1;->this$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    invoke-static {p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->access$300(Lcom/android/bluetooth/btservice/storage/DatabaseManager;)Z

    move-result p2

    if-nez p2, :cond_6

    const/16 p2, 0xb

    if-ne p1, p2, :cond_6

    .line 194
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager$1;->this$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->migrateSettingsGlobal()V

    goto :goto_1

    .line 180
    :cond_5
    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 182
    nop

    .line 183
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 184
    const-string v0, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager$1;->this$0:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->bondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 187
    nop

    .line 199
    :cond_6
    :goto_1
    return-void
.end method
