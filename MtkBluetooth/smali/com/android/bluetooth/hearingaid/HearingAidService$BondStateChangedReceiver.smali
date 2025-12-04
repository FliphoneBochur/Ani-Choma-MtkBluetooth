.class Lcom/android/bluetooth/hearingaid/HearingAidService$BondStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HearingAidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hearingaid/HearingAidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BondStateChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hearingaid/HearingAidService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hearingaid/HearingAidService;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidService$BondStateChangedReceiver;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hearingaid/HearingAidService;Lcom/android/bluetooth/hearingaid/HearingAidService$1;)V
    .locals 0

    .line 729
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService$BondStateChangedReceiver;-><init>(Lcom/android/bluetooth/hearingaid/HearingAidService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 732
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 733
    return-void

    .line 735
    :cond_0
    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 737
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 738
    const-string v0, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 739
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService$BondStateChangedReceiver;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidService;

    invoke-virtual {v0, p2, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->bondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 740
    return-void
.end method
