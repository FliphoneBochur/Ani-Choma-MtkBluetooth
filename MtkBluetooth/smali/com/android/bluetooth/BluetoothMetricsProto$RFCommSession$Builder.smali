.class public final Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSessionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSessionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5558
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->access$9500()Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5559
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/BluetoothMetricsProto$1;)V
    .locals 0

    .line 5551
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRxBytes()Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;
    .locals 1

    .line 5604
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;->copyOnWrite()V

    .line 5605
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->access$9700(Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;)V

    .line 5606
    return-object p0
.end method

.method public clearTxBytes()Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;
    .locals 1

    .line 5651
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;->copyOnWrite()V

    .line 5652
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->access$9900(Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;)V

    .line 5653
    return-object p0
.end method

.method public getRxBytes()I
    .locals 1

    .line 5582
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->getRxBytes()I

    move-result v0

    return v0
.end method

.method public getTxBytes()I
    .locals 1

    .line 5629
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->getTxBytes()I

    move-result v0

    return v0
.end method

.method public hasRxBytes()Z
    .locals 1

    .line 5571
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->hasRxBytes()Z

    move-result v0

    return v0
.end method

.method public hasTxBytes()Z
    .locals 1

    .line 5618
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->hasTxBytes()Z

    move-result v0

    return v0
.end method

.method public setRxBytes(I)Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;
    .locals 1

    .line 5592
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;->copyOnWrite()V

    .line 5593
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->access$9600(Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;I)V

    .line 5594
    return-object p0
.end method

.method public setTxBytes(I)Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;
    .locals 1

    .line 5639
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;->copyOnWrite()V

    .line 5640
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->access$9800(Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;I)V

    .line 5641
    return-object p0
.end method
