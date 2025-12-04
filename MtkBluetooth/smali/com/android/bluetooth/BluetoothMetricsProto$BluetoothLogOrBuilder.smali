.class public interface abstract Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLogOrBuilder;
.super Ljava/lang/Object;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BluetoothLogOrBuilder"
.end annotation


# virtual methods
.method public abstract getHeadsetProfileConnectionStats(I)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;
.end method

.method public abstract getHeadsetProfileConnectionStatsCount()I
.end method

.method public abstract getHeadsetProfileConnectionStatsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNumBluetoothSession()J
.end method

.method public abstract getNumBondedDevices()I
.end method

.method public abstract getNumPairEvent()J
.end method

.method public abstract getNumScanEvent()J
.end method

.method public abstract getNumWakeEvent()J
.end method

.method public abstract getPairEvent(I)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;
.end method

.method public abstract getPairEventCount()I
.end method

.method public abstract getPairEventList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProfileConnectionStats(I)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;
.end method

.method public abstract getProfileConnectionStatsCount()I
.end method

.method public abstract getProfileConnectionStatsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScanEvent(I)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;
.end method

.method public abstract getScanEventCount()I
.end method

.method public abstract getScanEventList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSession(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;
.end method

.method public abstract getSessionCount()I
.end method

.method public abstract getSessionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWakeEvent(I)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;
.end method

.method public abstract getWakeEventCount()I
.end method

.method public abstract getWakeEventList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasNumBluetoothSession()Z
.end method

.method public abstract hasNumBondedDevices()Z
.end method

.method public abstract hasNumPairEvent()Z
.end method

.method public abstract hasNumScanEvent()Z
.end method

.method public abstract hasNumWakeEvent()Z
.end method
