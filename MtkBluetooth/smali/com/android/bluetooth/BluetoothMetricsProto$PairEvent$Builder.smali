.class public final Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothMetricsProto$PairEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$PairEventOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7391
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->access$12300()Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7392
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/BluetoothMetricsProto$1;)V
    .locals 0

    .line 7384
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDevicePairedWith()Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;
    .locals 1

    .line 7559
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->copyOnWrite()V

    .line 7560
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->access$13100(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)V

    .line 7561
    return-object p0
.end method

.method public clearDisconnectReason()Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;
    .locals 1

    .line 7441
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->copyOnWrite()V

    .line 7442
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->access$12500(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)V

    .line 7443
    return-object p0
.end method

.method public clearEventTimeMillis()Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;
    .locals 1

    .line 7488
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->copyOnWrite()V

    .line 7489
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->access$12700(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)V

    .line 7490
    return-object p0
.end method

.method public getDevicePairedWith()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
    .locals 1

    .line 7513
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->getDevicePairedWith()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectReason()I
    .locals 1

    .line 7417
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->getDisconnectReason()I

    move-result v0

    return v0
.end method

.method public getEventTimeMillis()J
    .locals 2

    .line 7466
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->getEventTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasDevicePairedWith()Z
    .locals 1

    .line 7502
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->hasDevicePairedWith()Z

    move-result v0

    return v0
.end method

.method public hasDisconnectReason()Z
    .locals 1

    .line 7405
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->hasDisconnectReason()Z

    move-result v0

    return v0
.end method

.method public hasEventTimeMillis()Z
    .locals 1

    .line 7455
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->hasEventTimeMillis()Z

    move-result v0

    return v0
.end method

.method public mergeDevicePairedWith(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;
    .locals 1

    .line 7548
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->copyOnWrite()V

    .line 7549
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->access$13000(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)V

    .line 7550
    return-object p0
.end method

.method public setDevicePairedWith(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;
    .locals 1

    .line 7536
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->copyOnWrite()V

    .line 7537
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->access$12900(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;)V

    .line 7538
    return-object p0
.end method

.method public setDevicePairedWith(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;
    .locals 1

    .line 7523
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->copyOnWrite()V

    .line 7524
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->access$12800(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)V

    .line 7525
    return-object p0
.end method

.method public setDisconnectReason(I)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;
    .locals 1

    .line 7428
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->copyOnWrite()V

    .line 7429
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->access$12400(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;I)V

    .line 7430
    return-object p0
.end method

.method public setEventTimeMillis(J)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;
    .locals 1

    .line 7476
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->copyOnWrite()V

    .line 7477
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->access$12600(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;J)V

    .line 7478
    return-object p0
.end method
