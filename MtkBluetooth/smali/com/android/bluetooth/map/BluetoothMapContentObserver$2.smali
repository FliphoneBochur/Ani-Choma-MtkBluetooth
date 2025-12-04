.class Lcom/android/bluetooth/map/BluetoothMapContentObserver$2;
.super Landroid/telephony/PhoneStateListener;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    .locals 0

    .line 3844
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 3847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phone service state change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapContentObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3848
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    if-nez p1, :cond_0

    .line 3849
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$2000(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V

    .line 3851
    :cond_0
    return-void
.end method
