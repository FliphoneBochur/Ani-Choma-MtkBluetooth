.class public final synthetic Lcom/android/bluetooth/btservice/-$$Lambda$MetricsLogger$hpfdq7OwithG_Jc8upyFvO5SRk8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/btservice/-$$Lambda$MetricsLogger$hpfdq7OwithG_Jc8upyFvO5SRk8;->f$0:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/-$$Lambda$MetricsLogger$hpfdq7OwithG_Jc8upyFvO5SRk8;->f$0:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/btservice/MetricsLogger;->lambda$dumpProto$0(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;Ljava/lang/Integer;)V

    return-void
.end method
