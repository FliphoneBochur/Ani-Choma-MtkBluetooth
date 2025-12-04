.class public final Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothMetricsProto$ScanEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEventOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9230
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->access$14500()Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9231
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/BluetoothMetricsProto$1;)V
    .locals 0

    .line 9223
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEventTimeMillis()Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;
    .locals 1

    .line 9496
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->copyOnWrite()V

    .line 9497
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->access$15600(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V

    .line 9498
    return-object p0
.end method

.method public clearInitiator()Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;
    .locals 1

    .line 9341
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->copyOnWrite()V

    .line 9342
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->access$14900(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V

    .line 9343
    return-object p0
.end method

.method public clearNumberResults()Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;
    .locals 1

    .line 9449
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->copyOnWrite()V

    .line 9450
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->access$15400(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V

    .line 9451
    return-object p0
.end method

.method public clearScanEventType()Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;
    .locals 1

    .line 9276
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->copyOnWrite()V

    .line 9277
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->access$14700(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V

    .line 9278
    return-object p0
.end method

.method public clearScanTechnologyType()Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;
    .locals 1

    .line 9402
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->copyOnWrite()V

    .line 9403
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->access$15200(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V

    .line 9404
    return-object p0
.end method

.method public getEventTimeMillis()J
    .locals 2

    .line 9474
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->getEventTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInitiator()Ljava/lang/String;
    .locals 1

    .line 9303
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->getInitiator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitiatorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9316
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->getInitiatorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumberResults()I
    .locals 1

    .line 9427
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->getNumberResults()I

    move-result v0

    return v0
.end method

.method public getScanEventType()Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;
    .locals 1

    .line 9254
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->getScanEventType()Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

    move-result-object v0

    return-object v0
.end method

.method public getScanTechnologyType()Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;
    .locals 1

    .line 9380
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->getScanTechnologyType()Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    move-result-object v0

    return-object v0
.end method

.method public hasEventTimeMillis()Z
    .locals 1

    .line 9463
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->hasEventTimeMillis()Z

    move-result v0

    return v0
.end method

.method public hasInitiator()Z
    .locals 1

    .line 9291
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->hasInitiator()Z

    move-result v0

    return v0
.end method

.method public hasNumberResults()Z
    .locals 1

    .line 9416
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->hasNumberResults()Z

    move-result v0

    return v0
.end method

.method public hasScanEventType()Z
    .locals 1

    .line 9243
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->hasScanEventType()Z

    move-result v0

    return v0
.end method

.method public hasScanTechnologyType()Z
    .locals 1

    .line 9369
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->hasScanTechnologyType()Z

    move-result v0

    return v0
.end method

.method public setEventTimeMillis(J)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;
    .locals 1

    .line 9484
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->copyOnWrite()V

    .line 9485
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->access$15500(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;J)V

    .line 9486
    return-object p0
.end method

.method public setInitiator(Ljava/lang/String;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;
    .locals 1

    .line 9328
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->copyOnWrite()V

    .line 9329
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->access$14800(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;Ljava/lang/String;)V

    .line 9330
    return-object p0
.end method

.method public setInitiatorBytes(Lcom/google/protobuf/ByteString;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;
    .locals 1

    .line 9355
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->copyOnWrite()V

    .line 9356
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->access$15000(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;Lcom/google/protobuf/ByteString;)V

    .line 9357
    return-object p0
.end method

.method public setNumberResults(I)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;
    .locals 1

    .line 9437
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->copyOnWrite()V

    .line 9438
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->access$15300(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;I)V

    .line 9439
    return-object p0
.end method

.method public setScanEventType(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;
    .locals 1

    .line 9264
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->copyOnWrite()V

    .line 9265
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->access$14600(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;)V

    .line 9266
    return-object p0
.end method

.method public setScanTechnologyType(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;
    .locals 1

    .line 9390
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->copyOnWrite()V

    .line 9391
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->access$15100(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;)V

    .line 9392
    return-object p0
.end method
