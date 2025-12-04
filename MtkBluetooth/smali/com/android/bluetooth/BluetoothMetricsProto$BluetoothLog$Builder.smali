.class public final Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLogOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLogOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2131
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$000()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2132
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/BluetoothMetricsProto$1;)V
    .locals 0

    .line 2124
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllHeadsetProfileConnectionStats(Ljava/lang/Iterable;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;",
            ">;)",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;"
        }
    .end annotation

    .line 3229
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 3230
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$6200(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Ljava/lang/Iterable;)V

    .line 3231
    return-object p0
.end method

.method public addAllPairEvent(Ljava/lang/Iterable;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;",
            ">;)",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;"
        }
    .end annotation

    .line 2402
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2403
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$1600(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Ljava/lang/Iterable;)V

    .line 2404
    return-object p0
.end method

.method public addAllProfileConnectionStats(Ljava/lang/Iterable;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;",
            ">;)",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;"
        }
    .end annotation

    .line 3081
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 3082
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$5300(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Ljava/lang/Iterable;)V

    .line 3083
    return-object p0
.end method

.method public addAllScanEvent(Ljava/lang/Iterable;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;",
            ">;)",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;"
        }
    .end annotation

    .line 2698
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2699
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$3400(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Ljava/lang/Iterable;)V

    .line 2700
    return-object p0
.end method

.method public addAllSession(Ljava/lang/Iterable;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;",
            ">;)",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;"
        }
    .end annotation

    .line 2254
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2255
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$700(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Ljava/lang/Iterable;)V

    .line 2256
    return-object p0
.end method

.method public addAllWakeEvent(Ljava/lang/Iterable;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;",
            ">;)",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;"
        }
    .end annotation

    .line 2550
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2551
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$2500(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Ljava/lang/Iterable;)V

    .line 2552
    return-object p0
.end method

.method public addHeadsetProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 3216
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 3217
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$6100(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;)V

    .line 3218
    return-object p0
.end method

.method public addHeadsetProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 3190
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 3191
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$5900(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;)V

    .line 3192
    return-object p0
.end method

.method public addHeadsetProfileConnectionStats(Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 3203
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 3204
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$6000(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;)V

    .line 3205
    return-object p0
.end method

.method public addHeadsetProfileConnectionStats(Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 3177
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 3178
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$5800(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;)V

    .line 3179
    return-object p0
.end method

.method public addPairEvent(ILcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2389
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2390
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$1500(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;)V

    .line 2391
    return-object p0
.end method

.method public addPairEvent(ILcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2363
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2364
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$1300(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)V

    .line 2365
    return-object p0
.end method

.method public addPairEvent(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2376
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2377
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$1400(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;)V

    .line 2378
    return-object p0
.end method

.method public addPairEvent(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2350
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2351
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$1200(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)V

    .line 2352
    return-object p0
.end method

.method public addProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 3068
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 3069
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$5200(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;)V

    .line 3070
    return-object p0
.end method

.method public addProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 3042
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 3043
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$5000(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)V

    .line 3044
    return-object p0
.end method

.method public addProfileConnectionStats(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 3055
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 3056
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$5100(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;)V

    .line 3057
    return-object p0
.end method

.method public addProfileConnectionStats(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 3029
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 3030
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$4900(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)V

    .line 3031
    return-object p0
.end method

.method public addScanEvent(ILcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2685
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2686
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$3300(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;)V

    .line 2687
    return-object p0
.end method

.method public addScanEvent(ILcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2659
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2660
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$3100(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V

    .line 2661
    return-object p0
.end method

.method public addScanEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2672
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2673
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$3200(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;)V

    .line 2674
    return-object p0
.end method

.method public addScanEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2646
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2647
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$3000(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V

    .line 2648
    return-object p0
.end method

.method public addSession(ILcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2241
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2242
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$600(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;)V

    .line 2243
    return-object p0
.end method

.method public addSession(ILcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2215
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2216
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$400(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V

    .line 2217
    return-object p0
.end method

.method public addSession(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2228
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2229
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$500(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;)V

    .line 2230
    return-object p0
.end method

.method public addSession(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2202
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2203
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$300(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V

    .line 2204
    return-object p0
.end method

.method public addWakeEvent(ILcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2537
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2538
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$2400(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;)V

    .line 2539
    return-object p0
.end method

.method public addWakeEvent(ILcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2511
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2512
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$2200(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)V

    .line 2513
    return-object p0
.end method

.method public addWakeEvent(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2524
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2525
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$2300(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;)V

    .line 2526
    return-object p0
.end method

.method public addWakeEvent(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2498
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2499
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$2100(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)V

    .line 2500
    return-object p0
.end method

.method public clearHeadsetProfileConnectionStats()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 3241
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 3242
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$6300(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V

    .line 3243
    return-object p0
.end method

.method public clearNumBluetoothSession()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2816
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2817
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$4000(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V

    .line 2818
    return-object p0
.end method

.method public clearNumBondedDevices()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2769
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2770
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$3800(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V

    .line 2771
    return-object p0
.end method

.method public clearNumPairEvent()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2863
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2864
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$4200(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V

    .line 2865
    return-object p0
.end method

.method public clearNumScanEvent()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2957
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2958
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$4600(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V

    .line 2959
    return-object p0
.end method

.method public clearNumWakeEvent()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2910
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2911
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$4400(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V

    .line 2912
    return-object p0
.end method

.method public clearPairEvent()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2414
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2415
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$1700(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V

    .line 2416
    return-object p0
.end method

.method public clearProfileConnectionStats()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 3093
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 3094
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$5400(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V

    .line 3095
    return-object p0
.end method

.method public clearScanEvent()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2710
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2711
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$3500(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V

    .line 2712
    return-object p0
.end method

.method public clearSession()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2266
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2267
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$800(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V

    .line 2268
    return-object p0
.end method

.method public clearWakeEvent()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2562
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2563
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$2600(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;)V

    .line 2564
    return-object p0
.end method

.method public getHeadsetProfileConnectionStats(I)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;
    .locals 1

    .line 3141
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getHeadsetProfileConnectionStats(I)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    move-result-object p1

    return-object p1
.end method

.method public getHeadsetProfileConnectionStatsCount()I
    .locals 1

    .line 3131
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getHeadsetProfileConnectionStatsCount()I

    move-result v0

    return v0
.end method

.method public getHeadsetProfileConnectionStatsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;",
            ">;"
        }
    .end annotation

    .line 3119
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    .line 3120
    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getHeadsetProfileConnectionStatsList()Ljava/util/List;

    move-result-object v0

    .line 3119
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNumBluetoothSession()J
    .locals 2

    .line 2794
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getNumBluetoothSession()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumBondedDevices()I
    .locals 1

    .line 2747
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getNumBondedDevices()I

    move-result v0

    return v0
.end method

.method public getNumPairEvent()J
    .locals 2

    .line 2841
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getNumPairEvent()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumScanEvent()J
    .locals 2

    .line 2935
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getNumScanEvent()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumWakeEvent()J
    .locals 2

    .line 2888
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getNumWakeEvent()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPairEvent(I)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;
    .locals 1

    .line 2314
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getPairEvent(I)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    move-result-object p1

    return-object p1
.end method

.method public getPairEventCount()I
    .locals 1

    .line 2304
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getPairEventCount()I

    move-result v0

    return v0
.end method

.method public getPairEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;",
            ">;"
        }
    .end annotation

    .line 2292
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    .line 2293
    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getPairEventList()Ljava/util/List;

    move-result-object v0

    .line 2292
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProfileConnectionStats(I)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;
    .locals 1

    .line 2993
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getProfileConnectionStats(I)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    move-result-object p1

    return-object p1
.end method

.method public getProfileConnectionStatsCount()I
    .locals 1

    .line 2983
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getProfileConnectionStatsCount()I

    move-result v0

    return v0
.end method

.method public getProfileConnectionStatsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;",
            ">;"
        }
    .end annotation

    .line 2971
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    .line 2972
    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getProfileConnectionStatsList()Ljava/util/List;

    move-result-object v0

    .line 2971
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScanEvent(I)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;
    .locals 1

    .line 2610
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getScanEvent(I)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    move-result-object p1

    return-object p1
.end method

.method public getScanEventCount()I
    .locals 1

    .line 2600
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getScanEventCount()I

    move-result v0

    return v0
.end method

.method public getScanEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;",
            ">;"
        }
    .end annotation

    .line 2588
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    .line 2589
    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getScanEventList()Ljava/util/List;

    move-result-object v0

    .line 2588
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSession(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;
    .locals 1

    .line 2166
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getSession(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    move-result-object p1

    return-object p1
.end method

.method public getSessionCount()I
    .locals 1

    .line 2156
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getSessionCount()I

    move-result v0

    return v0
.end method

.method public getSessionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;",
            ">;"
        }
    .end annotation

    .line 2144
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    .line 2145
    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getSessionList()Ljava/util/List;

    move-result-object v0

    .line 2144
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWakeEvent(I)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;
    .locals 1

    .line 2462
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getWakeEvent(I)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    move-result-object p1

    return-object p1
.end method

.method public getWakeEventCount()I
    .locals 1

    .line 2452
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getWakeEventCount()I

    move-result v0

    return v0
.end method

.method public getWakeEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;",
            ">;"
        }
    .end annotation

    .line 2440
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    .line 2441
    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->getWakeEventList()Ljava/util/List;

    move-result-object v0

    .line 2440
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasNumBluetoothSession()Z
    .locals 1

    .line 2783
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->hasNumBluetoothSession()Z

    move-result v0

    return v0
.end method

.method public hasNumBondedDevices()Z
    .locals 1

    .line 2736
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->hasNumBondedDevices()Z

    move-result v0

    return v0
.end method

.method public hasNumPairEvent()Z
    .locals 1

    .line 2830
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->hasNumPairEvent()Z

    move-result v0

    return v0
.end method

.method public hasNumScanEvent()Z
    .locals 1

    .line 2924
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->hasNumScanEvent()Z

    move-result v0

    return v0
.end method

.method public hasNumWakeEvent()Z
    .locals 1

    .line 2877
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->hasNumWakeEvent()Z

    move-result v0

    return v0
.end method

.method public removeHeadsetProfileConnectionStats(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 3253
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 3254
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$6400(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;I)V

    .line 3255
    return-object p0
.end method

.method public removePairEvent(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2426
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2427
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$1800(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;I)V

    .line 2428
    return-object p0
.end method

.method public removeProfileConnectionStats(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 3105
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 3106
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$5500(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;I)V

    .line 3107
    return-object p0
.end method

.method public removeScanEvent(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2722
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2723
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$3600(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;I)V

    .line 2724
    return-object p0
.end method

.method public removeSession(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2278
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2279
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$900(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;I)V

    .line 2280
    return-object p0
.end method

.method public removeWakeEvent(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2574
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2575
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$2700(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;I)V

    .line 2576
    return-object p0
.end method

.method public setHeadsetProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 3165
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 3166
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$5700(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;)V

    .line 3167
    return-object p0
.end method

.method public setHeadsetProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 3152
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 3153
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$5600(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;)V

    .line 3154
    return-object p0
.end method

.method public setNumBluetoothSession(J)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2804
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2805
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$3900(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;J)V

    .line 2806
    return-object p0
.end method

.method public setNumBondedDevices(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2757
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2758
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$3700(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;I)V

    .line 2759
    return-object p0
.end method

.method public setNumPairEvent(J)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2851
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2852
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$4100(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;J)V

    .line 2853
    return-object p0
.end method

.method public setNumScanEvent(J)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2945
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2946
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$4500(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;J)V

    .line 2947
    return-object p0
.end method

.method public setNumWakeEvent(J)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2898
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2899
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$4300(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;J)V

    .line 2900
    return-object p0
.end method

.method public setPairEvent(ILcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2338
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2339
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$1100(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;)V

    .line 2340
    return-object p0
.end method

.method public setPairEvent(ILcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2325
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2326
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$1000(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)V

    .line 2327
    return-object p0
.end method

.method public setProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 3017
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 3018
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$4800(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;)V

    .line 3019
    return-object p0
.end method

.method public setProfileConnectionStats(ILcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 3004
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 3005
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$4700(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)V

    .line 3006
    return-object p0
.end method

.method public setScanEvent(ILcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2634
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2635
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$2900(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;)V

    .line 2636
    return-object p0
.end method

.method public setScanEvent(ILcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2621
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2622
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$2800(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V

    .line 2623
    return-object p0
.end method

.method public setSession(ILcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2190
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2191
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$200(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;)V

    .line 2192
    return-object p0
.end method

.method public setSession(ILcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2177
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2178
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$100(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V

    .line 2179
    return-object p0
.end method

.method public setWakeEvent(ILcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2486
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2487
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$2000(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;)V

    .line 2488
    return-object p0
.end method

.method public setWakeEvent(ILcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;
    .locals 1

    .line 2473
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->copyOnWrite()V

    .line 2474
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->access$1900(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;ILcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)V

    .line 2475
    return-object p0
.end method
