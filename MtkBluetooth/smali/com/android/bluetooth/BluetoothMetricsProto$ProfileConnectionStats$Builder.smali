.class public final Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStatsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStatsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9829
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->access$15800()Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9830
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/BluetoothMetricsProto$1;)V
    .locals 0

    .line 9822
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNumTimesConnected()Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;
    .locals 1

    .line 9922
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;->copyOnWrite()V

    .line 9923
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->access$16200(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)V

    .line 9924
    return-object p0
.end method

.method public clearProfileId()Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;
    .locals 1

    .line 9875
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;->copyOnWrite()V

    .line 9876
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->access$16000(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)V

    .line 9877
    return-object p0
.end method

.method public getNumTimesConnected()I
    .locals 1

    .line 9900
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->getNumTimesConnected()I

    move-result v0

    return v0
.end method

.method public getProfileId()Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;
    .locals 1

    .line 9853
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->getProfileId()Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    move-result-object v0

    return-object v0
.end method

.method public hasNumTimesConnected()Z
    .locals 1

    .line 9889
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->hasNumTimesConnected()Z

    move-result v0

    return v0
.end method

.method public hasProfileId()Z
    .locals 1

    .line 9842
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->hasProfileId()Z

    move-result v0

    return v0
.end method

.method public setNumTimesConnected(I)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;
    .locals 1

    .line 9910
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;->copyOnWrite()V

    .line 9911
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->access$16100(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;I)V

    .line 9912
    return-object p0
.end method

.method public setProfileId(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;
    .locals 1

    .line 9863
    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;->copyOnWrite()V

    .line 9864
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->access$15900(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    .line 9865
    return-object p0
.end method
