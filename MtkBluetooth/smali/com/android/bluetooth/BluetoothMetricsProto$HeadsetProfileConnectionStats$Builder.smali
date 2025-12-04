.class public final Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStatsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStatsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10251
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->access$16400()Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10252
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/BluetoothMetricsProto$1;)V
    .locals 0

    .line 10244
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHeadsetProfileType()Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;
    .locals 1

    .line 10297
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;->copyOnWrite()V

    .line 10298
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->access$16600(Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;)V

    .line 10299
    return-object p0
.end method

.method public clearNumTimesConnected()Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;
    .locals 1

    .line 10344
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;->copyOnWrite()V

    .line 10345
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->access$16800(Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;)V

    .line 10346
    return-object p0
.end method

.method public getHeadsetProfileType()Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;
    .locals 1

    .line 10275
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->getHeadsetProfileType()Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    move-result-object v0

    return-object v0
.end method

.method public getNumTimesConnected()I
    .locals 1

    .line 10322
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->getNumTimesConnected()I

    move-result v0

    return v0
.end method

.method public hasHeadsetProfileType()Z
    .locals 1

    .line 10264
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->hasHeadsetProfileType()Z

    move-result v0

    return v0
.end method

.method public hasNumTimesConnected()Z
    .locals 1

    .line 10311
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->hasNumTimesConnected()Z

    move-result v0

    return v0
.end method

.method public setHeadsetProfileType(Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;
    .locals 1

    .line 10285
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;->copyOnWrite()V

    .line 10286
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->access$16500(Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;)V

    .line 10287
    return-object p0
.end method

.method public setNumTimesConnected(I)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;
    .locals 1

    .line 10332
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;->copyOnWrite()V

    .line 10333
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->access$16700(Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;I)V

    .line 10334
    return-object p0
.end method
