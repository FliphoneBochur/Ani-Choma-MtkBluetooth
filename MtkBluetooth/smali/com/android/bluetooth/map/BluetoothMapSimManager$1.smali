.class Lcom/android/bluetooth/map/BluetoothMapSimManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapSimManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapSimManager;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 53
    const-string p2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 54
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->access$100()Landroid/telephony/SubscriptionManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->access$002(Lcom/android/bluetooth/map/BluetoothMapSimManager;Ljava/util/List;)Ljava/util/List;

    .line 55
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->access$000(Lcom/android/bluetooth/map/BluetoothMapSimManager;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    invoke-static {p2}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->access$000(Lcom/android/bluetooth/map/BluetoothMapSimManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    invoke-static {p2}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->access$000(Lcom/android/bluetooth/map/BluetoothMapSimManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 55
    :goto_1
    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->access$202(Lcom/android/bluetooth/map/BluetoothMapSimManager;I)I

    .line 58
    :cond_2
    return-void
.end method
